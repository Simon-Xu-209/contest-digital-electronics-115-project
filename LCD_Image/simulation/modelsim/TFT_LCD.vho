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

-- DATE "06/14/2026 19:11:09"

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

ENTITY 	TFT_LCD IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	SCL : OUT std_logic;
	SDA : OUT std_logic;
	RES : OUT std_logic;
	DC : OUT std_logic;
	CS : OUT std_logic;
	BLK : OUT std_logic
	);
END TFT_LCD;

-- Design Ports Information
-- SCL	=>  Location: PIN_168,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RES	=>  Location: PIN_174,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS	=>  Location: PIN_181,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLK	=>  Location: PIN_183,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TFT_LCD IS
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
SIGNAL ww_SCL : std_logic;
SIGNAL ww_SDA : std_logic;
SIGNAL ww_RES : std_logic;
SIGNAL ww_DC : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_BLK : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a33_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a35_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a34_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a37_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a39_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a38_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCL~output_o\ : std_logic;
SIGNAL \SDA~output_o\ : std_logic;
SIGNAL \RES~output_o\ : std_logic;
SIGNAL \DC~output_o\ : std_logic;
SIGNAL \CS~output_o\ : std_logic;
SIGNAL \BLK~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \delay_cnt[0]~50_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \delay_cnt[1]~49_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \delay_cnt[2]~48_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \delay_cnt[3]~47_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \state.000000~feeder_combout\ : std_logic;
SIGNAL \state.STATE_SCAN_DRAW~q\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state.STATE_SET_AXIS~q\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \x_cnt[0]~8_combout\ : std_logic;
SIGNAL \x_cnt[0]~9\ : std_logic;
SIGNAL \x_cnt[1]~10_combout\ : std_logic;
SIGNAL \cmd_idx~44_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \bit_cnt[0]~9_combout\ : std_logic;
SIGNAL \cmd_idx~51_combout\ : std_logic;
SIGNAL \cmd_idx.00010010~q\ : std_logic;
SIGNAL \bit_cnt[0]~2_combout\ : std_logic;
SIGNAL \bit_cnt[3]~3_combout\ : std_logic;
SIGNAL \bit_cnt[3]~4_combout\ : std_logic;
SIGNAL \bit_cnt[3]~5_combout\ : std_logic;
SIGNAL \bit_cnt[0]~8_combout\ : std_logic;
SIGNAL \bit_cnt[1]~10_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \bit_cnt[2]~7_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \bit_cnt[3]~6_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \spi_data[7]~2_combout\ : std_logic;
SIGNAL \cmd_idx~45_combout\ : std_logic;
SIGNAL \cmd_idx.00000011~q\ : std_logic;
SIGNAL \cmd_idx~49_combout\ : std_logic;
SIGNAL \cmd_idx.00000100~q\ : std_logic;
SIGNAL \cmd_idx~46_combout\ : std_logic;
SIGNAL \cmd_idx.00000101~q\ : std_logic;
SIGNAL \cmd_idx~48_combout\ : std_logic;
SIGNAL \cmd_idx.00000110~q\ : std_logic;
SIGNAL \Selector81~1_combout\ : std_logic;
SIGNAL \Selector81~2_combout\ : std_logic;
SIGNAL \cmd_idx.00000111~q\ : std_logic;
SIGNAL \cmd_idx~53_combout\ : std_logic;
SIGNAL \cmd_idx.00001000~q\ : std_logic;
SIGNAL \cmd_idx~54_combout\ : std_logic;
SIGNAL \cmd_idx.00001001~q\ : std_logic;
SIGNAL \cmd_idx~55_combout\ : std_logic;
SIGNAL \cmd_idx.00001010~q\ : std_logic;
SIGNAL \cmd_idx~50_combout\ : std_logic;
SIGNAL \cmd_idx.00001011~q\ : std_logic;
SIGNAL \cmd_idx~59_combout\ : std_logic;
SIGNAL \cmd_idx.00001100~q\ : std_logic;
SIGNAL \cmd_idx~56_combout\ : std_logic;
SIGNAL \cmd_idx.00001101~q\ : std_logic;
SIGNAL \cmd_idx~57_combout\ : std_logic;
SIGNAL \cmd_idx.00001110~q\ : std_logic;
SIGNAL \cmd_idx~58_combout\ : std_logic;
SIGNAL \cmd_idx.00001111~q\ : std_logic;
SIGNAL \cmd_idx~52_combout\ : std_logic;
SIGNAL \cmd_idx.00010000~q\ : std_logic;
SIGNAL \cmd_idx~60_combout\ : std_logic;
SIGNAL \cmd_idx.00010001~q\ : std_logic;
SIGNAL \Selector122~0_combout\ : std_logic;
SIGNAL \p_idx~_wirecell_combout\ : std_logic;
SIGNAL \p_idx~q\ : std_logic;
SIGNAL \x_cnt[7]~25_combout\ : std_logic;
SIGNAL \x_cnt[7]~26_combout\ : std_logic;
SIGNAL \x_cnt[1]~11\ : std_logic;
SIGNAL \x_cnt[2]~12_combout\ : std_logic;
SIGNAL \x_cnt[2]~13\ : std_logic;
SIGNAL \x_cnt[3]~14_combout\ : std_logic;
SIGNAL \x_cnt[3]~15\ : std_logic;
SIGNAL \x_cnt[4]~16_combout\ : std_logic;
SIGNAL \x_cnt[4]~17\ : std_logic;
SIGNAL \x_cnt[5]~18_combout\ : std_logic;
SIGNAL \x_cnt[5]~19\ : std_logic;
SIGNAL \x_cnt[6]~20_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \x_cnt[6]~21\ : std_logic;
SIGNAL \x_cnt[7]~22_combout\ : std_logic;
SIGNAL \x_cnt[6]~24_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \cmd_idx~43_combout\ : std_logic;
SIGNAL \y_cnt[0]~8_combout\ : std_logic;
SIGNAL \y_cnt[7]~24_combout\ : std_logic;
SIGNAL \y_cnt[7]~25_combout\ : std_logic;
SIGNAL \y_cnt[0]~9\ : std_logic;
SIGNAL \y_cnt[1]~10_combout\ : std_logic;
SIGNAL \y_cnt[1]~11\ : std_logic;
SIGNAL \y_cnt[2]~12_combout\ : std_logic;
SIGNAL \y_cnt[2]~13\ : std_logic;
SIGNAL \y_cnt[3]~14_combout\ : std_logic;
SIGNAL \y_cnt[3]~15\ : std_logic;
SIGNAL \y_cnt[4]~16_combout\ : std_logic;
SIGNAL \y_cnt[4]~17\ : std_logic;
SIGNAL \y_cnt[5]~18_combout\ : std_logic;
SIGNAL \y_cnt[5]~19\ : std_logic;
SIGNAL \y_cnt[6]~20_combout\ : std_logic;
SIGNAL \y_cnt[6]~21\ : std_logic;
SIGNAL \y_cnt[7]~22_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \Selector74~1_combout\ : std_logic;
SIGNAL \cmd_idx.00000000~q\ : std_logic;
SIGNAL \cmd_idx~47_combout\ : std_logic;
SIGNAL \cmd_idx.00000001~q\ : std_logic;
SIGNAL \cmd_idx~42_combout\ : std_logic;
SIGNAL \cmd_idx.00000010~feeder_combout\ : std_logic;
SIGNAL \cmd_idx.00000010~q\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.000000~q\ : std_logic;
SIGNAL \state.STATE_INIT_CMD~0_combout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state.STATE_INIT_CMD~q\ : std_logic;
SIGNAL \state.STATE_SEND_INIT~q\ : std_logic;
SIGNAL \delay_cnt[15]~36_combout\ : std_logic;
SIGNAL \delay_cnt[15]~37_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \delay_cnt[4]~46_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \delay_cnt[5]~45_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \delay_cnt[6]~3_combout\ : std_logic;
SIGNAL \delay_cnt[31]~34_combout\ : std_logic;
SIGNAL \delay_cnt[31]~35_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \delay_cnt[7]~44_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \delay_cnt[8]~43_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \delay_cnt[9]~2_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \delay_cnt[10]~42_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \delay_cnt[11]~41_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \delay_cnt[12]~40_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \delay_cnt[13]~39_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \delay_cnt[14]~1_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \delay_cnt[15]~38_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \delay_cnt[16]~65_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \delay_cnt[17]~64_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \delay_cnt[18]~63_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \delay_cnt[19]~0_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \delay_cnt[20]~62_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \delay_cnt[21]~61_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \delay_cnt[22]~60_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \delay_cnt[23]~59_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \delay_cnt[24]~58_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \delay_cnt[25]~57_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \delay_cnt[26]~56_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \delay_cnt[27]~55_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \delay_cnt[28]~54_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \delay_cnt[29]~53_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \delay_cnt[30]~52_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \delay_cnt[31]~51_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \clk_div.0001~0_combout\ : std_logic;
SIGNAL \clk_div.0001~q\ : std_logic;
SIGNAL \SCL~0_combout\ : std_logic;
SIGNAL \SCL~reg0_q\ : std_logic;
SIGNAL \SDA~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \Selector95~1_combout\ : std_logic;
SIGNAL \Selector95~2_combout\ : std_logic;
SIGNAL \Selector95~3_combout\ : std_logic;
SIGNAL \img_addr[8]~1\ : std_logic;
SIGNAL \img_addr[9]~3\ : std_logic;
SIGNAL \img_addr[10]~5\ : std_logic;
SIGNAL \img_addr[11]~7\ : std_logic;
SIGNAL \img_addr[12]~9\ : std_logic;
SIGNAL \img_addr[13]~11\ : std_logic;
SIGNAL \img_addr[14]~12_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \img_addr[13]~10_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \img_addr[14]~13\ : std_logic;
SIGNAL \img_addr[15]~14_combout\ : std_logic;
SIGNAL \img_addr[8]~0_combout\ : std_logic;
SIGNAL \img_addr[9]~2_combout\ : std_logic;
SIGNAL \img_addr[10]~4_combout\ : std_logic;
SIGNAL \img_addr[11]~6_combout\ : std_logic;
SIGNAL \img_addr[12]~8_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result5w~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs534w[0]~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result5w~1_combout\ : std_logic;
SIGNAL \spi_data[7]~3_combout\ : std_logic;
SIGNAL \Selector93~1_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \Selector93~2_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result7w~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs630w[0]~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result7w~1_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \Selector94~1_combout\ : std_logic;
SIGNAL \spi_data[6]~feeder_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs582w[0]~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Selector101~6_combout\ : std_logic;
SIGNAL \DC~1_combout\ : std_logic;
SIGNAL \Selector96~1_combout\ : std_logic;
SIGNAL \Selector96~2_combout\ : std_logic;
SIGNAL \Selector96~3_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result4w~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs486w[0]~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result4w~1_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \Selector98~1_combout\ : std_logic;
SIGNAL \Selector98~2_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs390w[0]~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result2w~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result2w~1_combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \Selector97~1_combout\ : std_logic;
SIGNAL \Selector97~2_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs438w[0]~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector100~2_combout\ : std_logic;
SIGNAL \Selector100~1_combout\ : std_logic;
SIGNAL \Selector100~3_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs294w[0]~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \Selector99~1_combout\ : std_logic;
SIGNAL \Selector99~2_combout\ : std_logic;
SIGNAL \spi_data[1]~feeder_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs342w[0]~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result1w~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result1w~1_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \SDA~1_combout\ : std_logic;
SIGNAL \SDA~3_combout\ : std_logic;
SIGNAL \SDA~reg0_q\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \RES~reg0_q\ : std_logic;
SIGNAL \Selector101~2_combout\ : std_logic;
SIGNAL \Selector101~3_combout\ : std_logic;
SIGNAL \Selector101~4_combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \DC~0_combout\ : std_logic;
SIGNAL \Selector101~1_combout\ : std_logic;
SIGNAL \Selector101~5_combout\ : std_logic;
SIGNAL \DC~reg0_q\ : std_logic;
SIGNAL \CS~reg0feeder_combout\ : std_logic;
SIGNAL \CS~reg0_q\ : std_logic;
SIGNAL \BLK~reg0feeder_combout\ : std_logic;
SIGNAL \BLK~reg0_q\ : std_logic;
SIGNAL y_cnt : std_logic_vector(7 DOWNTO 0);
SIGNAL x_cnt : std_logic_vector(7 DOWNTO 0);
SIGNAL spi_data : std_logic_vector(7 DOWNTO 0);
SIGNAL delay_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL bit_cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|rden_decode|w_anode216w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|rden_decode|w_anode194w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|rden_decode|w_anode205w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|rden_decode|w_anode176w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_delay_cnt[31]~35_combout\ : std_logic;
SIGNAL \ALT_INV_state.STATE_SCAN_DRAW~q\ : std_logic;
SIGNAL \ALT_INV_state.STATE_SET_AXIS~q\ : std_logic;
SIGNAL \ALT_INV_CS~reg0_q\ : std_logic;
SIGNAL \ALT_INV_RES~reg0_q\ : std_logic;
SIGNAL \ALT_INV_SCL~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
SCL <= ww_SCL;
SDA <= ww_SDA;
RES <= ww_RES;
DC <= ww_DC;
CS <= ww_CS;
BLK <= ww_BLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\image_rom_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a33~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a33_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a9~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a25~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a17~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a35~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a35_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a11~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a27~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a19~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a34~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a34_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a10~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a26~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a18~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a32~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a24~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a37~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a37_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a13~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a29~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a21~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a39~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a39_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a15~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a7~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a31~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a23~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a38~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a38_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a30~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a22~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a36~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a12~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a28~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a20~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_delay_cnt[31]~35_combout\ <= NOT \delay_cnt[31]~35_combout\;
\ALT_INV_state.STATE_SCAN_DRAW~q\ <= NOT \state.STATE_SCAN_DRAW~q\;
\ALT_INV_state.STATE_SET_AXIS~q\ <= NOT \state.STATE_SET_AXIS~q\;
\ALT_INV_CS~reg0_q\ <= NOT \CS~reg0_q\;
\ALT_INV_RES~reg0_q\ <= NOT \RES~reg0_q\;
\ALT_INV_SCL~reg0_q\ <= NOT \SCL~reg0_q\;

-- Location: IOOBUF_X41_Y23_N9
\SCL~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SCL~reg0_q\,
	devoe => ww_devoe,
	o => \SCL~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\SDA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDA~reg0_q\,
	devoe => ww_devoe,
	o => \SDA~output_o\);

-- Location: IOOBUF_X41_Y25_N23
\RES~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_RES~reg0_q\,
	devoe => ww_devoe,
	o => \RES~output_o\);

-- Location: IOOBUF_X41_Y27_N23
\DC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DC~reg0_q\,
	devoe => ww_devoe,
	o => \DC~output_o\);

-- Location: IOOBUF_X39_Y29_N9
\CS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_CS~reg0_q\,
	devoe => ww_devoe,
	o => \CS~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\BLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BLK~reg0_q\,
	devoe => ww_devoe,
	o => \BLK~output_o\);

-- Location: IOIBUF_X41_Y15_N22
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

-- Location: LCCOMB_X20_Y23_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = delay_cnt(0) $ (VCC)
-- \Add1~1\ = CARRY(delay_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X21_Y23_N22
\delay_cnt[0]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[0]~50_combout\ = (\Add1~0_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~9_combout\,
	datac => \Add1~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \delay_cnt[0]~50_combout\);

-- Location: FF_X21_Y23_N23
\delay_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[0]~50_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(0));

-- Location: LCCOMB_X20_Y23_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (delay_cnt(1) & (\Add1~1\ & VCC)) # (!delay_cnt(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!delay_cnt(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X21_Y23_N20
\delay_cnt[1]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[1]~49_combout\ = (\Add1~2_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \LessThan0~9_combout\,
	datad => \LessThan0~4_combout\,
	combout => \delay_cnt[1]~49_combout\);

-- Location: FF_X21_Y23_N21
\delay_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[1]~49_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(1));

-- Location: LCCOMB_X20_Y23_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (delay_cnt(2) & ((GND) # (!\Add1~3\))) # (!delay_cnt(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((delay_cnt(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X21_Y23_N6
\delay_cnt[2]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[2]~48_combout\ = (\Add1~4_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~9_combout\,
	datac => \Add1~4_combout\,
	datad => \LessThan0~4_combout\,
	combout => \delay_cnt[2]~48_combout\);

-- Location: FF_X21_Y23_N7
\delay_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[2]~48_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(2));

-- Location: LCCOMB_X20_Y23_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (delay_cnt(3) & (\Add1~5\ & VCC)) # (!delay_cnt(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!delay_cnt(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X21_Y23_N0
\delay_cnt[3]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[3]~47_combout\ = (\Add1~6_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~9_combout\,
	datac => \Add1~6_combout\,
	datad => \LessThan0~4_combout\,
	combout => \delay_cnt[3]~47_combout\);

-- Location: FF_X21_Y23_N1
\delay_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[3]~47_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(3));

-- Location: LCCOMB_X21_Y23_N12
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (delay_cnt(2)) # ((delay_cnt(3)) # ((delay_cnt(0)) # (delay_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(2),
	datab => delay_cnt(3),
	datac => delay_cnt(0),
	datad => delay_cnt(1),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X22_Y20_N20
\state.000000~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.000000~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state.000000~feeder_combout\);

-- Location: FF_X22_Y20_N27
\state.STATE_SCAN_DRAW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.STATE_SET_AXIS~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_SCAN_DRAW~q\);

-- Location: LCCOMB_X22_Y20_N28
\state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (\state.STATE_SEND_INIT~q\) # (\state.STATE_SCAN_DRAW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SEND_INIT~q\,
	datac => \state.STATE_SCAN_DRAW~q\,
	combout => \state~22_combout\);

-- Location: FF_X22_Y20_N29
\state.STATE_SET_AXIS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~22_combout\,
	clrn => \rst_n~input_o\,
	ena => \state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_SET_AXIS~q\);

-- Location: LCCOMB_X23_Y20_N12
\Selector74~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\state.STATE_INIT_CMD~q\) # ((!\cmd_idx.00000000~q\ & ((\state.STATE_SET_AXIS~q\) # (!\state.000000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \state.STATE_INIT_CMD~q\,
	datac => \cmd_idx.00000000~q\,
	datad => \state.000000~q\,
	combout => \Selector74~0_combout\);

-- Location: LCCOMB_X21_Y20_N12
\x_cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[0]~8_combout\ = x_cnt(0) $ (VCC)
-- \x_cnt[0]~9\ = CARRY(x_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datad => VCC,
	combout => \x_cnt[0]~8_combout\,
	cout => \x_cnt[0]~9\);

-- Location: LCCOMB_X21_Y20_N14
\x_cnt[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[1]~10_combout\ = (x_cnt(1) & (!\x_cnt[0]~9\)) # (!x_cnt(1) & ((\x_cnt[0]~9\) # (GND)))
-- \x_cnt[1]~11\ = CARRY((!\x_cnt[0]~9\) # (!x_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(1),
	datad => VCC,
	cin => \x_cnt[0]~9\,
	combout => \x_cnt[1]~10_combout\,
	cout => \x_cnt[1]~11\);

-- Location: LCCOMB_X23_Y20_N28
\cmd_idx~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~44_combout\ = (\state.STATE_SEND_INIT~q\ & \cmd_idx.00000010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datad => \cmd_idx.00000010~q\,
	combout => \cmd_idx~44_combout\);

-- Location: LCCOMB_X23_Y21_N20
\Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\cmd_idx.00010001~q\) # (\cmd_idx.00010010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_idx.00010001~q\,
	datac => \cmd_idx.00010010~q\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X22_Y20_N2
\Selector96~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (!\cmd_idx.00000010~q\ & !\cmd_idx.00000100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_idx.00000010~q\,
	datad => \cmd_idx.00000100~q\,
	combout => \Selector96~0_combout\);

-- Location: LCCOMB_X23_Y20_N18
\Selector100~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (!\cmd_idx.00000001~q\ & (!\cmd_idx.00000011~q\ & (\cmd_idx.00000000~q\ & !\cmd_idx.00000110~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00000001~q\,
	datab => \cmd_idx.00000011~q\,
	datac => \cmd_idx.00000000~q\,
	datad => \cmd_idx.00000110~q\,
	combout => \Selector100~0_combout\);

-- Location: LCCOMB_X22_Y20_N12
\bit_cnt[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[0]~9_combout\ = (\Selector96~0_combout\ & (\Selector100~0_combout\ & (\state.STATE_SEND_INIT~q\ & !\cmd_idx.00000101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector96~0_combout\,
	datab => \Selector100~0_combout\,
	datac => \state.STATE_SEND_INIT~q\,
	datad => \cmd_idx.00000101~q\,
	combout => \bit_cnt[0]~9_combout\);

-- Location: LCCOMB_X22_Y20_N4
\cmd_idx~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~51_combout\ = (!\bit_cnt[0]~9_combout\ & (\state.000000~q\ & (!\Selector81~0_combout\ & \spi_data[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cnt[0]~9_combout\,
	datab => \state.000000~q\,
	datac => \Selector81~0_combout\,
	datad => \spi_data[7]~2_combout\,
	combout => \cmd_idx~51_combout\);

-- Location: FF_X23_Y21_N21
\cmd_idx.00010010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector35~0_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.STATE_SET_AXIS~q\,
	ena => \cmd_idx~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00010010~q\);

-- Location: LCCOMB_X22_Y20_N10
\bit_cnt[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[0]~2_combout\ = (\state.STATE_SET_AXIS~q\ & (!\LessThan1~0_combout\ & ((\cmd_idx.00010010~q\) # (!\WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00010010~q\,
	datab => \state.STATE_SET_AXIS~q\,
	datac => \WideNor0~0_combout\,
	datad => \LessThan1~0_combout\,
	combout => \bit_cnt[0]~2_combout\);

-- Location: LCCOMB_X22_Y20_N18
\bit_cnt[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[3]~3_combout\ = (\LessThan1~0_combout\ & (!\clk_div.0001~q\)) # (!\LessThan1~0_combout\ & (((\state.STATE_INIT_CMD~q\) # (!\state.000000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div.0001~q\,
	datab => \state.000000~q\,
	datac => \state.STATE_INIT_CMD~q\,
	datad => \LessThan1~0_combout\,
	combout => \bit_cnt[3]~3_combout\);

-- Location: LCCOMB_X22_Y20_N16
\bit_cnt[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[3]~4_combout\ = (\bit_cnt[3]~3_combout\) # ((!\LessThan1~0_combout\ & (\state.STATE_SEND_INIT~q\ & \WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \state.STATE_SEND_INIT~q\,
	datac => \WideNor0~0_combout\,
	datad => \bit_cnt[3]~3_combout\,
	combout => \bit_cnt[3]~4_combout\);

-- Location: LCCOMB_X22_Y20_N22
\bit_cnt[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[3]~5_combout\ = (\bit_cnt[0]~2_combout\) # ((\LessThan0~4_combout\) # ((\LessThan0~9_combout\) # (\bit_cnt[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cnt[0]~2_combout\,
	datab => \LessThan0~4_combout\,
	datac => \LessThan0~9_combout\,
	datad => \bit_cnt[3]~4_combout\,
	combout => \bit_cnt[3]~5_combout\);

-- Location: LCCOMB_X23_Y17_N14
\bit_cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[0]~8_combout\ = (\bit_cnt[3]~5_combout\ & (bit_cnt(0))) # (!\bit_cnt[3]~5_combout\ & (!bit_cnt(0) & \LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cnt[3]~5_combout\,
	datac => bit_cnt(0),
	datad => \LessThan1~0_combout\,
	combout => \bit_cnt[0]~8_combout\);

-- Location: FF_X23_Y17_N15
\bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_cnt[0]~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(0));

-- Location: LCCOMB_X23_Y17_N20
\bit_cnt[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[1]~10_combout\ = (\bit_cnt[3]~5_combout\ & (((bit_cnt(1))))) # (!\bit_cnt[3]~5_combout\ & (\LessThan1~0_combout\ & (bit_cnt(0) $ (!bit_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cnt[3]~5_combout\,
	datab => bit_cnt(0),
	datac => bit_cnt(1),
	datad => \LessThan1~0_combout\,
	combout => \bit_cnt[1]~10_combout\);

-- Location: FF_X23_Y17_N21
\bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_cnt[1]~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(1));

-- Location: LCCOMB_X23_Y17_N12
\Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = bit_cnt(2) $ (((bit_cnt(0)) # (bit_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(2),
	datac => bit_cnt(0),
	datad => bit_cnt(1),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X23_Y17_N22
\bit_cnt[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[2]~7_combout\ = (\bit_cnt[3]~5_combout\ & (((bit_cnt(2))))) # (!\bit_cnt[3]~5_combout\ & (\LessThan1~0_combout\ & ((!\Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cnt[3]~5_combout\,
	datab => \LessThan1~0_combout\,
	datac => bit_cnt(2),
	datad => \Add2~1_combout\,
	combout => \bit_cnt[2]~7_combout\);

-- Location: FF_X23_Y17_N23
\bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_cnt[2]~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(2));

-- Location: LCCOMB_X23_Y17_N24
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = bit_cnt(3) $ (((bit_cnt(2)) # ((bit_cnt(1)) # (bit_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(2),
	datab => bit_cnt(1),
	datac => bit_cnt(0),
	datad => bit_cnt(3),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X23_Y17_N0
\bit_cnt[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[3]~6_combout\ = (\bit_cnt[3]~5_combout\ & (bit_cnt(3))) # (!\bit_cnt[3]~5_combout\ & ((!\Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cnt[3]~5_combout\,
	datac => bit_cnt(3),
	datad => \Add3~0_combout\,
	combout => \bit_cnt[3]~6_combout\);

-- Location: FF_X23_Y17_N1
\bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_cnt[3]~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(3));

-- Location: LCCOMB_X23_Y17_N16
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (bit_cnt(2)) # ((bit_cnt(1)) # ((bit_cnt(0)) # (bit_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(2),
	datab => bit_cnt(1),
	datac => bit_cnt(0),
	datad => bit_cnt(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y20_N8
\spi_data[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[7]~2_combout\ = (!\LessThan0~4_combout\ & (!\LessThan1~0_combout\ & !\LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~4_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~9_combout\,
	combout => \spi_data[7]~2_combout\);

-- Location: LCCOMB_X23_Y20_N26
\cmd_idx~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~45_combout\ = (!\Selector81~0_combout\ & (!\state.STATE_SET_AXIS~q\ & (\spi_data[7]~2_combout\ & \state.000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector81~0_combout\,
	datab => \state.STATE_SET_AXIS~q\,
	datac => \spi_data[7]~2_combout\,
	datad => \state.000000~q\,
	combout => \cmd_idx~45_combout\);

-- Location: FF_X23_Y20_N29
\cmd_idx.00000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~44_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000011~q\);

-- Location: LCCOMB_X23_Y20_N16
\cmd_idx~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~49_combout\ = (\state.STATE_SEND_INIT~q\ & \cmd_idx.00000011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datad => \cmd_idx.00000011~q\,
	combout => \cmd_idx~49_combout\);

-- Location: FF_X23_Y20_N17
\cmd_idx.00000100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~49_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000100~q\);

-- Location: LCCOMB_X22_Y20_N26
\cmd_idx~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~46_combout\ = (\state.STATE_SEND_INIT~q\ & \cmd_idx.00000100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SEND_INIT~q\,
	datad => \cmd_idx.00000100~q\,
	combout => \cmd_idx~46_combout\);

-- Location: FF_X23_Y20_N7
\cmd_idx.00000101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cmd_idx~46_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \cmd_idx~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000101~q\);

-- Location: LCCOMB_X23_Y20_N24
\cmd_idx~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~48_combout\ = (\state.STATE_SEND_INIT~q\ & \cmd_idx.00000101~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datad => \cmd_idx.00000101~q\,
	combout => \cmd_idx~48_combout\);

-- Location: FF_X23_Y20_N25
\cmd_idx.00000110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~48_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000110~q\);

-- Location: LCCOMB_X23_Y20_N2
\Selector81~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector81~1_combout\ = (\state.STATE_SEND_INIT~q\ & ((\cmd_idx.00000110~q\) # ((\cmd_idx.00000111~q\)))) # (!\state.STATE_SEND_INIT~q\ & (((\cmd_idx.00000111~q\ & !\state.000000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datab => \cmd_idx.00000110~q\,
	datac => \cmd_idx.00000111~q\,
	datad => \state.000000~q\,
	combout => \Selector81~1_combout\);

-- Location: LCCOMB_X23_Y20_N20
\Selector81~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector81~2_combout\ = (\Selector81~1_combout\) # ((\cmd_idx.00000111~q\ & \Selector81~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector81~1_combout\,
	datac => \cmd_idx.00000111~q\,
	datad => \Selector81~0_combout\,
	combout => \Selector81~2_combout\);

-- Location: FF_X23_Y20_N21
\cmd_idx.00000111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector81~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \spi_data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000111~q\);

-- Location: LCCOMB_X22_Y21_N8
\cmd_idx~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~53_combout\ = (\state.STATE_SET_AXIS~q\ & \cmd_idx.00000111~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SET_AXIS~q\,
	datad => \cmd_idx.00000111~q\,
	combout => \cmd_idx~53_combout\);

-- Location: FF_X22_Y21_N9
\cmd_idx.00001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~53_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001000~q\);

-- Location: LCCOMB_X22_Y21_N26
\cmd_idx~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~54_combout\ = (\cmd_idx.00001000~q\ & \state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_idx.00001000~q\,
	datad => \state.STATE_SET_AXIS~q\,
	combout => \cmd_idx~54_combout\);

-- Location: FF_X22_Y21_N27
\cmd_idx.00001001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~54_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001001~q\);

-- Location: LCCOMB_X22_Y21_N30
\cmd_idx~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~55_combout\ = (\cmd_idx.00001001~q\ & \state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_idx.00001001~q\,
	datad => \state.STATE_SET_AXIS~q\,
	combout => \cmd_idx~55_combout\);

-- Location: FF_X22_Y21_N31
\cmd_idx.00001010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~55_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001010~q\);

-- Location: LCCOMB_X22_Y21_N4
\cmd_idx~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~50_combout\ = (\cmd_idx.00001010~q\ & \state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_idx.00001010~q\,
	datad => \state.STATE_SET_AXIS~q\,
	combout => \cmd_idx~50_combout\);

-- Location: FF_X22_Y21_N5
\cmd_idx.00001011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~50_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001011~q\);

-- Location: LCCOMB_X22_Y21_N10
\cmd_idx~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~59_combout\ = (\cmd_idx.00001011~q\ & \state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_idx.00001011~q\,
	datad => \state.STATE_SET_AXIS~q\,
	combout => \cmd_idx~59_combout\);

-- Location: FF_X22_Y21_N11
\cmd_idx.00001100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~59_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001100~q\);

-- Location: LCCOMB_X22_Y21_N16
\cmd_idx~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~56_combout\ = (\state.STATE_SET_AXIS~q\ & \cmd_idx.00001100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SET_AXIS~q\,
	datad => \cmd_idx.00001100~q\,
	combout => \cmd_idx~56_combout\);

-- Location: FF_X22_Y21_N17
\cmd_idx.00001101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~56_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001101~q\);

-- Location: LCCOMB_X23_Y21_N0
\cmd_idx~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~57_combout\ = (\cmd_idx.00001101~q\ & \state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00001101~q\,
	datac => \state.STATE_SET_AXIS~q\,
	combout => \cmd_idx~57_combout\);

-- Location: FF_X23_Y21_N1
\cmd_idx.00001110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~57_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001110~q\);

-- Location: LCCOMB_X23_Y21_N6
\cmd_idx~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~58_combout\ = (\state.STATE_SET_AXIS~q\ & \cmd_idx.00001110~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.STATE_SET_AXIS~q\,
	datad => \cmd_idx.00001110~q\,
	combout => \cmd_idx~58_combout\);

-- Location: FF_X23_Y21_N7
\cmd_idx.00001111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~58_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001111~q\);

-- Location: LCCOMB_X22_Y21_N2
\cmd_idx~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~52_combout\ = (\state.STATE_SET_AXIS~q\ & \cmd_idx.00001111~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SET_AXIS~q\,
	datad => \cmd_idx.00001111~q\,
	combout => \cmd_idx~52_combout\);

-- Location: FF_X22_Y21_N3
\cmd_idx.00010000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~52_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00010000~q\);

-- Location: LCCOMB_X22_Y21_N6
\cmd_idx~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~60_combout\ = (\state.STATE_SET_AXIS~q\ & ((\cmd_idx.00010000~q\))) # (!\state.STATE_SET_AXIS~q\ & (\state.STATE_SCAN_DRAW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SET_AXIS~q\,
	datac => \state.STATE_SCAN_DRAW~q\,
	datad => \cmd_idx.00010000~q\,
	combout => \cmd_idx~60_combout\);

-- Location: FF_X22_Y21_N7
\cmd_idx.00010001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~60_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00010001~q\);

-- Location: LCCOMB_X22_Y21_N20
\Selector122~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector122~0_combout\ = (\p_idx~q\ & ((!\cmd_idx.00010001~q\) # (!\state.STATE_SET_AXIS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SET_AXIS~q\,
	datac => \p_idx~q\,
	datad => \cmd_idx.00010001~q\,
	combout => \Selector122~0_combout\);

-- Location: LCCOMB_X22_Y21_N22
\p_idx~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_idx~_wirecell_combout\ = !\p_idx~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p_idx~q\,
	combout => \p_idx~_wirecell_combout\);

-- Location: FF_X22_Y21_N21
p_idx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector122~0_combout\,
	asdata => \p_idx~_wirecell_combout\,
	clrn => \rst_n~input_o\,
	sload => \state.STATE_SCAN_DRAW~q\,
	ena => \spi_data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_idx~q\);

-- Location: LCCOMB_X22_Y21_N28
\x_cnt[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[7]~25_combout\ = (\cmd_idx.00010001~q\ & (!\state.STATE_SET_AXIS~q\ & ((!\state.STATE_SCAN_DRAW~q\) # (!\p_idx~q\)))) # (!\cmd_idx.00010001~q\ & (((!\state.STATE_SCAN_DRAW~q\)) # (!\p_idx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00010001~q\,
	datab => \p_idx~q\,
	datac => \state.STATE_SCAN_DRAW~q\,
	datad => \state.STATE_SET_AXIS~q\,
	combout => \x_cnt[7]~25_combout\);

-- Location: LCCOMB_X21_Y20_N30
\x_cnt[7]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[7]~26_combout\ = (!\x_cnt[7]~25_combout\ & (!\LessThan0~4_combout\ & (!\LessThan1~0_combout\ & !\LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_cnt[7]~25_combout\,
	datab => \LessThan0~4_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~9_combout\,
	combout => \x_cnt[7]~26_combout\);

-- Location: FF_X21_Y20_N15
\x_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt[1]~10_combout\,
	clrn => \rst_n~input_o\,
	sclr => \x_cnt[6]~24_combout\,
	ena => \x_cnt[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(1));

-- Location: LCCOMB_X21_Y20_N16
\x_cnt[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[2]~12_combout\ = (x_cnt(2) & (\x_cnt[1]~11\ $ (GND))) # (!x_cnt(2) & (!\x_cnt[1]~11\ & VCC))
-- \x_cnt[2]~13\ = CARRY((x_cnt(2) & !\x_cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(2),
	datad => VCC,
	cin => \x_cnt[1]~11\,
	combout => \x_cnt[2]~12_combout\,
	cout => \x_cnt[2]~13\);

-- Location: FF_X21_Y20_N17
\x_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt[2]~12_combout\,
	clrn => \rst_n~input_o\,
	sclr => \x_cnt[6]~24_combout\,
	ena => \x_cnt[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(2));

-- Location: LCCOMB_X21_Y20_N18
\x_cnt[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[3]~14_combout\ = (x_cnt(3) & (!\x_cnt[2]~13\)) # (!x_cnt(3) & ((\x_cnt[2]~13\) # (GND)))
-- \x_cnt[3]~15\ = CARRY((!\x_cnt[2]~13\) # (!x_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(3),
	datad => VCC,
	cin => \x_cnt[2]~13\,
	combout => \x_cnt[3]~14_combout\,
	cout => \x_cnt[3]~15\);

-- Location: FF_X21_Y20_N19
\x_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt[3]~14_combout\,
	clrn => \rst_n~input_o\,
	sclr => \x_cnt[6]~24_combout\,
	ena => \x_cnt[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(3));

-- Location: LCCOMB_X21_Y20_N20
\x_cnt[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[4]~16_combout\ = (x_cnt(4) & (\x_cnt[3]~15\ $ (GND))) # (!x_cnt(4) & (!\x_cnt[3]~15\ & VCC))
-- \x_cnt[4]~17\ = CARRY((x_cnt(4) & !\x_cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(4),
	datad => VCC,
	cin => \x_cnt[3]~15\,
	combout => \x_cnt[4]~16_combout\,
	cout => \x_cnt[4]~17\);

-- Location: FF_X21_Y20_N21
\x_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt[4]~16_combout\,
	clrn => \rst_n~input_o\,
	sclr => \x_cnt[6]~24_combout\,
	ena => \x_cnt[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(4));

-- Location: LCCOMB_X21_Y20_N22
\x_cnt[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[5]~18_combout\ = (x_cnt(5) & (!\x_cnt[4]~17\)) # (!x_cnt(5) & ((\x_cnt[4]~17\) # (GND)))
-- \x_cnt[5]~19\ = CARRY((!\x_cnt[4]~17\) # (!x_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(5),
	datad => VCC,
	cin => \x_cnt[4]~17\,
	combout => \x_cnt[5]~18_combout\,
	cout => \x_cnt[5]~19\);

-- Location: FF_X21_Y20_N23
\x_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt[5]~18_combout\,
	clrn => \rst_n~input_o\,
	sclr => \x_cnt[6]~24_combout\,
	ena => \x_cnt[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(5));

-- Location: LCCOMB_X21_Y20_N24
\x_cnt[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[6]~20_combout\ = (x_cnt(6) & (\x_cnt[5]~19\ $ (GND))) # (!x_cnt(6) & (!\x_cnt[5]~19\ & VCC))
-- \x_cnt[6]~21\ = CARRY((x_cnt(6) & !\x_cnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(6),
	datad => VCC,
	cin => \x_cnt[5]~19\,
	combout => \x_cnt[6]~20_combout\,
	cout => \x_cnt[6]~21\);

-- Location: FF_X21_Y20_N25
\x_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt[6]~20_combout\,
	clrn => \rst_n~input_o\,
	sclr => \x_cnt[6]~24_combout\,
	ena => \x_cnt[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(6));

-- Location: LCCOMB_X21_Y20_N4
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ((!x_cnt(6)) # (!x_cnt(5))) # (!x_cnt(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(4),
	datac => x_cnt(5),
	datad => x_cnt(6),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X21_Y20_N26
\x_cnt[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[7]~22_combout\ = x_cnt(7) $ (\x_cnt[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(7),
	cin => \x_cnt[6]~21\,
	combout => \x_cnt[7]~22_combout\);

-- Location: FF_X21_Y20_N27
\x_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt[7]~22_combout\,
	clrn => \rst_n~input_o\,
	sclr => \x_cnt[6]~24_combout\,
	ena => \x_cnt[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(7));

-- Location: LCCOMB_X21_Y20_N0
\x_cnt[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[6]~24_combout\ = (x_cnt(7)) # (((!\LessThan2~0_combout\ & !\LessThan2~1_combout\)) # (!\state.STATE_SCAN_DRAW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \LessThan2~1_combout\,
	datac => x_cnt(7),
	datad => \state.STATE_SCAN_DRAW~q\,
	combout => \x_cnt[6]~24_combout\);

-- Location: FF_X21_Y20_N13
\x_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt[0]~8_combout\,
	clrn => \rst_n~input_o\,
	sclr => \x_cnt[6]~24_combout\,
	ena => \x_cnt[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(0));

-- Location: LCCOMB_X21_Y20_N10
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (((!x_cnt(2)) # (!x_cnt(1))) # (!x_cnt(3))) # (!x_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(3),
	datac => x_cnt(1),
	datad => x_cnt(2),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X21_Y20_N6
\cmd_idx~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~43_combout\ = (\p_idx~q\ & ((x_cnt(7)) # ((!\LessThan2~0_combout\ & !\LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \LessThan2~1_combout\,
	datac => x_cnt(7),
	datad => \p_idx~q\,
	combout => \cmd_idx~43_combout\);

-- Location: LCCOMB_X22_Y17_N6
\y_cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[0]~8_combout\ = y_cnt(0) $ (VCC)
-- \y_cnt[0]~9\ = CARRY(y_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datad => VCC,
	combout => \y_cnt[0]~8_combout\,
	cout => \y_cnt[0]~9\);

-- Location: LCCOMB_X22_Y17_N0
\y_cnt[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[7]~24_combout\ = ((\LessThan3~2_combout\) # (!\state.STATE_SCAN_DRAW~q\)) # (!\cmd_idx~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_idx~43_combout\,
	datac => \LessThan3~2_combout\,
	datad => \state.STATE_SCAN_DRAW~q\,
	combout => \y_cnt[7]~24_combout\);

-- Location: LCCOMB_X22_Y17_N2
\y_cnt[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[7]~25_combout\ = (\spi_data[7]~2_combout\ & (((\state.STATE_SET_AXIS~q\ & \cmd_idx.00010001~q\)) # (!\y_cnt[7]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \y_cnt[7]~24_combout\,
	datac => \spi_data[7]~2_combout\,
	datad => \cmd_idx.00010001~q\,
	combout => \y_cnt[7]~25_combout\);

-- Location: FF_X22_Y17_N7
\y_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[0]~8_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(0));

-- Location: LCCOMB_X22_Y17_N8
\y_cnt[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[1]~10_combout\ = (y_cnt(1) & (!\y_cnt[0]~9\)) # (!y_cnt(1) & ((\y_cnt[0]~9\) # (GND)))
-- \y_cnt[1]~11\ = CARRY((!\y_cnt[0]~9\) # (!y_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(1),
	datad => VCC,
	cin => \y_cnt[0]~9\,
	combout => \y_cnt[1]~10_combout\,
	cout => \y_cnt[1]~11\);

-- Location: FF_X22_Y17_N9
\y_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[1]~10_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(1));

-- Location: LCCOMB_X22_Y17_N10
\y_cnt[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[2]~12_combout\ = (y_cnt(2) & (\y_cnt[1]~11\ $ (GND))) # (!y_cnt(2) & (!\y_cnt[1]~11\ & VCC))
-- \y_cnt[2]~13\ = CARRY((y_cnt(2) & !\y_cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datad => VCC,
	cin => \y_cnt[1]~11\,
	combout => \y_cnt[2]~12_combout\,
	cout => \y_cnt[2]~13\);

-- Location: FF_X22_Y17_N11
\y_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[2]~12_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(2));

-- Location: LCCOMB_X22_Y17_N12
\y_cnt[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[3]~14_combout\ = (y_cnt(3) & (!\y_cnt[2]~13\)) # (!y_cnt(3) & ((\y_cnt[2]~13\) # (GND)))
-- \y_cnt[3]~15\ = CARRY((!\y_cnt[2]~13\) # (!y_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datad => VCC,
	cin => \y_cnt[2]~13\,
	combout => \y_cnt[3]~14_combout\,
	cout => \y_cnt[3]~15\);

-- Location: FF_X22_Y17_N13
\y_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[3]~14_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(3));

-- Location: LCCOMB_X22_Y17_N14
\y_cnt[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[4]~16_combout\ = (y_cnt(4) & (\y_cnt[3]~15\ $ (GND))) # (!y_cnt(4) & (!\y_cnt[3]~15\ & VCC))
-- \y_cnt[4]~17\ = CARRY((y_cnt(4) & !\y_cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(4),
	datad => VCC,
	cin => \y_cnt[3]~15\,
	combout => \y_cnt[4]~16_combout\,
	cout => \y_cnt[4]~17\);

-- Location: FF_X22_Y17_N15
\y_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[4]~16_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(4));

-- Location: LCCOMB_X22_Y17_N16
\y_cnt[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[5]~18_combout\ = (y_cnt(5) & (!\y_cnt[4]~17\)) # (!y_cnt(5) & ((\y_cnt[4]~17\) # (GND)))
-- \y_cnt[5]~19\ = CARRY((!\y_cnt[4]~17\) # (!y_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(5),
	datad => VCC,
	cin => \y_cnt[4]~17\,
	combout => \y_cnt[5]~18_combout\,
	cout => \y_cnt[5]~19\);

-- Location: FF_X22_Y17_N17
\y_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[5]~18_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(5));

-- Location: LCCOMB_X22_Y17_N18
\y_cnt[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[6]~20_combout\ = (y_cnt(6) & (\y_cnt[5]~19\ $ (GND))) # (!y_cnt(6) & (!\y_cnt[5]~19\ & VCC))
-- \y_cnt[6]~21\ = CARRY((y_cnt(6) & !\y_cnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(6),
	datad => VCC,
	cin => \y_cnt[5]~19\,
	combout => \y_cnt[6]~20_combout\,
	cout => \y_cnt[6]~21\);

-- Location: FF_X22_Y17_N19
\y_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[6]~20_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(6));

-- Location: LCCOMB_X22_Y17_N20
\y_cnt[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[7]~22_combout\ = \y_cnt[6]~21\ $ (y_cnt(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => y_cnt(7),
	cin => \y_cnt[6]~21\,
	combout => \y_cnt[7]~22_combout\);

-- Location: FF_X22_Y17_N21
\y_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[7]~22_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(7));

-- Location: LCCOMB_X22_Y17_N26
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (y_cnt(7) & ((y_cnt(5)) # (y_cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(7),
	datac => y_cnt(5),
	datad => y_cnt(6),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X22_Y17_N24
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (y_cnt(2) & (y_cnt(0) & (y_cnt(1) & y_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(0),
	datac => y_cnt(1),
	datad => y_cnt(3),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X22_Y17_N22
\LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (\LessThan3~0_combout\) # ((y_cnt(7) & (y_cnt(4) & \LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => y_cnt(7),
	datac => y_cnt(4),
	datad => \LessThan3~1_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X22_Y20_N14
\Selector81~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\state.STATE_SCAN_DRAW~q\ & ((!\LessThan3~2_combout\) # (!\cmd_idx~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SCAN_DRAW~q\,
	datac => \cmd_idx~43_combout\,
	datad => \LessThan3~2_combout\,
	combout => \Selector81~0_combout\);

-- Location: LCCOMB_X23_Y20_N8
\Selector74~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector74~1_combout\ = (!\Selector74~0_combout\ & ((\cmd_idx.00000000~q\) # (!\Selector81~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector74~0_combout\,
	datac => \cmd_idx.00000000~q\,
	datad => \Selector81~0_combout\,
	combout => \Selector74~1_combout\);

-- Location: FF_X23_Y20_N9
\cmd_idx.00000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector74~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \spi_data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000000~q\);

-- Location: LCCOMB_X23_Y20_N22
\cmd_idx~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~47_combout\ = (!\cmd_idx.00000000~q\ & \state.STATE_SEND_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_idx.00000000~q\,
	datad => \state.STATE_SEND_INIT~q\,
	combout => \cmd_idx~47_combout\);

-- Location: FF_X23_Y20_N23
\cmd_idx.00000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~47_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000001~q\);

-- Location: LCCOMB_X23_Y22_N2
\cmd_idx~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~42_combout\ = (\state.STATE_SEND_INIT~q\ & \cmd_idx.00000001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datad => \cmd_idx.00000001~q\,
	combout => \cmd_idx~42_combout\);

-- Location: LCCOMB_X24_Y20_N4
\cmd_idx.00000010~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx.00000010~feeder_combout\ = \cmd_idx~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cmd_idx~42_combout\,
	combout => \cmd_idx.00000010~feeder_combout\);

-- Location: FF_X24_Y20_N5
\cmd_idx.00000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx.00000010~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000010~q\);

-- Location: LCCOMB_X23_Y20_N6
\WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (!\cmd_idx.00000010~q\ & (!\cmd_idx.00000100~q\ & (!\cmd_idx.00000101~q\ & \Selector100~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00000010~q\,
	datab => \cmd_idx.00000100~q\,
	datac => \cmd_idx.00000101~q\,
	datad => \Selector100~0_combout\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X22_Y20_N24
\state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (!\Selector81~0_combout\ & (\spi_data[7]~2_combout\ & ((\cmd_idx.00010010~q\) # (!\state.STATE_SET_AXIS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00010010~q\,
	datab => \state.STATE_SET_AXIS~q\,
	datac => \Selector81~0_combout\,
	datad => \spi_data[7]~2_combout\,
	combout => \state~19_combout\);

-- Location: LCCOMB_X22_Y20_N30
\state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (\state~19_combout\ & ((\WideNor0~0_combout\) # (!\state.STATE_SEND_INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SEND_INIT~q\,
	datac => \WideNor0~0_combout\,
	datad => \state~19_combout\,
	combout => \state~21_combout\);

-- Location: FF_X22_Y20_N21
\state.000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.000000~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.000000~q\);

-- Location: LCCOMB_X22_Y20_N6
\state.STATE_INIT_CMD~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.STATE_INIT_CMD~0_combout\ = !\state.000000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.000000~q\,
	combout => \state.STATE_INIT_CMD~0_combout\);

-- Location: LCCOMB_X22_Y20_N0
\state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (\state~19_combout\ & ((\state.STATE_SET_AXIS~q\) # ((\WideNor0~0_combout\) # (!\state.STATE_SEND_INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \state.STATE_SEND_INIT~q\,
	datac => \WideNor0~0_combout\,
	datad => \state~19_combout\,
	combout => \state~20_combout\);

-- Location: FF_X22_Y20_N7
\state.STATE_INIT_CMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.STATE_INIT_CMD~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_INIT_CMD~q\);

-- Location: FF_X22_Y20_N13
\state.STATE_SEND_INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.STATE_INIT_CMD~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_SEND_INIT~q\);

-- Location: LCCOMB_X23_Y22_N20
\delay_cnt[15]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[15]~36_combout\ = (\state.STATE_SEND_INIT~q\ & (((\cmd_idx.00000001~q\)))) # (!\state.STATE_SEND_INIT~q\ & (!\state.STATE_SET_AXIS~q\ & (!\state.STATE_SCAN_DRAW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datab => \state.STATE_SET_AXIS~q\,
	datac => \state.STATE_SCAN_DRAW~q\,
	datad => \cmd_idx.00000001~q\,
	combout => \delay_cnt[15]~36_combout\);

-- Location: LCCOMB_X22_Y23_N6
\delay_cnt[15]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[15]~37_combout\ = (\LessThan0~4_combout\) # ((\LessThan0~9_combout\) # ((!\LessThan1~0_combout\ & \delay_cnt[15]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~9_combout\,
	datac => \LessThan1~0_combout\,
	datad => \delay_cnt[15]~36_combout\,
	combout => \delay_cnt[15]~37_combout\);

-- Location: LCCOMB_X20_Y23_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (delay_cnt(4) & ((GND) # (!\Add1~7\))) # (!delay_cnt(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((delay_cnt(4)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X22_Y23_N10
\delay_cnt[4]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[4]~46_combout\ = (\Add1~8_combout\ & ((\LessThan0~4_combout\) # (\LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datac => \Add1~8_combout\,
	datad => \LessThan0~9_combout\,
	combout => \delay_cnt[4]~46_combout\);

-- Location: FF_X22_Y23_N11
\delay_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[4]~46_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(4));

-- Location: LCCOMB_X20_Y23_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (delay_cnt(5) & (\Add1~9\ & VCC)) # (!delay_cnt(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!delay_cnt(5) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X22_Y23_N20
\delay_cnt[5]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[5]~45_combout\ = (\delay_cnt[15]~37_combout\ & ((\LessThan0~10_combout\ & ((\Add1~10_combout\))) # (!\LessThan0~10_combout\ & (\cmd_idx~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_cnt[15]~37_combout\,
	datab => \cmd_idx~42_combout\,
	datac => \Add1~10_combout\,
	datad => \LessThan0~10_combout\,
	combout => \delay_cnt[5]~45_combout\);

-- Location: FF_X22_Y23_N21
\delay_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[5]~45_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(5));

-- Location: LCCOMB_X20_Y23_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (delay_cnt(6) & ((GND) # (!\Add1~11\))) # (!delay_cnt(6) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((delay_cnt(6)) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X21_Y23_N28
\delay_cnt[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[6]~3_combout\ = (\LessThan0~10_combout\ & (\Add1~12_combout\)) # (!\LessThan0~10_combout\ & ((!\state.STATE_SEND_INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \LessThan0~10_combout\,
	datad => \state.STATE_SEND_INIT~q\,
	combout => \delay_cnt[6]~3_combout\);

-- Location: LCCOMB_X23_Y22_N0
\delay_cnt[31]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[31]~34_combout\ = (!\state.STATE_SET_AXIS~q\ & (!\state.STATE_SCAN_DRAW~q\ & ((\cmd_idx.00000001~q\) # (!\state.STATE_SEND_INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datab => \state.STATE_SET_AXIS~q\,
	datac => \state.STATE_SCAN_DRAW~q\,
	datad => \cmd_idx.00000001~q\,
	combout => \delay_cnt[31]~34_combout\);

-- Location: LCCOMB_X21_Y23_N16
\delay_cnt[31]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[31]~35_combout\ = (\LessThan0~9_combout\) # ((\LessThan0~4_combout\) # ((\delay_cnt[31]~34_combout\ & !\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_cnt[31]~34_combout\,
	datab => \LessThan0~9_combout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan1~0_combout\,
	combout => \delay_cnt[31]~35_combout\);

-- Location: FF_X21_Y23_N29
\delay_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[6]~3_combout\,
	asdata => delay_cnt(6),
	clrn => \rst_n~input_o\,
	sload => \ALT_INV_delay_cnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(6));

-- Location: LCCOMB_X20_Y23_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (delay_cnt(7) & (\Add1~13\ & VCC)) # (!delay_cnt(7) & (!\Add1~13\))
-- \Add1~15\ = CARRY((!delay_cnt(7) & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X22_Y23_N14
\delay_cnt[7]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[7]~44_combout\ = (\Add1~14_combout\ & ((\LessThan0~4_combout\) # (\LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datac => \Add1~14_combout\,
	datad => \LessThan0~9_combout\,
	combout => \delay_cnt[7]~44_combout\);

-- Location: FF_X22_Y23_N15
\delay_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[7]~44_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(7));

-- Location: LCCOMB_X20_Y23_N16
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (delay_cnt(8) & ((GND) # (!\Add1~15\))) # (!delay_cnt(8) & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((delay_cnt(8)) # (!\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X22_Y23_N16
\delay_cnt[8]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[8]~43_combout\ = (\delay_cnt[15]~37_combout\ & ((\LessThan0~10_combout\ & ((\Add1~16_combout\))) # (!\LessThan0~10_combout\ & (\cmd_idx~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \cmd_idx~42_combout\,
	datac => \Add1~16_combout\,
	datad => \delay_cnt[15]~37_combout\,
	combout => \delay_cnt[8]~43_combout\);

-- Location: FF_X22_Y23_N17
\delay_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[8]~43_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(8));

-- Location: LCCOMB_X20_Y23_N18
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (delay_cnt(9) & (\Add1~17\ & VCC)) # (!delay_cnt(9) & (!\Add1~17\))
-- \Add1~19\ = CARRY((!delay_cnt(9) & !\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X22_Y23_N24
\delay_cnt[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[9]~2_combout\ = (\LessThan0~10_combout\ & ((\Add1~18_combout\))) # (!\LessThan0~10_combout\ & (!\state.STATE_SEND_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \state.STATE_SEND_INIT~q\,
	datad => \Add1~18_combout\,
	combout => \delay_cnt[9]~2_combout\);

-- Location: FF_X22_Y23_N25
\delay_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[9]~2_combout\,
	asdata => delay_cnt(9),
	clrn => \rst_n~input_o\,
	sload => \ALT_INV_delay_cnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(9));

-- Location: LCCOMB_X20_Y23_N20
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (delay_cnt(10) & ((GND) # (!\Add1~19\))) # (!delay_cnt(10) & (\Add1~19\ $ (GND)))
-- \Add1~21\ = CARRY((delay_cnt(10)) # (!\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X22_Y23_N0
\delay_cnt[10]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[10]~42_combout\ = (\Add1~20_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~9_combout\,
	datac => \LessThan0~4_combout\,
	datad => \Add1~20_combout\,
	combout => \delay_cnt[10]~42_combout\);

-- Location: FF_X22_Y23_N1
\delay_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[10]~42_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(10));

-- Location: LCCOMB_X20_Y23_N22
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (delay_cnt(11) & (\Add1~21\ & VCC)) # (!delay_cnt(11) & (!\Add1~21\))
-- \Add1~23\ = CARRY((!delay_cnt(11) & !\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X22_Y23_N30
\delay_cnt[11]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[11]~41_combout\ = (\Add1~22_combout\ & ((\LessThan0~4_combout\) # (\LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datac => \Add1~22_combout\,
	datad => \LessThan0~9_combout\,
	combout => \delay_cnt[11]~41_combout\);

-- Location: FF_X22_Y23_N31
\delay_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[11]~41_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(11));

-- Location: LCCOMB_X20_Y23_N24
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (delay_cnt(12) & ((GND) # (!\Add1~23\))) # (!delay_cnt(12) & (\Add1~23\ $ (GND)))
-- \Add1~25\ = CARRY((delay_cnt(12)) # (!\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X22_Y23_N12
\delay_cnt[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[12]~40_combout\ = (\Add1~24_combout\ & ((\LessThan0~4_combout\) # (\LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datac => \Add1~24_combout\,
	datad => \LessThan0~9_combout\,
	combout => \delay_cnt[12]~40_combout\);

-- Location: FF_X22_Y23_N13
\delay_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[12]~40_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(12));

-- Location: LCCOMB_X20_Y23_N26
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (delay_cnt(13) & (\Add1~25\ & VCC)) # (!delay_cnt(13) & (!\Add1~25\))
-- \Add1~27\ = CARRY((!delay_cnt(13) & !\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X22_Y23_N26
\delay_cnt[13]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[13]~39_combout\ = (\LessThan0~10_combout\ & (((\Add1~26_combout\)))) # (!\LessThan0~10_combout\ & (\cmd_idx~42_combout\ & ((\delay_cnt[15]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \cmd_idx~42_combout\,
	datac => \Add1~26_combout\,
	datad => \delay_cnt[15]~37_combout\,
	combout => \delay_cnt[13]~39_combout\);

-- Location: FF_X22_Y23_N27
\delay_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[13]~39_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(13));

-- Location: LCCOMB_X22_Y23_N2
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (delay_cnt(11)) # ((delay_cnt(10)) # ((delay_cnt(13)) # (delay_cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(11),
	datab => delay_cnt(10),
	datac => delay_cnt(13),
	datad => delay_cnt(12),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X22_Y23_N8
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (delay_cnt(4)) # ((delay_cnt(5)) # ((delay_cnt(7)) # (delay_cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(4),
	datab => delay_cnt(5),
	datac => delay_cnt(7),
	datad => delay_cnt(8),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X20_Y23_N28
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (delay_cnt(14) & ((GND) # (!\Add1~27\))) # (!delay_cnt(14) & (\Add1~27\ $ (GND)))
-- \Add1~29\ = CARRY((delay_cnt(14)) # (!\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X22_Y23_N22
\delay_cnt[14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[14]~1_combout\ = (\LessThan0~10_combout\ & ((\Add1~28_combout\))) # (!\LessThan0~10_combout\ & (!\state.STATE_SEND_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \state.STATE_SEND_INIT~q\,
	datad => \Add1~28_combout\,
	combout => \delay_cnt[14]~1_combout\);

-- Location: FF_X22_Y23_N23
\delay_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[14]~1_combout\,
	asdata => delay_cnt(14),
	clrn => \rst_n~input_o\,
	sload => \ALT_INV_delay_cnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(14));

-- Location: LCCOMB_X20_Y23_N30
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (delay_cnt(15) & (\Add1~29\ & VCC)) # (!delay_cnt(15) & (!\Add1~29\))
-- \Add1~31\ = CARRY((!delay_cnt(15) & !\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X21_Y23_N8
\delay_cnt[15]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[15]~38_combout\ = (\LessThan0~10_combout\ & (((\Add1~30_combout\)))) # (!\LessThan0~10_combout\ & (\delay_cnt[15]~37_combout\ & ((\cmd_idx~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_cnt[15]~37_combout\,
	datab => \Add1~30_combout\,
	datac => \LessThan0~10_combout\,
	datad => \cmd_idx~42_combout\,
	combout => \delay_cnt[15]~38_combout\);

-- Location: FF_X21_Y23_N9
\delay_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[15]~38_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(15));

-- Location: LCCOMB_X20_Y22_N0
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (delay_cnt(16) & ((GND) # (!\Add1~31\))) # (!delay_cnt(16) & (\Add1~31\ $ (GND)))
-- \Add1~33\ = CARRY((delay_cnt(16)) # (!\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X21_Y23_N10
\delay_cnt[16]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[16]~65_combout\ = (\delay_cnt[31]~35_combout\ & ((\Add1~32_combout\) # ((!\LessThan0~9_combout\ & !\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datab => \LessThan0~9_combout\,
	datac => \LessThan0~4_combout\,
	datad => \delay_cnt[31]~35_combout\,
	combout => \delay_cnt[16]~65_combout\);

-- Location: FF_X21_Y23_N11
\delay_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[16]~65_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(16));

-- Location: LCCOMB_X20_Y22_N2
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (delay_cnt(17) & (\Add1~33\ & VCC)) # (!delay_cnt(17) & (!\Add1~33\))
-- \Add1~35\ = CARRY((!delay_cnt(17) & !\Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X21_Y23_N24
\delay_cnt[17]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[17]~64_combout\ = (\delay_cnt[31]~35_combout\ & ((\Add1~34_combout\) # ((!\LessThan0~9_combout\ & !\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datab => \LessThan0~9_combout\,
	datac => \LessThan0~4_combout\,
	datad => \delay_cnt[31]~35_combout\,
	combout => \delay_cnt[17]~64_combout\);

-- Location: FF_X21_Y23_N25
\delay_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[17]~64_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(17));

-- Location: LCCOMB_X20_Y22_N4
\Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (delay_cnt(18) & ((GND) # (!\Add1~35\))) # (!delay_cnt(18) & (\Add1~35\ $ (GND)))
-- \Add1~37\ = CARRY((delay_cnt(18)) # (!\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X21_Y23_N26
\delay_cnt[18]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[18]~63_combout\ = (\delay_cnt[31]~35_combout\ & ((\Add1~36_combout\) # ((!\LessThan0~9_combout\ & !\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \LessThan0~9_combout\,
	datac => \LessThan0~4_combout\,
	datad => \delay_cnt[31]~35_combout\,
	combout => \delay_cnt[18]~63_combout\);

-- Location: FF_X21_Y23_N27
\delay_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[18]~63_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(18));

-- Location: LCCOMB_X20_Y22_N6
\Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (delay_cnt(19) & (\Add1~37\ & VCC)) # (!delay_cnt(19) & (!\Add1~37\))
-- \Add1~39\ = CARRY((!delay_cnt(19) & !\Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X22_Y23_N4
\delay_cnt[19]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[19]~0_combout\ = (\LessThan0~10_combout\ & ((\Add1~38_combout\))) # (!\LessThan0~10_combout\ & (!\state.STATE_SEND_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \state.STATE_SEND_INIT~q\,
	datad => \Add1~38_combout\,
	combout => \delay_cnt[19]~0_combout\);

-- Location: FF_X22_Y23_N5
\delay_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[19]~0_combout\,
	asdata => delay_cnt(19),
	clrn => \rst_n~input_o\,
	sload => \ALT_INV_delay_cnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(19));

-- Location: LCCOMB_X22_Y23_N18
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (delay_cnt(14)) # ((delay_cnt(19)) # ((delay_cnt(9)) # (delay_cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(14),
	datab => delay_cnt(19),
	datac => delay_cnt(9),
	datad => delay_cnt(6),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X22_Y23_N28
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~7_combout\) # ((\LessThan0~5_combout\) # ((\LessThan0~6_combout\) # (\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X20_Y22_N8
\Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (delay_cnt(20) & ((GND) # (!\Add1~39\))) # (!delay_cnt(20) & (\Add1~39\ $ (GND)))
-- \Add1~41\ = CARRY((delay_cnt(20)) # (!\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X21_Y22_N6
\delay_cnt[20]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[20]~62_combout\ = (\Add1~40_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => \LessThan0~4_combout\,
	datad => \Add1~40_combout\,
	combout => \delay_cnt[20]~62_combout\);

-- Location: FF_X21_Y22_N7
\delay_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[20]~62_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(20));

-- Location: LCCOMB_X20_Y22_N10
\Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (delay_cnt(21) & (\Add1~41\ & VCC)) # (!delay_cnt(21) & (!\Add1~41\))
-- \Add1~43\ = CARRY((!delay_cnt(21) & !\Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X21_Y22_N16
\delay_cnt[21]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[21]~61_combout\ = (\Add1~42_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => \LessThan0~4_combout\,
	datad => \Add1~42_combout\,
	combout => \delay_cnt[21]~61_combout\);

-- Location: FF_X21_Y22_N17
\delay_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[21]~61_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(21));

-- Location: LCCOMB_X20_Y22_N12
\Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (delay_cnt(22) & ((GND) # (!\Add1~43\))) # (!delay_cnt(22) & (\Add1~43\ $ (GND)))
-- \Add1~45\ = CARRY((delay_cnt(22)) # (!\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X21_Y22_N26
\delay_cnt[22]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[22]~60_combout\ = (\Add1~44_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => \LessThan0~4_combout\,
	datad => \Add1~44_combout\,
	combout => \delay_cnt[22]~60_combout\);

-- Location: FF_X21_Y22_N27
\delay_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[22]~60_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(22));

-- Location: LCCOMB_X20_Y22_N14
\Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (delay_cnt(23) & (\Add1~45\ & VCC)) # (!delay_cnt(23) & (!\Add1~45\))
-- \Add1~47\ = CARRY((!delay_cnt(23) & !\Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X21_Y22_N8
\delay_cnt[23]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[23]~59_combout\ = (\Add1~46_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => \LessThan0~4_combout\,
	datad => \Add1~46_combout\,
	combout => \delay_cnt[23]~59_combout\);

-- Location: FF_X21_Y22_N9
\delay_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[23]~59_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(23));

-- Location: LCCOMB_X20_Y22_N16
\Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (delay_cnt(24) & ((GND) # (!\Add1~47\))) # (!delay_cnt(24) & (\Add1~47\ $ (GND)))
-- \Add1~49\ = CARRY((delay_cnt(24)) # (!\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X21_Y22_N28
\delay_cnt[24]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[24]~58_combout\ = (\Add1~48_combout\ & ((\LessThan0~4_combout\) # (\LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~4_combout\,
	datac => \Add1~48_combout\,
	datad => \LessThan0~9_combout\,
	combout => \delay_cnt[24]~58_combout\);

-- Location: FF_X21_Y22_N29
\delay_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[24]~58_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(24));

-- Location: LCCOMB_X20_Y22_N18
\Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (delay_cnt(25) & (\Add1~49\ & VCC)) # (!delay_cnt(25) & (!\Add1~49\))
-- \Add1~51\ = CARRY((!delay_cnt(25) & !\Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X21_Y22_N14
\delay_cnt[25]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[25]~57_combout\ = (\Add1~50_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => \LessThan0~4_combout\,
	datad => \Add1~50_combout\,
	combout => \delay_cnt[25]~57_combout\);

-- Location: FF_X21_Y22_N15
\delay_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[25]~57_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(25));

-- Location: LCCOMB_X20_Y22_N20
\Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (delay_cnt(26) & ((GND) # (!\Add1~51\))) # (!delay_cnt(26) & (\Add1~51\ $ (GND)))
-- \Add1~53\ = CARRY((delay_cnt(26)) # (!\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X21_Y22_N12
\delay_cnt[26]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[26]~56_combout\ = (\Add1~52_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => \LessThan0~4_combout\,
	datad => \Add1~52_combout\,
	combout => \delay_cnt[26]~56_combout\);

-- Location: FF_X21_Y22_N13
\delay_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[26]~56_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(26));

-- Location: LCCOMB_X20_Y22_N22
\Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (delay_cnt(27) & (\Add1~53\ & VCC)) # (!delay_cnt(27) & (!\Add1~53\))
-- \Add1~55\ = CARRY((!delay_cnt(27) & !\Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X21_Y22_N30
\delay_cnt[27]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[27]~55_combout\ = (\Add1~54_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => \LessThan0~4_combout\,
	datad => \Add1~54_combout\,
	combout => \delay_cnt[27]~55_combout\);

-- Location: FF_X21_Y22_N31
\delay_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[27]~55_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(27));

-- Location: LCCOMB_X21_Y22_N10
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (delay_cnt(26)) # ((delay_cnt(25)) # ((delay_cnt(27)) # (delay_cnt(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(26),
	datab => delay_cnt(25),
	datac => delay_cnt(27),
	datad => delay_cnt(24),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y22_N24
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (delay_cnt(20)) # ((delay_cnt(23)) # ((delay_cnt(22)) # (delay_cnt(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(20),
	datab => delay_cnt(23),
	datac => delay_cnt(22),
	datad => delay_cnt(21),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y23_N30
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (delay_cnt(16)) # ((delay_cnt(15)) # ((delay_cnt(18)) # (delay_cnt(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(16),
	datab => delay_cnt(15),
	datac => delay_cnt(18),
	datad => delay_cnt(17),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X20_Y22_N24
\Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (delay_cnt(28) & ((GND) # (!\Add1~55\))) # (!delay_cnt(28) & (\Add1~55\ $ (GND)))
-- \Add1~57\ = CARRY((delay_cnt(28)) # (!\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X21_Y22_N22
\delay_cnt[28]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[28]~54_combout\ = (\Add1~56_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => \LessThan0~4_combout\,
	datad => \Add1~56_combout\,
	combout => \delay_cnt[28]~54_combout\);

-- Location: FF_X21_Y22_N23
\delay_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[28]~54_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(28));

-- Location: LCCOMB_X20_Y22_N26
\Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (delay_cnt(29) & (\Add1~57\ & VCC)) # (!delay_cnt(29) & (!\Add1~57\))
-- \Add1~59\ = CARRY((!delay_cnt(29) & !\Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X21_Y22_N20
\delay_cnt[29]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[29]~53_combout\ = (\Add1~58_combout\ & ((\LessThan0~4_combout\) # (\LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~4_combout\,
	datac => \Add1~58_combout\,
	datad => \LessThan0~9_combout\,
	combout => \delay_cnt[29]~53_combout\);

-- Location: FF_X21_Y22_N21
\delay_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[29]~53_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(29));

-- Location: LCCOMB_X20_Y22_N28
\Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (delay_cnt(30) & ((GND) # (!\Add1~59\))) # (!delay_cnt(30) & (\Add1~59\ $ (GND)))
-- \Add1~61\ = CARRY((delay_cnt(30)) # (!\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X21_Y22_N18
\delay_cnt[30]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[30]~52_combout\ = (\Add1~60_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => \LessThan0~4_combout\,
	datad => \Add1~60_combout\,
	combout => \delay_cnt[30]~52_combout\);

-- Location: FF_X21_Y22_N19
\delay_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[30]~52_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(30));

-- Location: LCCOMB_X20_Y22_N30
\Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\ $ (!delay_cnt(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => delay_cnt(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X21_Y22_N4
\delay_cnt[31]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[31]~51_combout\ = (\Add1~62_combout\ & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => \LessThan0~4_combout\,
	datad => \Add1~62_combout\,
	combout => \delay_cnt[31]~51_combout\);

-- Location: FF_X21_Y22_N5
\delay_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[31]~51_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(31));

-- Location: LCCOMB_X21_Y22_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (delay_cnt(28)) # ((delay_cnt(30)) # ((delay_cnt(31)) # (delay_cnt(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(28),
	datab => delay_cnt(30),
	datac => delay_cnt(31),
	datad => delay_cnt(29),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y22_N2
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\) # ((\LessThan0~2_combout\) # ((\LessThan0~3_combout\) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X21_Y23_N14
\LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\LessThan0~4_combout\) # (\LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~4_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X21_Y23_N4
\clk_div.0001~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div.0001~0_combout\ = \clk_div.0001~q\ $ (((\rst_n~input_o\ & (!\LessThan0~10_combout\ & \LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \LessThan0~10_combout\,
	datac => \clk_div.0001~q\,
	datad => \LessThan1~0_combout\,
	combout => \clk_div.0001~0_combout\);

-- Location: FF_X21_Y23_N5
\clk_div.0001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div.0001~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div.0001~q\);

-- Location: LCCOMB_X21_Y23_N18
\SCL~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCL~0_combout\ = (\LessThan0~10_combout\ & (((\SCL~reg0_q\)))) # (!\LessThan0~10_combout\ & ((\LessThan1~0_combout\ & (!\clk_div.0001~q\)) # (!\LessThan1~0_combout\ & ((\SCL~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div.0001~q\,
	datab => \LessThan0~10_combout\,
	datac => \SCL~reg0_q\,
	datad => \LessThan1~0_combout\,
	combout => \SCL~0_combout\);

-- Location: FF_X21_Y23_N19
\SCL~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SCL~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCL~reg0_q\);

-- Location: LCCOMB_X22_Y21_N18
\SDA~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SDA~2_combout\ = (!\LessThan0~9_combout\ & (!\LessThan0~4_combout\ & (!\clk_div.0001~q\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => \LessThan0~4_combout\,
	datac => \clk_div.0001~q\,
	datad => \LessThan1~0_combout\,
	combout => \SDA~2_combout\);

-- Location: LCCOMB_X23_Y17_N10
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = bit_cnt(0) $ (bit_cnt(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bit_cnt(0),
	datad => bit_cnt(1),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X22_Y21_N14
\Selector95~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\cmd_idx.00010001~q\) # ((\cmd_idx.00000111~q\) # ((\cmd_idx.00001011~q\) # (\cmd_idx.00001100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00010001~q\,
	datab => \cmd_idx.00000111~q\,
	datac => \cmd_idx.00001011~q\,
	datad => \cmd_idx.00001100~q\,
	combout => \Selector95~0_combout\);

-- Location: LCCOMB_X24_Y23_N28
\Selector95~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~1_combout\ = (\Selector95~0_combout\) # ((spi_data(5) & ((\cmd_idx.00010010~q\) # (!\WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(5),
	datab => \cmd_idx.00010010~q\,
	datac => \WideNor0~0_combout\,
	datad => \Selector95~0_combout\,
	combout => \Selector95~1_combout\);

-- Location: LCCOMB_X24_Y23_N2
\Selector95~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~2_combout\ = ((\cmd_idx.00000110~q\) # ((\WideNor0~0_combout\ & spi_data(5)))) # (!\Selector96~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector96~0_combout\,
	datab => \WideNor0~0_combout\,
	datac => spi_data(5),
	datad => \cmd_idx.00000110~q\,
	combout => \Selector95~2_combout\);

-- Location: LCCOMB_X24_Y23_N30
\Selector95~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~3_combout\ = (\state.STATE_SET_AXIS~q\ & (\Selector95~1_combout\)) # (!\state.STATE_SET_AXIS~q\ & ((\Selector95~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \Selector95~1_combout\,
	datad => \Selector95~2_combout\,
	combout => \Selector95~3_combout\);

-- Location: LCCOMB_X21_Y17_N12
\img_addr[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \img_addr[8]~0_combout\ = (y_cnt(0) & (x_cnt(7) $ (VCC))) # (!y_cnt(0) & (x_cnt(7) & VCC))
-- \img_addr[8]~1\ = CARRY((y_cnt(0) & x_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => x_cnt(7),
	datad => VCC,
	combout => \img_addr[8]~0_combout\,
	cout => \img_addr[8]~1\);

-- Location: LCCOMB_X21_Y17_N14
\img_addr[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \img_addr[9]~2_combout\ = (y_cnt(1) & (!\img_addr[8]~1\)) # (!y_cnt(1) & ((\img_addr[8]~1\) # (GND)))
-- \img_addr[9]~3\ = CARRY((!\img_addr[8]~1\) # (!y_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(1),
	datad => VCC,
	cin => \img_addr[8]~1\,
	combout => \img_addr[9]~2_combout\,
	cout => \img_addr[9]~3\);

-- Location: LCCOMB_X21_Y17_N16
\img_addr[10]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \img_addr[10]~4_combout\ = (y_cnt(2) & (\img_addr[9]~3\ $ (GND))) # (!y_cnt(2) & (!\img_addr[9]~3\ & VCC))
-- \img_addr[10]~5\ = CARRY((y_cnt(2) & !\img_addr[9]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(2),
	datad => VCC,
	cin => \img_addr[9]~3\,
	combout => \img_addr[10]~4_combout\,
	cout => \img_addr[10]~5\);

-- Location: LCCOMB_X21_Y17_N18
\img_addr[11]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \img_addr[11]~6_combout\ = (y_cnt(3) & (!\img_addr[10]~5\)) # (!y_cnt(3) & ((\img_addr[10]~5\) # (GND)))
-- \img_addr[11]~7\ = CARRY((!\img_addr[10]~5\) # (!y_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(3),
	datad => VCC,
	cin => \img_addr[10]~5\,
	combout => \img_addr[11]~6_combout\,
	cout => \img_addr[11]~7\);

-- Location: LCCOMB_X21_Y17_N20
\img_addr[12]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \img_addr[12]~8_combout\ = (y_cnt(4) & (\img_addr[11]~7\ $ (GND))) # (!y_cnt(4) & (!\img_addr[11]~7\ & VCC))
-- \img_addr[12]~9\ = CARRY((y_cnt(4) & !\img_addr[11]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(4),
	datad => VCC,
	cin => \img_addr[11]~7\,
	combout => \img_addr[12]~8_combout\,
	cout => \img_addr[12]~9\);

-- Location: LCCOMB_X21_Y17_N22
\img_addr[13]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \img_addr[13]~10_combout\ = (y_cnt(5) & (!\img_addr[12]~9\)) # (!y_cnt(5) & ((\img_addr[12]~9\) # (GND)))
-- \img_addr[13]~11\ = CARRY((!\img_addr[12]~9\) # (!y_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(5),
	datad => VCC,
	cin => \img_addr[12]~9\,
	combout => \img_addr[13]~10_combout\,
	cout => \img_addr[13]~11\);

-- Location: LCCOMB_X21_Y17_N24
\img_addr[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \img_addr[14]~12_combout\ = (y_cnt(6) & (\img_addr[13]~11\ $ (GND))) # (!y_cnt(6) & (!\img_addr[13]~11\ & VCC))
-- \img_addr[14]~13\ = CARRY((y_cnt(6) & !\img_addr[13]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(6),
	datad => VCC,
	cin => \img_addr[13]~11\,
	combout => \img_addr[14]~12_combout\,
	cout => \img_addr[14]~13\);

-- Location: LCCOMB_X21_Y17_N4
\image_rom_rtl_0|auto_generated|address_reg_a[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|address_reg_a[1]~feeder_combout\ = \img_addr[14]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \img_addr[14]~12_combout\,
	combout => \image_rom_rtl_0|auto_generated|address_reg_a[1]~feeder_combout\);

-- Location: FF_X21_Y17_N5
\image_rom_rtl_0|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \image_rom_rtl_0|auto_generated|address_reg_a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \image_rom_rtl_0|auto_generated|address_reg_a\(1));

-- Location: LCCOMB_X21_Y17_N30
\image_rom_rtl_0|auto_generated|address_reg_a[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\ = \img_addr[13]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \img_addr[13]~10_combout\,
	combout => \image_rom_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: FF_X21_Y17_N31
\image_rom_rtl_0|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \image_rom_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \image_rom_rtl_0|auto_generated|address_reg_a\(0));

-- Location: LCCOMB_X21_Y17_N26
\img_addr[15]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \img_addr[15]~14_combout\ = y_cnt(7) $ (\img_addr[14]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(7),
	cin => \img_addr[14]~13\,
	combout => \img_addr[15]~14_combout\);

-- Location: LCCOMB_X21_Y17_N0
\image_rom_rtl_0|auto_generated|rden_decode|w_anode216w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|rden_decode|w_anode216w\(3) = (!\img_addr[15]~14_combout\ & (\img_addr[13]~10_combout\ & \img_addr[14]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \img_addr[15]~14_combout\,
	datac => \img_addr[13]~10_combout\,
	datad => \img_addr[14]~12_combout\,
	combout => \image_rom_rtl_0|auto_generated|rden_decode|w_anode216w\(3));

-- Location: M9K_X25_Y22_N0
\image_rom_rtl_0|auto_generated|ram_block1a29\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"3FFFFFFFFFFFFFBC3D5AA9AAAAA9A9A186114165BA2BB04AA52AA100C2893DD50FCFFFFFFFFFFC30306AAA6AAAAAA66618101057B3AA3FAEC540730F282F1557B3FFFFFFFFFFFFFFCCAA1046AAA99A6980010047AAABF82D511D5510CCBC1F7DCFFFFFFFFFFFFFFFFF2056366AA6A69901104D172EADACFED74477C3540015D50FF3FFFFFFFFFFFF33D4BAE02AAA9910405515557BA22BCD7557565940001B7703FCFFFFFFFFFFFFFFF036FAC2A998145581517AFEAB83FFDDF566555150DDF530FFFFFFFFFFFFFFFFFC2D6E32AAA55440D03773AAADA0FCD75D5595FF0D5D7FDC3FCFFFFFFFFFFFFFFCE55AAC0046C1100CD5D4AAA9ABFFF75316557F1075FF",
	mem_init2 => X"8B4FFFFFFFFFFFFF3FFCE555F5BA6C5004434C555C9C00FF7DCCF599517C4F7780D3FF3FFCCFFFFFFFFCE5556555815310B3DFCAAAAE00FFDD5FF59575F0AFFF78D7FFCFCFFFFFFFFFFF25559455581D33DD34F2A9AAAEF37777DD5973306DFFB8F0FFCCFF33FFFF33FF05597561AC3BB444DF1594EEAAFF7DFFFD65D7300FFFB00D7FC3F38330CFFFFF355556A2C884C33333DBFC2300FFDFFFF3957F332FF792CF03F3338B3F3333FF0455559574BCC333CFDA9AAF00FCF75FFF5554C30FDF5ECFF0F33FE20F374FFFC96555555E8EF3333CCAA9AE9ACF3CFFFF5574C30CFFF03FC3330CF2A34AAA3FCD15555556A33CF30FE594219AC3FFFFFFD5D4C30FFF",
	mem_init1 => X"90CF070CC32FC1AD9ABFF1517FFFE5D4CFCFFFFAAE1F00FFF3DFFFD574C34CCFDCCF70FCCCDCD68D6ABFFCD551455743F3FFFFCA95AAAFFFCF3FFFD577004F3F3EBFFF333433118E1A8FFF365555558B3FFFFFD8BAAA5BFFF3FFCF177F00AC7FE3C3FF33CFC356BDA68FFC245D555DFFFFFFFFDD572B2A3FFFFFFCF5573073DEBC23FFFFFDFD46B198AFFF0557F69749FFFFFFEBABABF33FFFFFFFF774C0CFF5E4870CFFFF74443616AFFFFD2198001AFFFFFFEAA5A96EFFFFFFF0F57CC00FDE9EEAAFFFF8CC1AD1A1AFFFC2105808953FFFFFE6E6AA66FFFFFFFFCDF0C0FCD9F8320CFDFFFCA0724683FF3C5554AFC03F3FCF7D792AABFFFFFFFFFDFFC30FFD",
	mem_init0 => X"EF4A83B3FFFFF34D86A0FFFF484C005C3FFFFF9575A30C0FFFFF3CF33C30FFF9A6E8B7CCFFFFF3351923FFFFDC7FFCFFFFFFFFD96669663FFFCFFFFFFC00FF35A9CA1D7BFFFFFFF44643FFF3F1F3FFFFFFFFCD55785D96BFFFFFFFFCFC330F7D67EA9DD70FFFCFD19803FFFCEC0FFFCFFFFF3FE0C359FF0F3FF33FFFF0C3FFFD9FEA9D407FFFFFF19143FFCDFB3CFFFFFFFFFF655B55F00FFCFFFC3C3C00FFDD9FF49DE294FFFFD42543FFFF4EFFF3FCFFF3FC96565555BCFFFFFFF3FC034FF73FFEFFA0A83FFFD654F3FFCCD4F3FFFFFFFFF7F6735155BFFCFCF3FFF0C3FFFD2FDAFF86223FFF2553CFFFFDCCFFFCFFFFCFCEB8FF19FCCFFFFCFF3CFF01BFDF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode216w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y17_N10
\image_rom_rtl_0|auto_generated|rden_decode|w_anode205w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|rden_decode|w_anode205w\(3) = (!\img_addr[15]~14_combout\ & (!\img_addr[13]~10_combout\ & \img_addr[14]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \img_addr[15]~14_combout\,
	datac => \img_addr[13]~10_combout\,
	datad => \img_addr[14]~12_combout\,
	combout => \image_rom_rtl_0|auto_generated|rden_decode|w_anode205w\(3));

-- Location: M9K_X25_Y25_N0
\image_rom_rtl_0|auto_generated|ram_block1a21\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"D5F7FFEA833FFF9007CFFFF35BF3FFCF3FFFFA555A4980BFCFFFCFFFCC027FFF1FDDFF3EA8BCFD6FDFCFFFF7D33FF3FFFFFF343B964955BF3CF3FFCF33027FFF9F7F7FFA98FFC14F33FCFFDD4FCFFFFCFCCFCB7FCE45BEBFFFFF3C3F3C33FF7F0FD5FFDAA16F317FFFFFFF774FFFFFCFFFFF35556F45FC0FCCF3F3F3FC037DFF877FFFDA2AAB3D7FFFFFFFF35FCFFCFFCCF309555696AFCFFFFFFCFF3003FFFFFFD5FF6AA8A8F0FFFF33FFCD4FFFCFCF3FFFD5FA57AA658F3CF33FFCFC03FDFFFF77FF6AA808FFFFFFFFFFDD3FCFFFFFFF3FD68FFEAAA8BFFFCFFF33CC03FFFEFFCFFFF282A3F3FF333FFFF37FFFFFFCFFFF17556E99FF0FCFFFF33CCC030759",
	mem_init2 => X"5F77FF7EAA8BFFCFFF7FFF373F3FF3FFFFFFFCE556A911CCFCF0FCF330C33CE5FFDDFFFE62B0FFFFFFFFFCFFFFFFFFFFFCCFA8FCEEFBA93F3FFFCF3CCC038EF57FFDF5FEAA16CFFFFFCFFFC7FFFFCF3FFFCF7556EFAB30FFF3C3F3C30003CFE9DF3F77FFAAA43FFFFFFFFDFC3FFFFFFFF3FFF5205555A20CFF3FFCCCCC0FF7FA0FFDFDFF6AA2CFF3FFCFFF33FFFFFF3F3FFCFC0BEFFFC68CFFFCCF3C300FCFE505FF77F7AA8D3EFFFFFFFCFFFFFFFFFFFFCD65EFEFFFF2FF33F0FCCC000DFFF5017FEB7FDDDCAFFFFFFFFCCFFFFFFFCFFF01E0205BFFC4FC0F0FCFCC000DFFBF07FFC3FFFFFEAFFFFF3FFFCFFFFFFFFFFCFF0F557BFBE6FC3CF3FF00000DF3DF",
	mem_init1 => X"DFFFD82FFFF10BEF3FFCFFFFF3FFFFFF330D850C2BFFEA4C433FFC30003DFFFF3FFFA92BFF3A42FC3FFFFFFF3FFFF3FFF3C264897BEFBC0240F330C000FDF3FF0FDC824F7F642FEFFFCFCFFCFF3FFFCCCC0259909BFACFB1C00330003F64FBFFBDFE22F9FF0288FF3FFCFFFFFFFFFFFFC30166996AFFAAC900CCC000F6A6FEF75FD088A9F0A0930CFFF3FFFFF3FFFCFBF095ABBBEBCEEBA90000000FAA5EBFFF5F784CFB628AA0333FFCF3F3F3FFFFFF30E95FBEAAFAA3C140C0003E9539EEF7756F2B29EA8A9C0CFF3FFF3FFFFFFFECC0E66AF9EBBAA38AD00003E580276FFFFD400B69FEA9A800CCFC3FF33FFFFBF3019AAAA76AABEB6E6030DC520B9A5A6D",
	mem_init0 => X"F55C00ABD7AE98700CCFFCCFF3FFFCF3126AAF9F7AEB6825E3832480EA6A6555FDA62FA9CAAA2C65DC00CCFCCFFF3FBC0B6A9A77C7FF9225E9F5780BE9666655751220E7E8862F42A9F300003CFFF3F00AAA89DDE9579A2F26A7023FBAA65955F0300A8B78820BF8DA97FBCC00FFFCF06EAAB6DB7D249A062C6803FBAA696565542E8E897AAA0FFFC168E5FF803FCCC02AA86D8555175A329CA98FFFA6999599606000EE4E27AF7FFFA9AA197B0F3F006AA960A1D50DE0308A3FFFF9AAA64595486900A7602A07FFFFE821599DDCCFF02A862805954B503A83F7DEDAA654846AE082C3DDAAA90BDFFF6AA204692BF0002A9CA0055D40D0E8FF7FE9AA95AFA2AA",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode205w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y23_N26
\image_rom_rtl_0|auto_generated|mux2|muxlut_result5w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result5w~0_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a29~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- ((\image_rom_rtl_0|auto_generated|ram_block1a21~portadataout\)))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a29~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a21~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result5w~0_combout\);

-- Location: FF_X21_Y17_N27
\image_rom_rtl_0|auto_generated|address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \img_addr[15]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \image_rom_rtl_0|auto_generated|address_reg_a\(2));

-- Location: LCCOMB_X21_Y17_N28
\image_rom_rtl_0|auto_generated|rden_decode|w_anode194w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|rden_decode|w_anode194w\(3) = (!\img_addr[15]~14_combout\ & (\img_addr[13]~10_combout\ & !\img_addr[14]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \img_addr[15]~14_combout\,
	datac => \img_addr[13]~10_combout\,
	datad => \img_addr[14]~12_combout\,
	combout => \image_rom_rtl_0|auto_generated|rden_decode|w_anode194w\(3));

-- Location: M9K_X25_Y28_N0
\image_rom_rtl_0|auto_generated|ram_block1a13\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"D0AE2A25302AA7FFFFEAABFFE2B280022A668901F5575137FFF75A666A9F8A0AD46873954571FCFFFFDA27DF3CAA8001AB211805DD5332FDFFD55569AA3FAA8A56A88EAEC88AA7FFFFE2BFDFF23B8B008DB98881D7575F5D7F7FD56A84FCA8A8FCBC7EA602A883FFFFFEFFFFFFFF09A1B7AAAA2175D505DD7EDD766A6BFFAA8AD562A5558AA807FFFFCBFFF6AAAA2A15AAC82AA155540FD55CCDC9A6AAFFAA2A5D6C5D96C80A07FFFFEBFFFBBBBAAFC55880A0155754FD5551C55D09AABEAAAAD55575570A835FFFFFDFFFF8A7FABABEC0005DBDD5507D577154579AAAAAAAAA5555575702282BFFFFFFFFF2AAEA2A7C0025D6E0B5D6F57FC88DD1DAAAAAAAAA",
	mem_init2 => X"555D555750104DFF7FFFFF6ABD2E2EAF00750156D775F7FD830FF3F2AAAEAAAA595555155816AFFFFFFFF09AA2A28822A1802015D154F7FE0C20CB4EAAAAAAA86555475D55655FFFFFFFD09AA3B08AA83BB20E8576B7FF79230551592AAAAAAA55550A5DD429FFFFDFDFAA8AA2B889AA2A828AA45792FD4C20CDD155CAAAAAA8EE5520877506FFFFFFFDE0282832B2A26E02268151D05200202FDD5D5E2AAAAA5D555115D5D6FFFFFFFF407D0A8F463C2AA2E84501C4C2800003FD7D5FAAAAA2540501055F913FFFFFFF8088AAEAF28BA2A28091555AFA40C335555555EAA28A501504155FEBFFFFFFFF1882ABA222BA2290F4955554868828709D5555EAAA8A",
	mem_init1 => X"559548A9D5DFBFFFFFFFDA8226B2E3120AB1EAA835400C3C8D4D557557EAAAA2551405585DDDC8FF7FFFF1568832F80822AAA1C2D552F220B00D55DBCEAAAAAA5995005465DDE8FFFFFFFCA222A8AC8A2A882A845550FE00A897C55D5FAAAAAA5EA41A56475508FFFFFFD882A2AEAE80082200155101F6F081875F715AAAAAAA595D55AA1D4C927FFF7F4A82A502B88282200A855441408033E08A0AFCAAAAAA556402217FF48AF77DDF2AA30A3FCC228AAA2105014140B4FFC1F55D728AAA88555E6295DF5085F7777755070AFFD582AA01047D471143F0808003C15EAAAAAA556570BD556822F77FFF02A2B3EF58008AA8224310474DFFCFF5D5515FAAAA8A",
	mem_init0 => X"555D5F5F5F555A5DFDDFF6A228BFF98A02A8A85555906F75A89B10FD5782AA8A557D5577D5CD885F7F7DFD04AABAC508A080A55454457F7CFFF5C555578AA880355D757F57E2C3DDDDFFFFCF58BA3A80002A0377551BDF730000CFF8BFAAA0800F57D557F5D0CFD55F7DFD3EBAE23A480A4227F550143F7C3003EDD57E0AA8003C555ED5F5B36EEDE5FDDFDEBA2AF30BA598A7FD550ED793FDD547DD618A200014755D57F5E6A8777DF5FDF7A02841980D93A5D554D713301F0DF1CAA8628840FC15FB556695DDF5DFE6DF7FFAFB8195AA5085E73EF5F8883007C30A9914CB114017FE555565BE5D7E75FDEF5BBE812998BCAD615A51186A8EA355CAA9972CE5",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode194w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y17_N6
\image_rom_rtl_0|auto_generated|rden_decode|w_anode176w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|rden_decode|w_anode176w\(3) = (!\img_addr[15]~14_combout\ & (!\img_addr[13]~10_combout\ & !\img_addr[14]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \img_addr[15]~14_combout\,
	datac => \img_addr[13]~10_combout\,
	datad => \img_addr[14]~12_combout\,
	combout => \image_rom_rtl_0|auto_generated|rden_decode|w_anode176w\(3));

-- Location: M9K_X25_Y21_N0
\image_rom_rtl_0|auto_generated|ram_block1a5\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FF00CC777599FAF5DF641FFFFF0B0900395725B455CE4BFCFFC777A4AA82CC041F02A83DE5565EBB5DF46F7FF77C0082C008218A75D2CBE7F5ED555ABA39F35503300015DD9576DDDF7467FFFFF4898C300222140B5FF0F57CB0A269AE6DB3D53F000012B9D595DFDDD657FFFFF089A0C22082815117E5F7C0A1551B97F1AA3D343C0010AB95697D57734FFFFFFCC9A0028202014501B95F55565566A8C68A127C3C0C0012E559E7F7715FBFFFD6CA000228888155A7D1F5F5BD6596900928C57FD008177CDE55D555E61FCFFFF4F300022022045587727555D5566AA836AA1657F0C0000000D6DF9DDFFEDDFFC4BF402A28080141A4E4D555555E6AAAFA2212",
	mem_init2 => X"CFD41C300140255E5555DE296B08FC402A0A02A0553FE5D557FD57A6AABA2216B2F8D7C0000029555D757526FE00FF3A208888A0512D7E2555759D54AA3AA2145D0000A556942D55D57DD5A6803CDFE60AA85200458365255570D4558AAAAA45FF700300082182555D557DAA4BA0DD7A9540255153557E81540280052AAAA244455030030880565DD5D5FDAA8AA21FDD75CE4B02BDCD5BA95551003D288AAA42C5D410F00100E0597E757EABBAA007714DFFF97F475991257548803CAA2A8A141F4FF2AA0B000795D9977EEEA2A0AB6D9DF523EF094BFE0555910AFFAAAAAA91F55FFFFCC9A55555577755FFAFE5022665DE2D764D5B6FF55558C6CCA2AAAAA2",
	mem_init1 => X"D5F6AAAAA51D93DD7557FFFDFFFC4021257155749C05BD5D57778EEA2AAAAA99B7DCAAA5BD554A5744CC5FF7FFB0AC0D5DC5C3FA3715D5755557B6CCC2AAAAA6FFAAAEF97D79E775EDFFFBFDFFEE5E02EEC0F57FE59E75D55557557EAAAAAA970AAAAA9DFFE477A677F7DFFFFFBBFFA8AA80FF3F76C2DF554557FF556822AAA5AAA8AA5576951DAFC9F71C1F7FEE84A4A584203FC669FD7D857555556AAAAAB5A8AAAA555577EF117F3F7DFFFFFEA0E8453F4C2FA9ABF55591557F5D6AAAAAD5AA6AA555755DDFD7FFFFCB91FFFEA81E3FF059245F6F7F55A9555555568AAAF7B9E95555001AFB91FFD15AA0E7EBAAA1EB01830DD4FFF7D7555555555AAAAB70",
	mem_init0 => X"ABF0D5015401EEF77FFFD7582CEFAAB94C9DE5DFCF1FFF77D555595556AAA7D0ABC3A00009557FFFF3FFF8EA58AABAEA80425672BF7F7D55755D963C026ABDFCAAAF82A608157BD13FFDF482AFEEEAE66BFE3E0FF7F4D7F5F555000003AA777082AFA00700097BFFFFFFF488AAABAFFFEAEEEBCFDFFD555FD5540000019E9775222AACC056055EEFFFFFFF4A22EEEBEFEBFEAEFFFFEF6D775545000001D7F75DA022AFE026A5A7EFFF7DFFC140AFEFFFEFBFDFBFFF880A081580000145567575A22802AFA255779DF7FFDD5A0A898FFFEBFFF2FFE8845148000800003555F7DD8AA2295D60019FD77FFF7422AAAFFFFA9AAFF9BF028A01000800000055557555",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode176w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y23_N8
\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs534w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs534w[0]~0_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(1)) # ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a13~portadataout\)) # 
-- (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a5~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a13~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a5~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs534w[0]~0_combout\);

-- Location: LCCOMB_X21_Y17_N2
\image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0_combout\ = (\img_addr[15]~14_combout\ & (!\img_addr[13]~10_combout\ & !\img_addr[14]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \img_addr[15]~14_combout\,
	datac => \img_addr[13]~10_combout\,
	datad => \img_addr[14]~12_combout\,
	combout => \image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0_combout\);

-- Location: M9K_X13_Y27_N0
\image_rom_rtl_0|auto_generated|ram_block1a37\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"8A9AAAAAAAAAA3CCF3CCC0020AA8AAAAAAAAAAAA82ECEEAC07F15A400A1D6A8A222AAAAAAAAAA933333000208222AAAAAAAAAAAA2EA69BAF73F1A810A5FDC2AA666AAAAAAAAAAAC3CCCCC00822222AAAAAAAAAAA3EABBB8C4FF1A0021F77CAAA000AAAAAAAA6AAFC33303002082222AAAAAAAAAA8EAEEEB35FF5280626A70AAA9AAAAAAAAAAA9A733330C08820888AAAAAAAAAAAAAAA3FB5D3F5A802DF755AAA222AAAAAAAAAAA8FF30CC0000A08A2AAAAAAAAAA63ABBBB77FC4AA02F759EAAAAAAAAAAAABA99ABCFFF03022008208AAAAAAAAAAAC2ADE854FC4A802FFDDCBAA222AAAA9A6A69AA330030000202088AAAAAAAAAAA5AAAA15DFC59A087FFFD6AA",
	mem_init2 => X"84AAAAAAA9A6669FCCCC3002020880AAAAAAAAA6A7FA86157FD550023FD7DABA2AAAAAAA6AE69A9FF30C00000880222AAAAAAAAAA7FA7A9957F498019FFFDBAEAAAAAAAAA6A9A6ACCFC0C0020808888AAAAAAAAA97FAB69657DE8064B2FFDAEAAAAAAAAA6AA665AFF03C0020808222AAAAAAAAA9ACFA7A9955F59682AAFFDAAEAAAAAAAA9A5AA6AB3F0C00000022A22AAAAAAAAA90FA7696567813286E3FFAEEAAAAAAA9A5A56663C0CC0000222AAAAAAAAAAAAA8FFA79A5989440E28AB7DAAEAAAA566AEA596DAFF3C00086AAAAAAAAAAAAAAAA97BA82555900100598AFDAEBAAAA55A999A9D578CC300AAAAAAAAAAAAAAAAAAA6ABAE09560FC0132A669DAA6",
	mem_init1 => X"AA9568FBA96D95BB0C2AAAAAAAAA2AAAAAAAAAAABFFA89597028F1019F9BEAED22B5555B9AA6ED6B0AAAAAAAAAA6A8AAAAAAAA9AAEBBFB60AA4200423BDBAA592AA55D9EDABFFFF8AAAAAAAAAAAAAAAAAAAAA8A691AABC94217D7C4003199A56AA7DDF57AEF57556AAAAAAAAA5BFAAAAAAAA0A9A3FFAAC53BE82CF30C00FA7952ABFD57D9FD5DB5FAAAAAAAAA912EAAA8AAAA899FFFB8951C08A24C3002FF659A51F56FFA777DDDEAAAAAAAAA904AAAAAAAA8A26AA3BFD53288209803357D9E55DD7F7F7F557DFF6AAAAAAAAAAC9EAA22AAA22996ABAAC4E0BA6E0C30C43E9655F7FF35FFD75FD566AAAAAAAAA8D6A888A22888AFFF3C572A00080C30341FB59",
	mem_init0 => X"FF51077EBC0CE555EAAAAAAAAAA6A62AA2AA22068BB3314FA28228A00530F755D7FD63F3C00347E9AAAAAAAAAAAAAA888888881AAABF4A0EAA9AA8A02700DD950AD4FFC000C00265AAAAAAAAAAA65A6A9A886056FFBEA37A12822ABEE400DD7D975CCC333000011A9A66AAAAAAAAA6A622618859FFBEBD301FF5001C90001D57DDCF330CC3CCC3386156AAAAAAAAA98A689A2896AEBEA00C0A9B80AACC00FF55FFFFCCCCC3FF3CCF8556AAAAAAAA9A2989A18106AABE83468F3E29D98000FD555CCCFFFF3FFFFFAE317AAAAAAAAAA98A98181855EFFFAB066FDD4C79C0C1FD5FFFFFFFFCCFFFFEBACE96AAAAAAA99A9A21840054AA7AE10ED42101E8002AB57F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0_combout\,
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y23_N4
\image_rom_rtl_0|auto_generated|mux2|muxlut_result5w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result5w~1_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (((\image_rom_rtl_0|auto_generated|ram_block1a37~portadataout\)))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & 
-- (\image_rom_rtl_0|auto_generated|mux2|muxlut_result5w~0_combout\ & (\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs534w[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|mux2|muxlut_result5w~0_combout\,
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datac => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs534w[0]~0_combout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a37~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result5w~1_combout\);

-- Location: LCCOMB_X21_Y20_N28
\spi_data[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[7]~3_combout\ = (\state.000000~q\ & (\rst_n~input_o\ & (\spi_data[7]~2_combout\ & !\state.STATE_INIT_CMD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.000000~q\,
	datab => \rst_n~input_o\,
	datac => \spi_data[7]~2_combout\,
	datad => \state.STATE_INIT_CMD~q\,
	combout => \spi_data[7]~3_combout\);

-- Location: FF_X24_Y23_N31
\spi_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector95~3_combout\,
	asdata => \image_rom_rtl_0|auto_generated|mux2|muxlut_result5w~1_combout\,
	sload => \state.STATE_SCAN_DRAW~q\,
	ena => \spi_data[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(5));

-- Location: LCCOMB_X23_Y17_N4
\Selector93~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector93~1_combout\ = (\cmd_idx.00000101~q\) # ((spi_data(7) & (\Selector100~0_combout\ & \Selector96~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(7),
	datab => \Selector100~0_combout\,
	datac => \cmd_idx.00000101~q\,
	datad => \Selector96~0_combout\,
	combout => \Selector93~1_combout\);

-- Location: LCCOMB_X23_Y17_N30
\Selector93~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\cmd_idx.00010000~q\) # ((spi_data(7) & ((\cmd_idx.00010010~q\) # (!\WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \cmd_idx.00010000~q\,
	datac => \cmd_idx.00010010~q\,
	datad => spi_data(7),
	combout => \Selector93~0_combout\);

-- Location: LCCOMB_X24_Y16_N10
\Selector93~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector93~2_combout\ = (\state.STATE_SET_AXIS~q\ & ((\Selector93~0_combout\))) # (!\state.STATE_SET_AXIS~q\ & (\Selector93~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \Selector93~1_combout\,
	datad => \Selector93~0_combout\,
	combout => \Selector93~2_combout\);

-- Location: M9K_X25_Y10_N0
\image_rom_rtl_0|auto_generated|ram_block1a39\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"5565555555555C00A08880020AA8AAAAAAAAAAAA800000000A82A7BFF5757575555555D555555602022000208222AAAAAAAAAAAA20082002A282D7EF57555D5599955755D55555020808800822222AAAAAAAAAAA000002288A825FFDD5D555D555555DD75DDF550022202002082222AAAAAAAAAA80080002AA8AD7F9F7FD55DF6555D577777575800020808820888AAAAAAAAAAAA0000A0AA28A57FD55D55D5555555F5F7F755540820880000A08A2AAAAAAAAAAA800022AAA8B55FDF55F7D77D75D55F5D5D7754022202022008208AAAAAAAAAAA280A80A888B57FD5577557F7555DD5FDFDF754000020000202088AAAAAAAAAAAA0000AAAA8A75F755555DD7",
	mem_init2 => X"595577FFFFFFFD6000002002020880AAAAAAAAAAA8208A2AAA2BFFFDD5755F5F5555777DFF7FF560820800000880222AAAAAAAAAA8208AAAAA0B77FE7D5555F7D557DDDFFFFFFD50008080020808888AAAAAAAAAA8008AAAAA217FDF5D555F7F555577F7FFFFFF5220080020808222AAAAAAAAAAA2008AAAAA8AFDFD55D57FF7DD5F5FFFFFFFF750080800000022A22AAAAAAAAAAA008AAAAA8AAAD7D5D57F77555DF55FFFFFFFD000880000222AAAAAAAAAAAAA80008AAAAAAAA83D75557FF755DF57F57FDFF7D02280008AAAAAAAAAAAAAAAAAA82022AAAAAAAA8B775D5F7D57DF5FDFFFFF7FDC88200AAAAAAAAAAAAAAAAAAAAA8008AAA8A82AA35DD57FFF",
	mem_init1 => X"D5557D5D7FFFFFD4082AAAAAAAAA2AAAAAAAAAAAA2000AAAA5FF02AAF5757FF7FD55555D7FFFF7F60AAAAAAAAAAAA8AAAAAAAAAAA00000AAFFFFDAABCF75FFFFD5F775D57FF77556AAAAAAAAAAAAAAAAAAAAA8AAA2800AA8F6020AAAAAFFFFFF55555775775FFFFCAAAAAAAAAA80AAAAAAAA0AAAA000A0A8C3D71AA8AAB5FDFDD55555F7757F5FF4AAAAAAAAAA882AAA8AAAA8AA00022AAA95DF798AAAB55F5F5D757FD75D5FFF77AAAAAAAAAAA22AAAAAAA8A2AAA2202A87DD77F082AAD7F7F757D55557FFF555DAAAAAAAAAA202AA22AAA22AAAAA080AB5EFBBDA8A2E97F7DF5D5555F7DD777FDAAAAAAAAAAA2AA888A22888AA0280A87F55555200A8B5DFD",
	mem_init0 => X"55F7557DCAA23FDF2AAAAAAAAAAAAA2AA2AA220A80086A82F7D77F50AB22DD5D7D5788020000880FAAAAAAAAAAAAAA888888882AAA80A283FFFFFD5A8E8AD7DFF5D60000000002AAAAAAAAAAAAAAAAAAAA88A0AA8000A0AF77D77F483A22575FFDE000000000022AAAAAAAAAAAAAAAAA22A288AA0043C205600A5DE97002575F7500000000000008A2AAAAAAAAAAAA8AA8AA28AAA003D8835FFFD5DD6A8A55D5D4000000000000008AAAAAAAAAAAAA2A8AA2820AAA8088A3DF7F7F77C80A57FDF000000000000000028AAAAAAAAAAA8AA82828AA3000A8ABFFF7D5D720ABF77FC00000000000000002AAAAAAAAAAAAAA228800AAFD813AA37D5D575602B7FFFD",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0_combout\,
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a39_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y11_N0
\image_rom_rtl_0|auto_generated|ram_block1a23\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"5D555555FC8000A008000000A8000020800001DF5CDF2200200020000001FD5555557557FF0002A020000008200008000000088074DF5500820800200803F55575555557DF00228000020022800000020200008000D74300000080808000F5555555D557F7C08280200000888000002000008D57D0D70020220808080002F555DD55D77FFFF4A28000000000A0000200200885D755557020000002008228FD555555755FFDFE0020000800028000202080002A01FC5555E0820880020002FF555557557FFD560000800000220000000000803F2001557D00002000080008555555555557D7F80002000000008000000200009555D157002020000082000A5DF7",
	mem_init2 => X"555775577FD000800080000800000800000002BFFD5F7722020202088020555F55555555F7DA000800000000000000000220720208A0D54080002082000A555FD55555577F7820000220000800002080002055FF80F4460008080808A088D557555D5555FFFE8000000002008000000008020FFFD7757422008002220200FD57D55555757FF420080020000002000080800000A010001D62000020828020D55FD55555557FD7800000000000000000000023D70030000700880202228002D55FF5D5555777750000080000000000002000AB55FFE4001602A02020028882D555D5555555D557400000000000000000000202A8FFC4041582820800228222D575",
	mem_init1 => X"7555577FF7576000880000000000000088A3DFA8B40015A22880000AA0AA555555557D77DD57E8028000000000000800082DFDF7C4104E212A000000828255555555F55775D74000000000000200002222ABDFD56405147718088000A8BB5555575555F5FD776200880000002000000028ADFFFFD70055D7D82000A2895D555D555555DDD7FDE8A200200800000002000A2FFDDDF41117D7D20A0088D5F555555555D7FD555FFA8800000020000000008A1FF5D5770D7D75DA0822817FF7555DD55557FFD5D7D2A202000000000000022A7FFF5774C75D7D6A200A1F5F5DD55555D5FFDDD57DFEAA0028000000000008AAFFFD5DF7DC1D5FDA8081F7D5F5F5D7",
	mem_init0 => X"5557D7DDD77DDFAA0000000000000208A3FFD5F5E434D5DD5A48DDFD7FFDDFFF57D5DD5DDF5757CA228A080802008002ADFFF7D56C00D7D5532BDF5FDFDFFFFF5F5F57DD57555575562880AA0000080A8FFF7F5555FC6DDD5BDD777F7FFFFF7F5DD575DF7F555557F5EA02AA2800020A97FF5F5DF7DD7F7757DF7FF757FFFFFF5577FF557FD5577D7FD5BA002A80222ABFF5F5FD77FFD777F5D7D7FF7FFFF7FFD5F7DFF55755777755DF556E82A080AABFF7FFFD55777557D757FFFFDFFFDDFFFFF5FF7D5FD55F775D7FF7F76022200ABFDFFFFDD575D555D7D5757FF7DDDDFF5FDD7FF75D5555DD757FF77DD6D40AAABFF75FFD557D7557555557FFDFFDF7FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode205w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y9_N0
\image_rom_rtl_0|auto_generated|ram_block1a31\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"C00000000000004302AAAAAAAAAAAAA28A2282AA8A300A1D777D56A2232EB7D5A00000000000000000AAAAAAAAAAAAAA282020A8089000777FFD80801E383F55080000000000000000AAAAAAAAAAAAAA8002008855700A57FCA2AA222048B7FD200000000000000000282B40AAAAAAAA022082280B51520228888800A9823FD562000000000000000028ED552AAAAA2080AA2AAA889B20028AA8AAAAAA881FF5E80000000000000002086D572AAAA828AA82A28808908000220AAAAAAAAABFF56080000000000000000077D562AAAAA8802008805551520028A2AAAA00ABDFF5F20000000000000000083FF7FAAAAA0220002A281F51500008A02AAA80A8DFD5",
	mem_init2 => X"708800000000000000023FFF5FDFF2A0088080AAA091020082000AAAAA829775F8A000000000000002083FFFFFF554A0208020015553000022A00AAA8A08F7FDD22A0000000000000002BFFFFFFF7DA20022080177515000888822AA8800FFF5F20000000000000000021FFFDFFFF1488888202AA8115400820002AA2800DFD5FAAA80000080000000028FFFFFF79D480000002800100000200000AA80087F5578200000008800000002AFFFFFFFDDC00000002575D0000008A000AAA808F755F0202000002200088000AFFFFFFFF7F20000000D57515400000000AA88007D557A8222000002A08AAA0083FFFFFFFFF80000002AA81154200000002A2800FD55",
	mem_init1 => X"7A200800002002A2AA8002FFD5555F5100000005C21000000020002A8A00DD557220A08000202A82AA800A7FDFFFF5DF80000025755140000000002A8880DD555F000000080022822A80089FFFFFFFD50000002A05515400000000288000D5D55D2002000000AA82AA80003FD7FF775500000022A81000800000020AA800B57557F8200002028A82A8A0002FF55D7DD50000001550900080000000088802355F5D7CA0000088880A2AA0000BDF77F577000000155D5150000000020A8008B5757555C00008002A22A2A00001FFF7F75D800000283D5155000000000200023F7757DD72020000A0828A800082FFFD5755008020828A100000000000020000B557",
	mem_init0 => X"5575D408000000828AA00000AAAA2A1D8000007FDD7800A000008200000035575555DD220000000A2A20000020A00200000000B7DD51D500002000000002375FD55577C0000000088A80000002000000000002AA82F15500000000000000B7D7DD75F77CA0000022A80000002000002000000008087700208008800000003D57F575F7D5C0000002A280000208000000000002FFD4F500200200008080003D777555F757DE0000282A8000008200080200000A5DDCFFF5C2000000080000955D55575575FE80002AA8000000280000000000280A88F755C0020008000008BD577557D55FF480002AA000000200000200002021C200770020000200820002F775",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode216w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N30
\image_rom_rtl_0|auto_generated|mux2|muxlut_result7w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result7w~0_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a31~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- (\image_rom_rtl_0|auto_generated|ram_block1a23~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a23~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a31~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result7w~0_combout\);

-- Location: M9K_X25_Y15_N0
\image_rom_rtl_0|auto_generated|ram_block1a7\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"55D555DD555557555557555FF5D5DF5FFFFDDDDFFFD7DD575575DDDDFFF5DD5575FD5775555555F7555DD5757557F7DDFFD75FDDD7D75F5D5F55DDDFFFFDF75555DFD55755555555557DDD75FD5F7FD7FF7775FD7DDDF75FD5FFD77FFFDDF7D555575FDD555555555557755DD55F7FDF7FD5557F755D77555D57FF7FFDF5FF7D5D57F5DF555555555577D57555571FDFFD55577DF5F7DFF5FFFFFFFFD7F5DF55D55757D7DD5555575757D75555771D5FFD55555FD7FDDD5F5FD7FFFFF7F57DD5D575F75FD5755555555557D55557055FFD555777FFD7575DFF7FFFFF57F5FF555D57D5FFDFFF55555D555D55577741DFF75D5DDFFDFD5777FDFFFF7FF7F77755",
	mem_init2 => X"5577557FFD77DD55555555FF55F729D57F5F5557FF75577FDD57FFF7FF757755F55F55DFFD77D5555D55557FFD77205F75FFDDF5FFFF7D77FFDD7FF5F5F55755F55FDFD5FD755F555555557D5DD7083F5FFDF75575FF5F77FD5557F5D575555555DFFFFF775D7F5555555D55DFDF080DDFFD7777FDFFD777FDD55F7755555555DF555D7FF755D5D55555575D5577CA00A031347FDDFDDD57FFF5F7FF55555D5757555D7FFF7FDF55555557FD7775F00C92AA22AA97D5FD57DFDFFFF7555557555DDDFD55FDFFF555D5577DD5F5F7FC926AAA8800D77F777FFF5FFD7F5555DD555FF5FD7DF77F57555555575577FFF5F082A88888B755D55FFFFFF5757D575555",
	mem_init1 => X"FF5D7FD57555555555555DFDDF777D7A888AA8A9555557F7FDDF7DD5DD755555DDDFFFFFD555555755555D77F755F378AAB02A00DD757FDFFFFDDDF7F55755577F57775FD55555555555755DDDD5DF7D013F2AAA157DDD7FFF7DFFFD57FD7DD7F557FFF75555555555575D557775FFFF5D7D8AE057D775D5DDFD55FFFD7575F55555FFFFD555577555755D557DDD5F53D851DFEA177755D77FDFFFFFFFFD57F55D7FFFFFF55555555555757F55555FD53862FF5DFDD5555D57FFD5F7FFDFFFD5FFFFFFFFD555557555557F755F55555DEAAF57DF7FF555DDF5FFF7FFFFDDFFF7FDFFFFFFDDD5555555D5FDFFF5555577F7F77D75DF555D5DFF7DDF7FFFDFFF7F",
	mem_init0 => X"F7FF7F7557FF555755DDDDF7FFD55557DD77F555F55555D55D57F7FFFFFFFFF7D75FDF5F7755555DD55557D5FF7D5555557F5DD5557555555D577DD557FFFFFFDF5F75F5F7D5D555555DF75D5FFD555DD555555555555555555FDDF5DFFFFFF7D5FD55F7FFF7555555D755775F5755FFDDD5555555555555557FDFFFFFFFFFFD755D57FFD5F57555555DD5D555DDF7DFF7FFD5555555555D57F5F7557FFFFFFFF557DDF7D57555575D5D555DD55FDFFFF57FF555555FF7F7DD7DDFFD7FFFFFFFF555575F5DFDD5555555D755555757FFD7DFF55575555777FFF5FFDD7FFFFFFFDF577FF77FFFF5555557575F5F5FDFF7F57FF7555D55F5FFF7FFFFDFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode176w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y17_N0
\image_rom_rtl_0|auto_generated|ram_block1a15\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"7D7D5FFFF57D5DDF557F7D5555DD2AA8D5F7FFF55755D75F555DFFFFFFD75F575FFDFF7FDFD55555757FFD5F5D555AAA7DD5DFFD557F7D575557FFFDFF5757D7D77FFDD7DFF555DD7575D55FF5D5D6AAFF5DF77D555755F755D55DFFDFFFDDDD55FD75FF7DF755775755575F5FF5F50AFD7777DF5575FF77D7D7DDFF7FDFD5575FDF77FFF7FF557DDDDD5D57FDF757EAF55D555F7557D57555575DF7F57F555F77FDF7FF5FF5D5D777F5755D5DD557FAF5D55FFD555D575FFF5FF75FFFFD5F577FFFDFFD5FD5D57777FDD5575F7557775555F7FF775DD7755FD555DFFFD755555FFFFDFD7FFFD5F5DD7D55555DD5D5D5555F77F5D75F57557FD77F57FFF5D555",
	mem_init2 => X"FFF7FFFD75555577777775777555F57757DFFFDF7D575D57D775557FFFFDF7D5D7FFFF7F5FD5F5FDFDDD575575557D75D77577D57FDF5555F55DD55FFFFFDD575DFFF5F5F7DF555DFD7555F5D7F7D555D5D7F777575D55557DDFF7DF5DFFFDD7D55F5D777D5D55D7D5DD5557577D5D5555D775DFDDDD5557FD5777F5D55F755755FDFDFDD5D755557DD7D5D5DFF5F55DD555777DFF557F5DF5555757F577DD5557FDD5DF75755575DDD5555555555DFF57757FDFFFF57555F7F577D7FFDF7D555DF5FDFD55575555F5755DD757D5F5F555D7FFF57F7FDD555557FFFFFFF757555DF5F7DD555555555DDD5755DF77D5DD757557FDF7FDDF77DD57D7FFFFDDDD55",
	mem_init1 => X"5757775775555555D7557D55FFF75DF557577FFF55FF7F55D555FFDFFFFDDD555FD5F77775555755757557D5D575F75577775F57757D757DD555FF5D5D5DDD55575DFF7F5D55755555D555D57575555F7DDFD5575F7DFD55FF5557F7D7F75D555557D57DDD55FD55557557D7F75D7D555D5D75755DF55F55D5F5F5DF755D77557555FF557555F5555555D5755F57D755555FF7755775D5F5D5D575F57575DD55DFDFFFD7555F7D5D555DDF57FFFD5575555DDF55F57DD7F7D5555FF7D5557D55FDF5DF7D557F7F555555DD5D5F55F5D5D75F7DD57F5DD77FFDF7555FF5755555FFDFFFD555D5FD55555555F7FF7D75557D55D795D57F5DFDD55F7FFFD7557555",
	mem_init0 => X"FFF7D5555577F5555555DD5577F55FDDDD5F777555DD57FF776D7F57FF555D55FFD7F5555557FFD55555575DDDD55E57557D5D5D5D7D55FD555F5FFFDF555555FFF7D555555D7F5555555D55DDF5D7DFF55F5D55FFD7F5DFD5D57557FF5555557FFD5555D57FFD5555555557F5D5DDDFDDDF5D5FFFF555DDD55577575D555D5557FFD555555FDF5555555755F57D555DFFF5D557FFDDDFF5555FDD75555D7555777FF555755D5755555555D755D557FDDAF7557FFFF55F5755575555DD57DD55575F555555555F5555555575F5DD577F75FFDF755775F5FD557D55755555DF557F5D55D555557D55555755D755D7D77FFDD7D7F6AD555DF77755FD7DFD577DD5",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode194w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N24
\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs630w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs630w[0]~0_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(1)) # ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a15~portadataout\))) # 
-- (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a7~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \image_rom_rtl_0|auto_generated|ram_block1a7~portadataout\,
	datac => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datad => \image_rom_rtl_0|auto_generated|ram_block1a15~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs630w[0]~0_combout\);

-- Location: LCCOMB_X24_Y16_N8
\image_rom_rtl_0|auto_generated|mux2|muxlut_result7w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result7w~1_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (\image_rom_rtl_0|auto_generated|ram_block1a39~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & 
-- (((\image_rom_rtl_0|auto_generated|mux2|muxlut_result7w~0_combout\ & \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs630w[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|ram_block1a39~portadataout\,
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datac => \image_rom_rtl_0|auto_generated|mux2|muxlut_result7w~0_combout\,
	datad => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs630w[0]~0_combout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result7w~1_combout\);

-- Location: FF_X24_Y16_N11
\spi_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector93~2_combout\,
	asdata => \image_rom_rtl_0|auto_generated|mux2|muxlut_result7w~1_combout\,
	sload => \state.STATE_SCAN_DRAW~q\,
	ena => \spi_data[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(7));

-- Location: LCCOMB_X24_Y16_N2
\Selector94~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (spi_data(6) & ((\WideNor0~0_combout\ & ((\cmd_idx.00010010~q\) # (!\state.STATE_SET_AXIS~q\))) # (!\WideNor0~0_combout\ & ((\state.STATE_SET_AXIS~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \cmd_idx.00010010~q\,
	datac => \state.STATE_SET_AXIS~q\,
	datad => spi_data(6),
	combout => \Selector94~0_combout\);

-- Location: LCCOMB_X23_Y16_N24
\Selector94~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector94~1_combout\ = (\Selector94~0_combout\) # ((\state.STATE_SET_AXIS~q\ & (\cmd_idx.00001011~q\)) # (!\state.STATE_SET_AXIS~q\ & ((\cmd_idx.00000101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00001011~q\,
	datab => \state.STATE_SET_AXIS~q\,
	datac => \cmd_idx.00000101~q\,
	datad => \Selector94~0_combout\,
	combout => \Selector94~1_combout\);

-- Location: LCCOMB_X24_Y16_N0
\spi_data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[6]~feeder_combout\ = \Selector94~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector94~1_combout\,
	combout => \spi_data[6]~feeder_combout\);

-- Location: M9K_X25_Y14_N0
\image_rom_rtl_0|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"55555522AA22A7AA2081600AAA5420F57CA8D0010015B40B557D5559FFFDBBF3555555EA8AA8A1E2A20910A0A8080BF7D577DC288A151630A082088FEFFCAE005555D540AA2A88A220A91020A80002F575DFDD4AA8F00F20955F573EFB98EE8055555D4522AA2A2022298008800400F5557F7D7C84403C2A1D568A6EE5FCFFE85555D545022A8282A8A39020000460F557FDFD7418F6640A0003AABBFFF1FFCD5555D77D448AA20A0A802200000460F557DF775C28502CA0A0E8BAEBEFF4FFB05557F7C22B88AA2AAA0B2280000458F557FFDD730050852200A2ABBF57F1FFC1F557D5DDF555A8202A228822021414B55DF7F7DC14521D88008AAB3FF7F7FFCD",
	mem_init2 => X"555F757D541542A0AAAA235434545E3FD5F5FD5700409C8002AAAAF3FFF5FFC157557DDF75D556AAAA8A8A7B7D545505DF55775504D2955800206AA1F5F55FC3575FDF50A003D8AA2A8A2A7955505541F555055530DD1C5000157F5FF5755530555FFDFF75D45FAAA2AAAAFD9D505558000000040495555401D55F7D55D55D3355F55D7FFD7F81222A2AAAF75FD41555D544418000155474000477FD57755D3F5D7D7D55FCD595A2A08A8BFEFFD405514555D555C885745020157DF755D577C37D55FFF55E5D522AA22AAF79F7DC01C5175D57DF821D5150020EFD7FF555DD4C5555FD7DFEF8A8AAA888AAAA7A9C0005D77555D56AF552A0002DFF75F557555D",
	mem_init1 => X"D5577FD7FA2220228AA808AAAA29000755D5555E2BF740080227FDB77D75554455FFFF78EAAA80AA8800A82AAACF44057745D5F582FF0020000269D7D55755537FD77BAE2A82088A0200200AAAB140005440DDD5D55502800082809F57FD7DC2F557FFEAA8088858880A2800AAECD0000000759FA9F5822A1202AAAABD7575F05555FFA8A82A207802282820AABBFF048D048A95E9D40228F020022ABFFD57E05D7FFFAA0A8800228000A22A8AABFFC06D1DB58202540AA244002A0ABFDFFF80FFBFFA880AA22008000097622AABFFF0955AA289F7D0002054000802ABDDFFA2ECBEAAA05540002200A22DFD7ABEFFDFD4AA3ED7750000A200822082AFDFFE27",
	mem_init0 => X"F5DFAA540156000A8088AA87D77AFFEC3577DD70D000002AA2A80002ABFFFA8DDF5F7755D400800880002555AD77EFBFFFD5FDDD402082AAA2A0095557BFEAA9DFF755F155408022000AA9577557BFB33E8BC3F80008282AAAA0D75F5EFFAA2FD5F5F5D2555600000082095575DF7AFFDFBBBCBA0002AAAAAA8BDF555EEBCA20755FF755815000000008801D575FFFFFFFFD7BA8000082A2A810D5557EAAA208F557DDD7D1704802088A001415F57FD7FFD5CAC80057577F68D75554108B2020F555575F552888220800A20D5D565FFFDFFFD72095510617D5F7DD5FEAA8A288DF577E88B556C0288002895555D77FDFCD57DCC055D5D4F5F5F5FD552AAA2000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode176w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y20_N0
\image_rom_rtl_0|auto_generated|ram_block1a14\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"05555FD0F557708A00157600154055FF9FB7FDFE08A98F75000205313FF55F57A3B57DE098000B002005F00ACB55657FFDFDDFF222877D000028009CFF5557D729575FF9D75FF0882015C00AAD7751DFF4DDF77E28AB7800880A8037D77FDDDD295DF7D3575D54220203020AF57F545FD9F777DC8A0B5000014023BF3DDFD557221DF0825D5550288894080B5DDD557FFF7FD55C8AA9F00AA9555C53F77F555F8A95884357DF508222BC200F7F755EBFE7FF5FC2A8A308A00D55555EFFFF5F5700A020020000082222888005F1D5756E7FFF020208A7008A84210ACFFFFFD555A00022827DD554A088280007D7755501FFD0200A082108AA97555D7FFFFFD55D",
	mem_init2 => X"0008088285451822A2222088A85D5D52FF80F488088802A85775557FFFFFF7D520002240A5CB58A8A8882747D7F555575E7DDF6004A30A03F55D5DD7FFFFFD5582001D0A08100008A820854F75555DD5C4CD55788940080C5DD555765DFFFDD72AA0550801740082A0A85FD5D5DDDC77D57DDDD1207522175D55555FD57FFD5500005D520A5180002880555DFF57577511FFF77E043F855DD57575F555FFFD55A00084408A030020888015220A80197DD57F7F30543F755577F555555FFFFF5DA9505452A0040000A0225555F57D57DF5DDFFFE68085D515555D555555FFDFF5A5405142A014000008880FD75DD777F5DD4F57EA0803D0AAA085755555FFFF75",
	mem_init1 => X"A84015D68A200000820007D7D957F7CDFD4ABFFD4A1F755557D7555557FFFF5DA2C1520702220500A02000015555F7F7DDDDDEAAAA8DF55D555755755FFFFD55A020550B12221D200080015757DD7FFDD7757579A08FFD5555CD5D5577FFDF5DA809450198AAF50020200D5555F5FD7FF7F7DF4AA657F595575D5555DDFFFFD582A802F56A81E78200801FD77857F7FF7FF5575AA9977FF5D5D55F5F5F75FF5D20035DD6AAABDD008228F5F5FDDFF7FFFDD5DC7A5E9F5F7F555755555575FFFF02099FE2AAAFF8888888885000024EFF7DFCB9A290EF7FBF7D77555557F5FDDD800AAFEAAA057F288000575555D7C7FFD7FFDEE46F91F7FDD5555555777DFF7D",
	mem_init0 => X"02082AA0A2A2ADA2022081F7555FC4F777F5D5AAAA67DD580AB0055557FF7FFF80280A88AA94FD20808200597F7D71FDFFD7F2A1A393DF7D5555555577F5DFFF60082AAAAAB59DA2220008000D5D50FD5FF5F48800655F5F55D5755D7F755FFF5A82AAAAAA8D76AAA08202015F7570B57DB5D0000D4DDF55D555557DDDF57FFF558028AAAA26BB820A02222B555548FC30CF5800005575F557755557FC7DFFFF41200AAAAA8B7588820A0289F55DC8CFEF0F5800010CDFF77555575DDF1FFF3F55C2A2AA882AAA8A200320A2FFD508E0D52D7208800157F55575557544C3BECC1542A82AAA8AFDA280880282AE6128FE2203528BF8A71735F575577DFC42FB90",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode194w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N12
\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs582w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs582w[0]~0_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(1)) # ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a14~portadataout\))) # 
-- (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a6~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a6~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a14~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs582w[0]~0_combout\);

-- Location: M9K_X25_Y24_N0
\image_rom_rtl_0|auto_generated|ram_block1a38\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"8A9AAAAAAAAA2B88A288800000000000000000000197F7D00AAFD86AAA000AAA222AAA2AAAAAA92222200000000000000000000009DFFDD2A2AFAA9AA0000AAA666AA8AA2AAAA8828888800000000000000000000B7DDDD88AAFAAAA80000A2A000AA228A220A2A822202000000000000000000009D777E2AAADAAA680080A209AAA2A88888A8862222080000000000000000000057FD5EAAEADAAAA000002AA222AA0A0808AAA8AA20880000000000000000000865DDD6AAABEAAAAA002028828A2AA0A2A2888A8AAA020000000000000000000095777CABAB6AAAA00000A80022A22A020208AB22002000000000000000000000A777FEAAAB58AAA80020228",
	mem_init2 => X"84AA8800000002BA888820000000000000000008081738EAAAB60AAA800000A00AAA888200800A9AA2080000000000000000000008158022AAB68AA9A8000A082AA82220000002A88A808000000000000000000028150828AABE2AAAAA000080AAAA8808000000AAA0280000000000000000000201178022AABF822AAA80200822A0A000008000AE2A080000000000000000000025158828A8B3EEEAAA802088AAA20AA00208802E8088000000000000000000000A9F820A232BBFAAAAA02008AA20000A80828A2EA280000800000000000000002A5750AAA2FFEFFEAAA80082A8200A200202A020882000000000000000000000801D172A8D577EEEAAA82008",
	mem_init1 => X"2A800022808A2A22080000000000000000000000155542A2BA0056F7AA8A808A8A80000280088A020000000000080000000000200155548F808027B6BA8A00A2AA02200A802AAAA10000000000000000000000082235552B0BFF57B5568020A8AA00022288AAAA01000000000A0000000000002055D703AFBEAA6DE7956A0A28AA8800A88AAA822900000000025500000000002217D552AFEA20867655EAA802A8482882A22AA888000000000255400000000008001576AF82288077E6FAA28A008080002AAA8AA8000000000015000000000022801515BCABAEE256599682080A22AE0A28A0A80880000000003280000000000057558ABAAAAA2A5EF5F6A2A0",
	mem_init0 => X"AA04F02A375940800000000000080800000000080D5596BF0828800F5EEDAA0800087C02000088B0000000000000000000000020003994FC002001455A758A0AAA8308800080008A000000000008A080200080A855D90C90A82881554FFD0A2A28388822200002202088000000000808008200A2FF1812FABFFFA0160FFDCA0A008A22088288800082A800000000020080200028097804FCA02028001BFD2A808AAA888882AA28000AA800000000200202020208003B04BC208080003FFDAAA88888AAAA2AAAAA790280000000000200202020AA4F7900FE802211003FB6AA2AAAAAAAA88AAAAB7F4028000000022020020800A90074C6FEA95F7C01FFC2AAA8",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0_combout\,
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a38_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y16_N0
\image_rom_rtl_0|auto_generated|ram_block1a30\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAB15EAA00200000202020822828A000555680055555F3C73EA80DA8AAAAAAAAAA8E32080008000000888202020AA6605020800024450C347CA00E6AAAAAAAAAAAAAA8800EFB8000220820002008B0007618001E2AA6D73174AA8DAAAAAAAAAAAAAAAAA0DFE958008082202208228D40805002888883CAA5FCA80DAA2AAAAAAAAAAAA222BB00A4000222080AA2AAA80040E828AA8A8A2B7DFC2A0D428AAAAAAAAAAAAAA8FB0007C022028AA02A283D7070000220A88AAAEAF4AA0DCAAAAAAAAAAAAAAAAA18080BC000AA8802008810008010028A2AA2A00D40AA08B0A8AAAAAAAAAAAAAABC8800FFFB80220002A2BC0040C0008A028AA80ED2A80",
	mem_init2 => X"D68AAAAAAAAAAAAA2AABC02200C087A0088080AAA00A010082000A22AE81F22057A2AA2AA88AAAAAAAABC2A2B00A01A0200020040008000022A00A2A8A0F92A805AAAA8A8AAAAAAAAAAAC82AE308A2620022080C00040D00888822A28C4F9AA065A0AA88AA22AAAA22AAEAAE00BC2E800888202A280801008200028A284FFA806D5A8A82A200208AAAAA7028280AE21800000020000100002000042A8047DA00C598002022000A2022AA538200C00A10000000200009000008A000AAA937F200099820022A800008800A90B0820000000000000000000100000000AA893FFB00A56A322008000080002ABCEA0AA888040000000A280003100000002A2B3FF800",
	mem_init1 => X"CD9008000000020220082F2E00000A8400000020100B00000020002A8B3F3B328F98A080002028028002A9202C3008A86000221000843A000000002A88FFB8C2C86A0000080022002000AAC30888002042008821D00401000000106880FF9320B4DE02000000A8020808A3C3200082A020220022A80515400000010AA84FEC0BEB4EA02AA2028802200A0AF008082A95000002000405004000000008893DF000B1515BA2008888082802228CDC47FD622AA2A800000407000000050A83377003C1D51AA00000202202008834CF07F7686A8A0009400400000000001207BDE90C8F7555A2000000808802AA6300015577C0609A8282075D0000000002003F7000",
	mem_init0 => X"B2157F668AA8008208008220B3BBD57D628A2A00000500500000410441CFE00CFB1540D9AA8A800A2202A88020A08980A0A28842000400000010000003FDE2E07E154036AAA8A8088880A200022002A28A2ABAAA850C00400000000103CF7208301D40035A8A88222002A20000000A98A2A8EA753600A01040044000073FE808C815C83F3A80A0022280880200002AAAA8A2A110010080100100014143FFE80040014835412A20280A82A2008000A6A9228EA900030000010000000403FFF000400902DD554A2028A802A80028802AA8A28AA808860000000101040007376800500D80F1DD602A0AA002A0020000A9AAA89A9015020800100001004100FFA202",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode216w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y12_N0
\image_rom_rtl_0|auto_generated|ram_block1a22\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"A000003F7D6AA820080A8800A000AA9A4AAA8C00010051401000100011FCA820480020EB55482A80200A8008220086AA288AE8CD030000C04104001044FE2002480000AD45E892880209A0228008AAA9A9BA86800B0034400000414043EFA00A5800802D543A6288202A808880082A9AA2AA6000070008101104040403FDA00A50008285D55262AA080AA000A80229AA9BA6400000800D500000010045D7A802A80020B5D55580A88826800280021A926AAA2A0C03A800104104400103FDA80800020097D559802A882A80220800AAAAA86A8050A2A002C00010004413F7008B20000005D55EA08ACE2A20008200AAA9AA8A4000048800101000044133D5F00C",
	mem_init2 => X"A00220817556AA80AAAA20082000A6AA2AAA294000004451010501044F1FC33000000003154DAAA8AA2A20002080AAA2A99A0529975D00804000104133F57320000000017D4D9A88A21A200802089A48AA9A000077019900041404145F77B2BC2008000255736A88882A020060A22AA2A6AA1055000009110040011139FFA2AD500000201DD79AA6A89A8000AA08824A6AA3035FCF55E011000110414FDFB2B0D2000000D55869AA88AA0000A888A08AAA9810DA0FD754C0440501117FFF802054003C0208015AAAA8A8A0028888089AAA5415551355610150501039777F80CA5800160080095AAAA8EA2002A00220AAA9A27700B3D14041410400DD7DDF8E0A",
	mem_init1 => X"00008D5AA20C769A68AB88088EA002AA665E50D8435DC451544003E55F5700884000DC7E88CD3DA9608A200AE80886AAA69A11E0334F1575550CCFBF7D7F0EA24021551AA2335A9AA8B8B80B8AC00A99997D0E4713F0655D67F44FFF55C72E2AC0037556A87575AA68AB2222A0002AAA96F8B3C480FF05B527933F5D540B8B822025D57EA7DD76598A2E28820C00A9A6A570FE6683ECC6552DF5FF750029C2AA20A59B5EB7575DEEE2AB8C2E8C00AAAA67BEAA6BC0F0041725B7DD5400E43BA20AB55DDCB5D74FD98AE208C000002A999FBBB7AEC330045515D7F5427FD83AAA0215F716AD7CD755B3ABC00CC000A6A6776FFFF8A003C4150557560DFFCF0F38",
	mem_init0 => X"0A85577CAA8B45D5FBBA23300C02ABAEFDBF7AE013C30F540535037FDD3730000053DDF69577533D5575BB2B32026A69FEBFCF88317F0554047607F7F4B11100827D5770BD51583C01577F55E30AAEA7F5FFFE2228033F544400FD7FF75924020555775695D55C0F60175555D78AA9A7FBFDCB2C1FDD4DDDC017FDFFFD36309AA955775EB55F5A2A3F8045555562999FF7FFB2F288683DD54354DFFFF3CEC0EE3515DF7B9552F2A200D40011555A6ADFFDFCBFFE2AD28FF775EB57FCFD7B98EA1594FFF235FF52220817DC2015559AAFFFF3FFF2EA968F557E88838D5389D9BF1FDD7D68F5D65CA820975DFF8101A57FFFC35FF2A29FAFD70088BC574275F7FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode205w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N18
\image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~0_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a30~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- ((\image_rom_rtl_0|auto_generated|ram_block1a22~portadataout\)))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \image_rom_rtl_0|auto_generated|ram_block1a30~portadataout\,
	datac => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datad => \image_rom_rtl_0|auto_generated|ram_block1a22~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~0_combout\);

-- Location: LCCOMB_X24_Y16_N4
\image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~1_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (((\image_rom_rtl_0|auto_generated|ram_block1a38~portadataout\)))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & 
-- (\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs582w[0]~0_combout\ & ((\image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs582w[0]~0_combout\,
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a38~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~0_combout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~1_combout\);

-- Location: FF_X24_Y16_N1
\spi_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_data[6]~feeder_combout\,
	asdata => \image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~1_combout\,
	sload => \state.STATE_SCAN_DRAW~q\,
	ena => \spi_data[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(6));

-- Location: LCCOMB_X23_Y17_N8
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (bit_cnt(1) & (((bit_cnt(0) & spi_data(6))))) # (!bit_cnt(1) & ((spi_data(7)) # ((bit_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(7),
	datab => bit_cnt(1),
	datac => bit_cnt(0),
	datad => spi_data(6),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X22_Y21_N24
\Selector101~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~6_combout\ = (!\cmd_idx.00001011~q\ & !\cmd_idx.00010000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_idx.00001011~q\,
	datad => \cmd_idx.00010000~q\,
	combout => \Selector101~6_combout\);

-- Location: LCCOMB_X22_Y20_N8
\DC~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DC~1_combout\ = (\cmd_idx.00000101~q\) # (((\cmd_idx.00010010~q\) # (!\Selector96~0_combout\)) # (!\Selector100~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00000101~q\,
	datab => \Selector100~0_combout\,
	datac => \Selector96~0_combout\,
	datad => \cmd_idx.00010010~q\,
	combout => \DC~1_combout\);

-- Location: LCCOMB_X14_Y17_N18
\Selector96~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector96~1_combout\ = (\state.STATE_SET_AXIS~q\ & (((spi_data(4) & \DC~1_combout\)) # (!\Selector101~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \Selector101~6_combout\,
	datac => spi_data(4),
	datad => \DC~1_combout\,
	combout => \Selector96~1_combout\);

-- Location: LCCOMB_X23_Y17_N6
\Selector96~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector96~2_combout\ = ((\cmd_idx.00000001~q\) # ((spi_data(4) & \WideNor0~0_combout\))) # (!\Selector96~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector96~0_combout\,
	datab => \cmd_idx.00000001~q\,
	datac => spi_data(4),
	datad => \WideNor0~0_combout\,
	combout => \Selector96~2_combout\);

-- Location: LCCOMB_X14_Y17_N0
\Selector96~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector96~3_combout\ = (\Selector96~1_combout\) # ((!\state.STATE_SET_AXIS~q\ & \Selector96~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \Selector96~1_combout\,
	datad => \Selector96~2_combout\,
	combout => \Selector96~3_combout\);

-- Location: M9K_X13_Y9_N0
\image_rom_rtl_0|auto_generated|ram_block1a36\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFF79550511155555555555555555555555555150143CEAAFFABFEFFFFFFFFFFFFFFF545445555555555555555555555551455004143EBAFBAABBFFFFFFFFFFFFFFFD54515115555555555555555555455554411014FAABAAEABFFFFFFFFFFFFFFBF755444545555555555555555555555155540013BEAFBBFAFFFFFFFFFFFFFFFFEDD5554515555555555555555555555550500013FEABABEAAFFFFFFFFFFFFFFFFFD5145115555555555555555555115554400012FFABBAAEBFFFFFFFFFFFFEFEEDD544454555555555555555555554150150011EFEABFFFBBEFFFFFFFFFEFBFBEFD555545555555555555555555550555500001FEFAEAFAFABFF",
	mem_init2 => X"FFFFFFFFFEFBBBC555554555555555555555555150054100004EAAABBBFBAFEFFFFFFFFFBFBBEFF514515555555555555555555550050544005EEEABEEFFEEFBFFFFFFFFFBFEFBF55515155555555555555555554015414100476ABAEBFFAFBFFFFFFFFFBFFBBAF44551555555555555555555545015054400102B2BFFFFEFFBFFFFFFFFEFAFFFF551515555555555555555555540150141010400BEBBBFFFBBFFFFFFFEFAFABBB5551155555555555555555555555504504440004BEFEBEFFBFFFFABBFBFBEBAF54415555155555555555555554145450004000002EEFFAFBEFFFFAAFEEEFEAAA11145555555555555555555551555104010010000FBBEEFFB",
	mem_init1 => X"FFEABFAEFEBEEAE551555555555555555555555544555404101450002AEEBFBABBFAAAAEEFFBFAB4555555555551555555555545515554101501000083AEFFAEBFFAAAEBAFFBBAA4555555555555555555555551445550411115500000AEEFABFFAAAAAAFBAABAA95555555550405555555555450555500014004400002AFAEABFEFAABAEAAABFA85555555554011555555555441554440055555400000AABAEFABEABEBFAEBEEA85555555554005555555555515544540155454450000AAEBABAFEFBFBBAABBAA955555555550415555555554415455405110440010482BEBABFFBFBAFFFAEBAA915555555554015555555555505415000051040510012AEAE",
	mem_init0 => X"FFFBABBF10044ABA15555555555151555555555155510015554554500244EAAABFBFD0041554105255555555555555555555554555550511554554901810EAEAAFE804555555551055555555555105154555150115555005054556810004EAAEEB8555555555544545115555555551515514550455541001155511502000AAABBF5555555555544514015555555554551545554155540100554441104000EAAAFD5555555555551050015555555545545454545155555001504154460000AAAAB55555555555555544055555555554554545450045555400100404940002FAAFD55555555555555551415555555445455451550001D540041016FF5000003ABB",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0_combout\,
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y14_N0
\image_rom_rtl_0|auto_generated|ram_block1a20\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"EEEAEFEABD1554455015440404045545055545BAFDFF4440000000000001BFFFFEAABFBFAA45141000154000054041551445110569FFFF40000000000004BFFFFFAAAFFABA54441445045000101455545445550015FF5440000000000014FFBFAEAAEFEAABD51404001540001004154551551BFE95FB0540000000000010BEFFEEAAEFFAEAA500150405500404111455445117BEB9FD4540000000000000FFFFFFAABFAAAAA84544445140101001054115550005ADFDDF00000000000004FFFFBEABEFAAEAAC401504154000441055555415684053F54040000000000000FFFEFABABBFAAAA15444015510040100555455453FFF95FE0040000000000040AFFB",
	mem_init2 => X"AAABBFBEEAA5551055151040504051551555140BF9522240000000000004BEEFAAAAAFBAEAB0555055151100104055515445441451051700000000000004AEFFAAAAAAAEFAB1454450051010010445045545FFF815011000000000000010EFEBAAEAAAEBAABC1544441500011051155151540BBAEFFF4140000000000400FFFABAAAAABFEAA9455154454044540441051550000555554940000000000000EFEFEEAAAAFAAAAF155544550100544450455546EE5505555040000000000010FFFFABEABEABFFFE555550545111444404455502EFBAF5554C00000000040010FFBFAAAAABEBBFFED5555415101150011055545001AA95514D00400000000000EBFF",
	mem_init1 => X"AAAAFFAAFBEB855510544404415001551106AE0105554940000000100000FFFFAAAAFBABBEBAC1541045100514044155514BEEA695451902000000501400EBFFBAAAFBEFBFEF955554444404440005444402FBBA755049AF400000044116FBFFEAABFAAEEEBAC4551054111140001555410BEEBB94550EFB40400004155AFEFBEAAAEEFEFBAE81044501104100005455504FABBBC5444BAB40000110556BBFFFEABAEFABABEAA0111154400140005555106BFFBE84500BE30040044556BFEEFBAABAEEFBAFEFB404441104000000155440AEEAFA85101BA2500054522ABFEFFFAAFEFEEAFBBBA800404000000000555100BAAAA884015BE81401041AAABAFAEB",
	mem_init0 => X"AABAEBFBAAFEBA00054510000001545106EAAF8045411AAD545412AABAEAEFFFAAEFEAFAAFFFBF9110004010000115540FEEBA0409553AA954145AFBFBEEEEFFABBFBFBFFEEFBFF955000500100551501AEBB0113FA94EA91555ABBAEAAEFBFFAFAFFFEBAEEBABBBA0550400404554502FAA80106AFBAEB8914AFEAEEAEBEFEFAABBFAAAAFFFAFFFFE851540501144402ABB010555006AEC16ABAAFAAEBBBFBBBEFFFFAABBFFAFBEEFFE5555444515002AE9008115051EED2BBEAAAFAAAEEFBFAEFBFFEEFFFFAEEFBFEBFEA4541045502BB4280515444FEAABFBFAFAAEFEAEEAAFBFBEBFFEEEAAEBEFABAAFB951450002F90500551410FAFFBAFEBAABFAAAAAA",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode205w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y20_N0
\image_rom_rtl_0|auto_generated|ram_block1a28\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"95555555555555D754055455555454545144141045455001500AA10000403AEA0555555555555555551555155555511145454501515541111050400000006AAB5155555555555555555500015554451455545511554554101400000040012BBE4555555555555555555014111551514454451040505754010011000400006AEA8455555555555555550115141555444515004000045055500000010400003FBBC015555555555555544115054154454100540405515554000000110000002EFA851555555555555555501191555550011505400555575401000000400001BEBEE44555555555555555501995540001144551000040575400000441000000AAFB",
	mem_init2 => X"A511555555555555555415660505140551141100017454000011004400002FBAA005555555555555545016A68555540445440015555455000000004000013FFFF4405555555555555554196A245944004400410146555504000000040001AEFEB45555555555555555544AA245A145044111004041155500000000100001AFFFB00005555554555555540569415445411444440401555500000000400000AFFBB14454145554455455540496551541411444100565155501000000000000BEEFF544050555555040100505A5965551410444411156517510410000000000BEBBF0140454550554155555012A5AA991544104501041577504000000000000BFFF",
	mem_init1 => X"B04050511450145045441062400010051010001511755500040000000000AEAFF4440501110101501541502551455410140011056FD55500104000000001AFBFBC550044414444514550510659995555010044045555F5000400000000012EFFEB41004410140140515450145155500510110000005555000000000000013BFEBF81401550001144455505055401400400000115545504000000000000002FFFEEED0451000111414151114501100004155154155B57D5000000000000012FFEBFBF1550051145045450440110500454154500114955DD000000000000403EFBFBEFA450000155051155551055545FC000104500045555000000000000002FFF",
	mem_init0 => X"EFFFA95145540410515541100400406B1145156A9B4151000000000000013FFBAAFEBF445545444044555440010044405051442699D7DD400000000000003FBFAAEFBFD55554540111145104041401514515440004B77D400000000000002FFFEFEFBFF90545540445555101115005445154155001F750400000000000003FFFBFEFBFEA9540500444144410044115555451508AB5FF45400000000000013FFFBFFEBFEAB8151001501551001100515411415079B9FFFF000000000000002FFFBFBEFFAAB805100101055411014415545145400101FFFF000000000000003FFFEBEABFAEE910155004115000110054555445411401FF01000000000000003FFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode216w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y17_N26
\image_rom_rtl_0|auto_generated|mux2|muxlut_result4w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result4w~0_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a28~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- (\image_rom_rtl_0|auto_generated|ram_block1a20~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a20~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a28~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result4w~0_combout\);

-- Location: M9K_X13_Y18_N0
\image_rom_rtl_0|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AABFBBAAAAEEBAFAAABEAAAEAFED05AFE900045455407BFFAABEAAEEAABAEEAEEAAAAABABAABAABEAAAEEAAAFBBC00AFBFE0914014704BAEFFFAFFFABAFBFBFFFEAAFFFEAAEAABEAAAAEEEAAFBFC06ABEFBABC0101E50EFFEBEFEAEBAEEFBBFFEAFEFEBAFEAAEAAAAAABBEAABFFC05BFBFFF3D0151115AFBBFABFFBBBEABAABFEBEAEFBAFEEABEAAAABEEAAAEFF845BFFFEDBC0145511EFFBFFEFFEEBFBEAABAABEABBAABBBAAEBAAAAEEAEAFFB945EFFF9F6601558107FBFFBFEFBEBBFBAAEFAAAEFBBBAAABAAAAAABBEABABFF850AFFFFA880455840EFEFFBFFEEAABEEAABEFAAFBFEEEAAAABAAEAABEBAAAFE814AFFFBEA20141810AFBBBFFFEEAAAAAAABA",
	mem_init2 => X"BAAFFBEEABEEBAABAAAAABBFFFF8442AAAAAA84055D05BEEFFEBFFAEAAEAAABEEFAEBEBFBBAEAAAAAAAAAAAEABB0455AAABFA20051410BFAFFBFFFFEAAEAAABEEBFFFFEFFBEEAEAAAAAEAAAFEEE44154AB20100045445BBFEFEBBFAFAAAAAAEFAAAFFEFFFAABAEAAAAAABEFEEAF451504015505150557AABFEFEBFFEEAEAAAEEFAFFEFFEFEAAFEAAAAAAEBFFEFE110554544410141007BBBEBBBBFEBEAAAAAEABFBFFFAAFEAAEAAEBBAAAEAAFEA105510400040440547BAFBBBEFEEBAAAAAABEFEFAAFFAABAEAEEAAEEAABBEEAAC55440104541005442EBBBFFFFAAAFAAAAABBAFFAAEABBFEEAAAAAAAAABBFBFE80415511151510505AFFFEEFABFBBEAAAAAAA",
	mem_init1 => X"BFAFAAABEAEAEEAAAAAAAAAAFFFF0055515401044402BAEFBFBAFAFBBAAAAABBEEFFAAAFBEAABFAABBBBAAABFFBB544111051445010AFFFBABAEBEABAAAAAAAEAEEEAEFBEEAEBAAABAAAAEAAEFEE814054400441446AEEEFAAAEFFEBAAAAAABFFAAAAABFAEBBAAABAAAAAAAAFBBBA45404001514103EFBAAAAEEEAFFEAAAAAAFAAAAAAFFEBEAEAAEBEAAEBEABFEEB9140504101540BFAEFEFABAABFFEAAAAABFAAAAAAFFEAAABAEEAAEAAAAEEFFEAF8445055051547FBAAABFAABBFBEAAAAAFFAAEAAFFFAAAAAABAAAAAAEBEBFFEAAF51540051414EBAAABFBAABAAFFEAAAAFFBBEBFFFABBBFAEEEAAAEFAAEABEBAAAE0005550546FAAAEBAAAAAAABFAAAABFB",
	mem_init0 => X"AAAFFFAFFEABBBAAAAAAAFFBFBAFAABBFB4F10502EEAAABBEAAAAEABFEAAAFEAAEBEFBFAAAFFAAAAAEAABEABFAAABAEABFBEA10EAAAAAAAABAAAEEABFEEABFFEAAFAAAAEAABFEEAEEAAAEAABBABBEAEEEBFEBEAFEAABABBAEAAAFAAABFAAFFBBAAAAFFEFAAABEEAAAAAABAAEFFFFEFBFFEEEEBEFAAAAAAAFAAAFFFAAAFBEAFBBAAABFBAAFEAFEBBAAAABAAEEEFBBBEFAFFBAAAFEEABABEAAAAAFEEFFFFFFFBAEAAAAAABFEEAFBABAAAAABAABEAFABBABAAEABFBFAAFFAABFAFEABAABEAEEBABAAAAAAAAAAABFEAEAAAAAEBFEAEABEABAFEABAAFEEAAEFBEBEAFAEEBEBFFEFBEEAAAAABFFAAABAAAAAAAAAAABAFEAAAAEFBFAAFBFABEEEBFAFAFAFEBABFFFBAAA",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode176w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y24_N0
\image_rom_rtl_0|auto_generated|ram_block1a12\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"ABBAFAEFEFFFFFAEFBEAEBFFEE954001BA82880105575EAAAEFFFAEEEBBAAAAAEFEFAEFFEEAEAEEBEEBAEFAFBEAA8000AE3C080511522BBBBBABFFEBAAEAAAAAABBFEBAEBFFFFEBEFFABBEEFFFEEF400F9E8840114562FFBBEBFFFEAAFABEAAABFEBEBEEEBFFEABFFBFEEFBEAABAEB50EAE626014516EFBBEBBBFEEAEAEAAEAAABEFEFFFFFFFAFBBBEEBFFBBFFEABA80EFBB91114557AABAAFBAABAEAFBBAAAAAFFBFBBEBFFFEEBBEEEBEFFAEAEFFBF0A7BF40155456FFAFFEBBBAABEBBFAEAAABFBFFFFFFFEFFEAEFBFBEFFFEAFEEB8AAEA54404552EBBBAEEEFBBAAAFFEAAAAABFFEFFFFFEBABEFAEEFBBBEBBFFFFEEA8501155516FBBFEFFAAFBFAAAFAAAE",
	mem_init2 => X"AABEFFFFBABAEEEBAAEEAABFFFBBFBEFE89500014146AFFEFEFAAEAEAEAFABAAAFBAFFBFAEFBFEBBBEAEBBFFFBFBFAAACA08C8101016BBEFFBFFBEFAAAAAFAAABAAAEEFEFBEEFAABEEEAFAFFFAEBEFFE919AFB454447BEEFBEFAAEBFAABAAAEAAAABFEEEEEFFAAEAEAAAEFEBEBEAEBFF802BFD8454EEBAFBBFBAAFAFAABAEEAABBABBFFBBAAFEAAABBBBAFBFFBABEFFF84ABE201512EBBBFFFFABAFBBBAEBAAAAAABFBBEEABFAAAABAAAEAFAFFFAEFFF802FA845014ABEFFBFFEAAAAFEFAEBAAAFAFABAEAAFBEAABAEEBAEEBFFBFAFFE088E8001555AAFFFBEEFBFFFEFAEEAEAAAAFAEBEAABAAAAAEABAFFEBEAFAFAAF881FA0015556AFEEBFABFBFFFFFBBBAA",
	mem_init1 => X"AABEEAEBEAAAEABAAAAAAFEBFFEABEE8BF0400001542FBABFBFBFFEBFFEBBBAAABFFAFEBFAAABBABAEAAAFFEFFEFAEA2BBFEC0140552BFBFEFEBEABEBFFBBAAAAEEBAAEFEAAABEBAEABAABFBFBFEFAE8BFEBF0045553AABFFEFEBFABFBAEEBAEABFABAEEEEAAFEAABAAABEEBFBFBF96AFFFFFA155103AFEFFFFEAAAFFEFBEEEAAEABABFABEBABBABAABAAFFBBFAAE0EB3FFFF2055443C3BFEEBFFFFFAAAABBAEAABBAFEBBBEFEBAAAAAEFFFAFBEAA8ABFDDD11050142C6AFAABFAAABEAAAEBEEAEAAEEFAEEBFFFEAAABAFFAAFFAF9DBBFFF140054512C6AFFFFFFEBEABEAFEEEEABFFFBEAABBAFBAAAEBABFBEABAD6AAFFFE10111047D3BEBAAAABFFBABEEFAE",
	mem_init0 => X"ABAAAEAAAABFFEAAAAAAAFFBFFEA8DABEFFBF0455513D02FFECEFFAAFBEBBBEFEAAAAAAAEAFABAAAAAAAABAFFBEFA5AFFAFEF5545446F02BAAAABAABBEEAEEEABAAAAAAEAABAAEEAAAAEAABAFAEFE5ABFABBE0445512A02FBFFFBAAFEBBAAAEAEFEAAAAAEAEEBBAAAAAAAAEBEFBFE5ABE9BEC401501BF02BEFFEBABEEAAABAAAEAEAABAAAAFBFEFABAAAAAAFEBFF90A8659E9401550AA02EABBABAABFBAAAAAAAEFAAAAABAFFBAAAAAAAAAAAFAEED19A045E44154459E6EFFAFAAFBEAAEAAAEAAABBAEAABBEAEBEAAABFAAABAFAE51E5F543E4140157ABBFEFFABEFABBBEEBBBEAFAABAAAABAEAAAABABAABBABBB41AA4540D01151526AEBFBBEABBAABBFAEEF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode194w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y17_N24
\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs486w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs486w[0]~0_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(1)) # ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a12~portadataout\))) # 
-- (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a4~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a12~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs486w[0]~0_combout\);

-- Location: LCCOMB_X14_Y17_N28
\image_rom_rtl_0|auto_generated|mux2|muxlut_result4w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result4w~1_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (\image_rom_rtl_0|auto_generated|ram_block1a36~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & 
-- (((\image_rom_rtl_0|auto_generated|mux2|muxlut_result4w~0_combout\ & \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs486w[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datab => \image_rom_rtl_0|auto_generated|ram_block1a36~portadataout\,
	datac => \image_rom_rtl_0|auto_generated|mux2|muxlut_result4w~0_combout\,
	datad => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs486w[0]~0_combout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result4w~1_combout\);

-- Location: FF_X14_Y17_N1
\spi_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector96~3_combout\,
	asdata => \image_rom_rtl_0|auto_generated|mux2|muxlut_result4w~1_combout\,
	sload => \state.STATE_SCAN_DRAW~q\,
	ena => \spi_data[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(4));

-- Location: LCCOMB_X23_Y17_N26
\Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Add2~0_combout\ & ((\Mux0~2_combout\ & ((spi_data(4)))) # (!\Mux0~2_combout\ & (spi_data(5))))) # (!\Add2~0_combout\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => spi_data(5),
	datac => \Mux0~2_combout\,
	datad => spi_data(4),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X14_Y17_N14
\Selector98~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = ((\cmd_idx.00010001~q\) # ((spi_data(2) & \DC~1_combout\))) # (!\Selector101~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(2),
	datab => \Selector101~6_combout\,
	datac => \cmd_idx.00010001~q\,
	datad => \DC~1_combout\,
	combout => \Selector98~0_combout\);

-- Location: LCCOMB_X22_Y17_N28
\Selector98~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector98~1_combout\ = (\cmd_idx.00000100~q\) # ((\cmd_idx.00000011~q\) # ((spi_data(2) & \WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00000100~q\,
	datab => \cmd_idx.00000011~q\,
	datac => spi_data(2),
	datad => \WideNor0~0_combout\,
	combout => \Selector98~1_combout\);

-- Location: LCCOMB_X14_Y17_N12
\Selector98~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector98~2_combout\ = (\state.STATE_SET_AXIS~q\ & (\Selector98~0_combout\)) # (!\state.STATE_SET_AXIS~q\ & ((\Selector98~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \Selector98~0_combout\,
	datad => \Selector98~1_combout\,
	combout => \Selector98~2_combout\);

-- Location: M9K_X13_Y17_N0
\image_rom_rtl_0|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFF5555555F55DF575FFFF557A2555200B008A01C97F7FFFFFFF5FFFFFFFFFFFFFFF555555FF75DF57F7F77F6AA15D55E782A001497D7555D555FFFFFFFFFFFFFFFF55555755DDF7577FFFFFEA015755457028852A7DF7FFFF57DFF7FFFFFFFFFFFFF555555DFDDD757FFFFF6A2155555D7E801D285D5FFF5555FDFFFFFFFFFFFFFFF5555557D577F5FFFFFFEA215555757E101F605F555555577FFFFFFFFFFFFFFFFFD5555D7F77D5F7FFFFEA0555575DDFA0072AD55555575D7DFFFFFFFFFFFFFF7575555D555D7DFFFFFFEA855555577E60076855D5555557FFFFFFFFFFFFFFFFFFFFF55DF5DDD7DDDFFFEA81555555DBA01702F7555555F7FFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFD55D5555DFFD77568A15555557FE00481F5D555557F7FFFFFFFFFFFFFFFFFFFFFD555D757557FD5E8A3555555DFF80C21DF555555D55FFFFFFFFFFFFFFFF555FFD55D575D5F5557EA28355DF2FFF65299F755577FFFFFFFFFFFFFFFFFFFFFFFFFF555D555DFF57D2802A8000206C023FFFF555FFFFFFFFFFFFFFFFFFFFFFFFFF7F5DD5D555FF5FFE808800AA2AAAAA27DFFD5555FFFFFFFFFFFFFFFFFFFFFDFFFF555D757555FD7CA2280800000008A7DD75557FFFFFFFFFFFFFFFFFFFFFFDFFF555D5577FF7757EAA288000000002A1DF55555DFFFFFFFFFFFFFFFFFFFFFDF5555557775555D7FCA2A00800002000575D55555FFFFFFFFFFFFF",
	mem_init1 => X"FFFFFDFFD5DD5FDD7557FFFDDFF7282000200002A2ADFD57555FFFFFFFFFFFFFFFFF5F555555755777FF5FF7F77FEA200020000000B7FFD5555557FFF7FFFFFFFFF7D5555575D775DDFFF7FDDDDF4A2A8AAA0000275FFD5D5555557FFFFFFFFFFFFFD55557D777F577F7DFFF7777D2AAAAA8000080DF7D5555D555557D77FFFFFFFDDD555555DDF7F5F7DFDF7DDD7FA2A08000000077FDD5F55555557FFFFFFFFDFFFD555577DFDD7FFF7DFF755555680000262000D7F555FD5555555FFFFFFFFF7FF555755DDFD7FFFF7FDDDF5557F2000002025F7FFF55FD55555555DFFFFFFFFD5555FFF5F75DFFDD5FFFD555557FCA0028A7DFFFF7555555555557FFFFFF",
	mem_init0 => X"5FFF557FFFFDDDF77FFFD55FFFD55557FDF5F77AFFFFFF555555555557FFF7DF7FFFFFFFFD7D7FFFFFFFD7FD5FF555557FD55DF5FFFF7D55555D57FFFF7FFDFFF7FFF7FFFFF577DDFFFDF7DFFFFF55555575FDF7FFF7D7D55555FFFFFFFF777FD7DFFFFFFFFD77FFFFFFF5F77FDF55FFD5D55775FFFD55555557FFFFFDDDD777577FFFFF57FDDDDFFFFFFF5FFFDFDFFFDFFD5557FFDF5D55557FFFFFFDD7F75D7577FFFFF7F5D7DFFF7DFFDD55FFFFFFDFFFD577FF7FFFFFD7FFFFFFF5577575F77D55FFFF57775DF7FFDD7F5FDD5FFFDFFFF5DF5DD575FFFFFFFFFFF555F7DDDFF755557FFDDFD77FFF777FFFFFFFFD557FFD7F5DD7F5FFFFFFFFFF55557555",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode176w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y21_N0
\image_rom_rtl_0|auto_generated|ram_block1a10\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"DFFFD5D5FFFF7FFFFFF555FFFD70AA00150C22A002019F7FFFFD5755557FD75F577FFFD5557FF7FFFFF55FFFFFFF4A805597B2A800011DFFFFD5D5555DFFFFDF57FFFFD5FFDFF7FFFFF57FFFFD55FE2056532EE80001F7FF77755DD55FFF7D7DD7FFFF55FFFD57FFFFFDFFFFFFFF7DA0514CCCBA00017FFFFFDDD5555FFFF7DFD57FD555DFFD57FFFFD7FFF5F5575DC045517FF80001FFF557FFD555D7FFFF7F557F5555FFDF57FFFFD7FFF777F55FD0CD15FAA00009F75FFFFFFF557DFFF7FFD5555555FFFF57FFFFDFFFF5F7F577F6D555A0280201FF757555555D577DFFFF55555D55FFFFDFFFFFFFFFF7FFF555FDD57A00AA0009F7557FFFFFFD75DFFFFF",
	mem_init2 => X"55555555555557FF7FFFFF77755D7D5FD63AA0000001FD55FFFFFFFDF57FFDFF575555555FD7F7FFFFFFD757F7F55555F4E776000003F5FFFFDFFFFFDDFF7FFF55557F5555755FFFFFFF55DFF7F5DDD5FF3555E003CBF77D7FFFFFFD7FDFFF7F5555FF55D5FDFFFFDFDF7FDFF7F5D5777FD557380057DD7FFFFFFFFFDFFFFFFFDD55FFD575D77FFFFFFDFFDFFFF7FF757F554CE8A01F7F7FFFFFFFFFFDFFFFFF5D5555D555D7FFFFFFFF555DF57F557D7FC5428A022FFF7FFFFFFFFFFF7FFFFF57FFFDFD5F55FFFFFFFDD5DDF7FDFF5DF7342A002027FD7FFFFFFFFFFFFFFFFF5DD7F7D55FDFFFFFFFFFDFD7F7F5757D77E55E0000035F441F75FFFFFFFFFFFF",
	mem_init1 => X"55D5FFFD55DF7FFFFFFFDFD7F7F7F75755C88000000BFD7FFFFFFFFFFFFFFFFF55DFF55FDDDDFDFF7FFFFD57F7FDF75D555578AA800BFD7FFFDFFFFFFFFFFFFF5557FF5775DDFDDFFFFFFFD7F7FD755355555FC0002BFF7FFFDFFFFFFFFFFFFF5557FF575755FDFFDFFFDFD7F7FDDFD5555555E0000F5F7FFFDFFFF7FFFFFFFF555555FF557DD77DFF7F5FD7F5557E55D5555CC0000FC37FFFDF5F5FFFFFFFFF5557FFF55557FDF77DDFFFF7FFFFD4455777BA00000BC37FFFFFFFFFF7FFFFFF55577FD5555FF57777775557FFFD6415555AA0200009C3FFFFFFFFF7FFFFFFFF55557FD5555FFFD77FFF57F7FFFFED555555B2200003C3FFFFFFFFF7FFFFFFFF",
	mem_init0 => X"5555555F5D5D5F5DFDDFF5F7F5FF461555555C000001F895746FF5FFFFFFFFFF55555577557DFF5F7F7DFD57F7FDDA55555558000001DABFFFFFFFFFFFFFFFFFF5555555557F7F5DDDFFFFFF55FD701D55555000800DDA9FFFFFFFFDFFFFFFFFFF555555D55FFD555F7DFDFFFFFD50155315700208057A9FFFFFFFFFFFFFFFFFFF555555555F7F5DD5FDDFD7FDFDF8500A2570008835703FFFFFFFFFFFFFFFFF57F555557557FF777DF5FDF7F57DCA21A825F00A00077DFFFFFFFFFFFFFFFFFFFFF5555555555D75DFD7DF7DFFFF0A4A5F89500080057F7FFFFFFFFFFFFFFFFFFFF555555555FF5D7D75FDDF555FAA400202700AAA05375FFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode194w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y17_N16
\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs390w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs390w[0]~0_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(1)) # ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a10~portadataout\))) # 
-- (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a2~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a2~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a10~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs390w[0]~0_combout\);

-- Location: M9K_X13_Y25_N0
\image_rom_rtl_0|auto_generated|ram_block1a34\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"754555555555D288A2888000000000000000000002228020028A860005FFF545DDD555D55555542222200000000000000000000002282022228A94005FFFF15511155755D5555782888880000000000000000000088000280A8A50013FFFF5D5FFF55DD75DD75D282220200000000000000000000A2000220A8814013FFFF5DF4555D577777557222220800000000000000000000A80802082885401FFFFFD55DDD55F5F7F75554AA208800000000000000000000AA000A22AA85501FFFFFD77D75D55F5D7D55768AAA02000000000000000000008A820000AA05401FFFFF77FFDD5DD5DD7D75542200200000000000000000000008880008AA055047FFDF5D7",
	mem_init2 => X"735577FFFDF7756A808820000000000000000000000800002AA050013FFFFF7FD555777D7FF7D54AA20800000000000000000000000A000002A054007FFFF7FFD557DDDFF7FDF5588A8080000000000000000000000A000002A9C01071FFFFFF555577F77FF7755AA028000000000000000000000008000000A0958155FFFFFFDD5F5FFFDFDFF7522A0800000000000000000000000A0000002002D41D3FFFFF555DF55DF7FDF75A8088000000000000000000000A800000000000A1457FFFFF55DFFF75FFDFFFDAA280000000000000000000000288A00000000000445FFFFF57DFFFDDDFFFF5788820000000000000000000000002200000A800225117FFFF",
	mem_init1 => X"D57FFFFF7DFFFFFE080000000000000000000000000A80002A82A0088F57FFFF317FFFFF5FFFFF7E000000000000000000000000028808008028A80A2BD7FFFF15FFFFFDDFFFFFFE000000000000000000000000000A80008A28280AAA1DFFFF55FFFFFF7FFFFF5600000000000000000000000080880002AAAAAA28AA8FFFFF1577FFFD5FFFDF7E00000000002200000000000002888000AA208A8AAA2FFFFF5F77FFFF577FFDDE000000000028800000000000000820028228A0882A03FFFFFF7F7FFFFFFFDFFF00000000000A000000000000000A2008AAAAAA2AAA2BFFFF55DD5DFFFDF5FD5F0000000000000000000000000200802AAAAAAA820808FFFF",
	mem_init0 => X"55F7FFFDA08A25D50000000000000000000000000088000A082882C0A022FFFFDFF7000200000089000000000000000000000000002828080000034AA28AFFFF05FC088000800000000000000000000000000000000A00208828896AA002FFFFFF68882220000000000000000000000000000000AACA802AAAAAA8201002FFFFFD8A2208828880000000000000000000000000000AAA880AA002A888E802FFFFF6AA888882AA2800000000000000000000000000002808002AAAA0CD8002FFFFF088AAAA2AA8AA8A0000000000000000000000002A2800020A803F7C0088FFFFEAAAAAA88AAAA8A0000000000000000000000000AB2BA80AA07D57F20022BFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0_combout\,
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y19_N0
\image_rom_rtl_0|auto_generated|ram_block1a18\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"5FFFFFD5542AA800000A88000000AA8A0AAA83555EFF80800000000000003FDFD7FFFFD5D7882800000A8000020082AA288A2000DCFF55000000000000027FFD57FFFF555FA8A0080208A0000008AAA8A88A8A0008F7E280000000000022FFF557FFFFD577CAA008202A800000082A8AA2AAA55572FF0800000000000002FFF5DFFFFF5557FEA02A080AA000080228AA88A20D55DF57E80000000000000AFFFD57FFFF5555FE80A8882A800000020A822AAA00035E577580000000000002FFF7FFFFFF555D56802A882A80000800AAAAA82A96A0A15FE80000000000000AFF75DFFFFFF55572A08A022A20000200AAA8AA8A17557355000000000000000AFFF5",
	mem_init2 => X"5FFFFF7F5558AA80AA2A20002000A2AA2AAA2A27F7F9DD00000000000022FFDFFFFFFFFDF572AAA8AA2A20002080AAA2A8AAEA2AA000BD00000000000002FDD77FFFFFFD557AAA88A22A200002088A08AA8A75F602A0000000000000000AFD55DFFFFFFD555CAA88882A000020A22AA2A2AA27FFF775E20000000000080AFD55FFFFFFFF5574AAAAA88A8000AA08820A2AA00002BA0087C000000000002AFD55D5FFFFFF5FD78AAA88AA0000A888A08AAAA9D5AA2A820E80000000000008FFDFF5FFFFFFF7FDA8AAA8A8A0028888088AAAA1FFFFCE000400000000080888FF75D7FFD5FFFFF76AAAA82A2002A00220AAAAA20255EE800700000000000228FDF5",
	mem_init1 => X"DFFF5D7FFFFF4AA2A8A8880882A002AAAAABDD08AE088780800000200028FF777FFFF557FFF7C2AAA08A200A280882AAAAA1554D6E0A0C01A000008002AAFD5D7FDDD5577DD568A8A88888088A000AAAAA8155D7CEA00E57800000002A0BD5D5FDFFF7F5FF554A22A8A82222A0002AAAAA015557FEAA05F700800002A80175755FD5D5F5D555E8A28A2228820000AAAA2AADD555EE888F770000008A008D7D555F5D57F55755722222A880228000AAAAA81555556EA82FFF0080222829F5D555757FFFF5D555582A8A22080000002AAAA0D55554EEA23FFDE0000280DFD75555FD7DFFF5DDD57CAA80A800000000AAAA8A5575502E8ABF770020A825F7D55555",
	mem_init0 => X"F55F57F7D77D5F2A088A20000002A8A2097F55008CA237FDC202817FF5555555FDF7FFF5DF755D42AA8088280202AAAA05555400042A97FDC8A8B7F7F5555555757F5FF77F55575F02AA8080200AA288257D50001556C5F7C80B7F7FF5555555F7FFF7D77FD557F5402AAAAA208AAA2815DF40009F5F57F740B7D7FFD555D555557FFDD57FDF57FDD7000AAA8822AA20155700282202B7D7ED7F5FFF5555555D7D7DFFD57FD55F7FFF5D0022AA2AA22015560A0800028FD7DFD7FFF5555555557F7DFFD575FF5FFFFFD57D4C2AAAA800157882A8000E8FF7FFF77D5555555555FFFDFFD5FFF557DFFF557FDF0282AA801562FAA800088F75FF775555555FD57F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode205w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y10_N0
\image_rom_rtl_0|auto_generated|ram_block1a26\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"28AA2AAA2AAA2A41A8000000000000000000000000288AAA80F55E2002883FFF2A82AAAAAAA2A082200000000000000000000002AA3A028800888000082A1FFF2A28A8AA8A2A2AAA880000000000000000000002FFEA22002200000200289FFFAAAA8AA2AAAAA2A22A002AA8000000000000000022F9F0000000000000801FFFEAA0A2AAAAAA2A2A0200A00A0000000000000000003202800000000000001FFF60202A28A28A888AA280A8008000000000000000803A00000000000000001FFFC0AAA2AA8A28AA28AAA08200A000000000000000FFF9F0000000000000025FFFD80A028888A222AA2AA8822008000000000000000AF9F0000000000000007FFF",
	mem_init2 => X"7A0AAAAAAA2A88A20AA88A880A00080000000000001800000000000000023FFFF8828A2AA002AAA8AAA888080AA002000000000BFFFA0000000000000000BFFFFA82AA8A8AAAAAAAAAAA02800AA2020000000003EDFBFA000000000000003FFFFAA0AA88AA22AAAA22AA20008A0A2A0000000000003BFE00000000000000FFFFF2880A82A200208AAAAAAA82800AA2000000000000300000000000000002FFFF7AA8002022000A2022AAAA28AA2A82200000000FDFB80000000000000002DFFFFA8820022A800000000AA20A28AAA0200000000BFDF3DE00000000000002DFFF7AAA022008000000002A8A80A0022000000000000031DC00000000000002DFFF",
	mem_init1 => X"72A000000000000000082088800000800000002FA01A00000000000000027FFD78A82080000000000002AA0A8AAAA022A000222FD57BCA000000000000003FFDFEAA0000000000000000AA08A222AA2A020088000FFB5C00000000000000BFDF5FA20200000000000008A00A82AA20A02022000000382A000000000000003FF555E2A02AA0000000000A0A0AA000020F0000023FF8380000000000000002BFFF5D7C88A2000000000002228ABAEEA00A2AA2A83FF5F97000000000000008BFFD7DD5AAA00000000000008800AAAEAEC82A8A000227FB7700000000000082BFF7757572A0000000000002AA20AAABF74000208A000038A000000000000002BFFF",
	mem_init0 => X"5D55FEAA8AA800000000822000082A15228A2AD575E00000000000000000BFF755D5FFAAAA8A80000002A88000208880A0A2881C7779F700000000000002BFDF55D57FEAAAA8A8000000A200002002A28A2A88000A79D780000000000002BFF757DD7FF6AA8A88000002A20000000A88A2A82A00027FA000000000000002BFF777F577FF6A80A0000000880000002AAAA8A2A0755CF58000000000000000BFFFFFF5F7D7D62A20000002A2000000A2A82282A8D754FFF5800000000000023FFF7FF7FD7DFE8A20000002A80000802AA8A28AA00002FF558000000000000A3FFFFFF7FF7F7E202A000002A0000000A8AAA88A838A02F70000000000000000BFFD",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode216w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y17_N6
\image_rom_rtl_0|auto_generated|mux2|muxlut_result2w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result2w~0_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a26~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- (\image_rom_rtl_0|auto_generated|ram_block1a18~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a18~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a26~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result2w~0_combout\);

-- Location: LCCOMB_X14_Y17_N4
\image_rom_rtl_0|auto_generated|mux2|muxlut_result2w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result2w~1_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (((\image_rom_rtl_0|auto_generated|ram_block1a34~portadataout\)))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & 
-- (\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs390w[0]~0_combout\ & ((\image_rom_rtl_0|auto_generated|mux2|muxlut_result2w~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datab => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs390w[0]~0_combout\,
	datac => \image_rom_rtl_0|auto_generated|ram_block1a34~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|mux2|muxlut_result2w~0_combout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result2w~1_combout\);

-- Location: FF_X14_Y17_N13
\spi_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector98~2_combout\,
	asdata => \image_rom_rtl_0|auto_generated|mux2|muxlut_result2w~1_combout\,
	sload => \state.STATE_SCAN_DRAW~q\,
	ena => \spi_data[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(2));

-- Location: LCCOMB_X22_Y21_N12
\Selector99~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (!\cmd_idx.00001100~q\ & (!\cmd_idx.00010000~q\ & (!\cmd_idx.00001011~q\ & !\cmd_idx.00000111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00001100~q\,
	datab => \cmd_idx.00010000~q\,
	datac => \cmd_idx.00001011~q\,
	datad => \cmd_idx.00000111~q\,
	combout => \Selector99~0_combout\);

-- Location: LCCOMB_X23_Y21_N24
\Selector97~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\cmd_idx.00010001~q\) # (((spi_data(3) & \DC~1_combout\)) # (!\Selector99~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(3),
	datab => \cmd_idx.00010001~q\,
	datac => \Selector99~0_combout\,
	datad => \DC~1_combout\,
	combout => \Selector97~0_combout\);

-- Location: LCCOMB_X24_Y23_N0
\Selector97~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector97~1_combout\ = (\cmd_idx.00000010~q\) # ((\cmd_idx.00000110~q\) # ((spi_data(3) & \WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00000010~q\,
	datab => spi_data(3),
	datac => \WideNor0~0_combout\,
	datad => \cmd_idx.00000110~q\,
	combout => \Selector97~1_combout\);

-- Location: LCCOMB_X24_Y23_N20
\Selector97~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector97~2_combout\ = (\state.STATE_SET_AXIS~q\ & (\Selector97~0_combout\)) # (!\state.STATE_SET_AXIS~q\ & ((\Selector97~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \Selector97~0_combout\,
	datad => \Selector97~1_combout\,
	combout => \Selector97~2_combout\);

-- Location: M9K_X25_Y27_N0
\image_rom_rtl_0|auto_generated|ram_block1a11\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"7FAAEAEAEFEAA410040AEA00056E15FF6A7967AAFAA830EE5106A8AAAAAAAAAABBEBEEBAEFD55814015AA4500000657FA982A6AAEEB99345447E6AEBAAEAAAAAFEABBAAABBAAAD01004A811002FF19DFAA066AAAEBA98855C9CAB76AABABAAAA6BABAAAAFEAAAD4004021040AAAAC00FA41999AABAF8055556B66AEAEAAAAAAA7FAEAEEBAAAAAC400128004EAAA8F13F90046AABBAA8055FFBBBBBAEAAAAAAAAFBEBEEAABBEAAD040028000AAAAAE82F1840AAAEABA909F55FBEEBABAAAAAAAA7EFEAAAA5555B8040020010AAAAAA80E1515AA82BAA955DEDBBEFEBAAAAAAAAAFFEAB7EAFEEBE9010101044AA2AAAA43156AEA00ABE90DEABBBBBEAAAAAAAAAA",
	mem_init2 => X"FFEBAEEAEABAE904C40045D10BAAAAA0166AABAABAB956ABBEFAAEAEAAAAAAAAFDEFBBAAFBFEA90001116BBAAAAAAAEE25A626AAFBAC4E12FBEFBABAAAAAAAABFFFFBAABAEABF5500105BAAAAAAAABAA2A6500ABBAB849DBAEFFFFEBAAAAAAAAFFFEFAFB3AEB55143531AABAAAAAABEA6A94026AEF0067FBEFBBBEFAAAAAAAAB77FFEFAECFEE95554006AFEBEBEAAEAB6A5419AAABC0DEBFEFEAABAAEAEAAAAAF7FFFBFBBF6E55450115EAE75015EEAA6A9016AAAAA0BEBFFFFEABEBAAAAAAAEFFFFFFF7F5FA55540106AAAAAAAAAEABA6616AEAAFA4AAFFBEEAEAAABAAAAEBAFEFFFFFBF569555511017BAAAAAAAAAB66A01AEAFBFCA51145DEAAAAAAAAAABA",
	mem_init1 => X"FFBFFBABBF75D54514557AAAEEAAAA9640B23FFEAAE8FAABBABAAAAEAAAAAAAEFFFFFFFBE7775A54C14556BEBBEEAC5944012A002AB8AEAFAFEABFAABAAAAAAAFFFFFFFFEF776A65150557AAEAAAAD1640140AAAAFA8AAFFABBABAFAAAAAAAAAFFFFFAFAEDFFFA5565457BAAAAAAA695000045AAAAA9F4AFBEAAFAEEAAAAAAAAFFFFFFAABBD6BAD655C5EAAAAEAAAA14800009AAAAA968BFEEAFAAAAABAAAAAAFFFFFEEBEEBFBA5DD771EAAAFAEA92540222AAAAAAA868ABAABEAFFAAABAAABBFBFEEEBFBBFFBE9DDDCDFFAD5552A244000A2A8AAEA8692FBFBFFEBBFAAAAAAAFFFFFFABFFFBEE6DD514AAAAAEAA69550001A84AAAAC696ABAAFBEAAEAAAAABA",
	mem_init0 => X"FFFFFBF5F7FFFAF757751AAEEAAAF25410040AAAAAA966EED1355AABAEBEAABAFFFFFFDDBFBBBBF5D5D756AFAAAA195005010AAEAEAC45DBAAAFBFFEEABAABBFFFFFFFFBFFEEFEB777515155BAAACA5005441BBBBFA915DEFFFFBAAAAAAAAFBFFFFFFFFF3FBFBAFFF5D75756AAAFFA5416412FFEFAB055DBEFFEABABAAFAABFFEBFFFFFFFFEFEEB77F57747AAAEA27579A616BFFBBA54ACEAAAFFEBAAFBAEFFFBFFFFFFFCFBEABDDD75F571EAAAA766591A1AAFAFEB2492FEAFBAEBAABEEBBFFABFFFFFFFFFFB39F757E75C6AAA8B61A0AA81EEB7EAD40BBEFFEBEFABBFFFBFFFFFFFFFFFFFFAAF7D7DE5734FAA41655A8BE2EA400A8C4AABAAEFEBAABBFEFEF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode194w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y23_N0
\image_rom_rtl_0|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAFFBBFFFFFFEAAF75FFB5500AAA5A5016ABAEAAAFAA140BAABAEEAEAABEFFFFFAFEABFFFFFFF68CF75EA5C58C495650401A6B90AA9A2469AAB7BFFABAEBFFFFFEEFFFFFFFFFDFB775CEA94500051954104542B842084425EBAFAAEBAEEFBFFFEAFFFFFEEFFFFF75777EED51000D1A40400082ABBBBC212E7FABEFBBBAAFAAFFEFEBFFFFFFFFFFD7FDC6E54510015A40001242ABEBA8815AEAAAFFEEABBEBAFEEBEBFBFFFFFFFF7C5CD7B4D500505A10006099AAEB6C48AEAAAAEFBEBFFBEBFFEABFFBFFFFFFFF7FFF7E741540015750000566AEFF7D01E7AAFBFEEAABEEAAFEAEAFBFFFFFFFFF75F376937750011750004159AAEB6D009EEFEFFEEAAAAAEEFE",
	mem_init2 => X"BABBEBEFFFFFFFF7FFFF76EAE8B551D5555556AAFF2431B7BABFFFAEAAAAEEFEAEABAABFFFFFEBFFF3DFDFAEAAFD55E5554059AABBA433EFAAEBBFFEAAEAAEFFBAFFFFAFFFFFEFFF7FDB7FAEAA89556E549AEAAAEF8371AEBBEBABFABAAAAAFFAAEFFEFFFBEFBEFFF7FFE3AAEABD55502FFFCBEBF93FD0BAAAFEBFFBEAAAAEFFBFAFEFFEFBBFFEF77F7FBFAAAA8C555515545154114FD0AABEEBFFEAEBBAAAFEBAABEFAFFFFFEFFFE7DFDAABAA8F555555551555111FC3AEEEFBBFEBAAEABAFFEABAAEAAFAFFFFFF3FFCCAAAAA81010514515410104B90AEEBFFFAAAAAAAAABFAAAAAAABBBAFFFFFFDDDFFEAA8035C451445551540EE52AABBBBBABBAEAAAAAE",
	mem_init1 => X"AAAAAAAAAF77F577DFFD5103200995C455155551000C07B9EAEEBAEAEAAAAABBAAABAAAEABFFDFFCDD55F14C0880C5D5445515050020156EFEFBAEBBBAAAAAAEAAAAAAABBBDF7DDF77554D53322060D45455111508D057B6FFFBEAEAAAAAAABFFAAAAABBF97DDDAFDD5C71558C8868010015451002D496FFEF7BBFFFEAAAAAAFAAAAAAFEFFFF77A95F4D7175C222820501150015020D536BBFEFFFBFEAAAAABFAAAAAAFFBFDD7577D555C7409AAAAA4141510C4400F84FFFBEFFEEAFEAAAAAFFAAEAAFEEDFF7756D5555FAB760AAA81815500000AB0455FFABFFEFFBFEAAAAFFBBEBFFFFFFFF5DF75537BAAFAEAAAA80E104000FAC055DBEFFFFFFFFFAAAABFF",
	mem_init0 => X"AAAFBFBFFFFF775CD5113EEBEBAAAAA940A0FCF5C15555EEBFFFFFFFFEAAAFFFAABEAFFFFBFFD55115556BAAFBAAAAAA80010BA51545D7FFEFF7FEEBFEEABFFFAAAABAAEFBFFDD7755530FAEAAAAAAAAAA8A0208155D7C6FBFFFFFFFFFAAFFFFAAAAAFFFFFFBDD5555144EBBAAAAAAAAAA2AA88A5557FFFAFFFFFFFFFFBEBFFFAAAAABBFFEFFF775555015AAEEAAAAAAAAAAAEA91575F3FFFFFFFFFFFFFFFFFFAAAAAAAFEEAFBD7451D3456FAAAAAAAAAAAAAA8855BBFAFBFFBFFFFFFFFEFFFFAAAAAAAAAEFFDDF75D5537FAAAABAAAAAAAAAA21AAAEFBFBFFFBFFFFFFFFFFFFAAAAABEAEFFFB57DD554DFAEAAAAAAAAAAAAAA80AEAAFBFFFBFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode176w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y23_N6
\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs438w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs438w[0]~0_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(1)) # ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a11~portadataout\)) # 
-- (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a3~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a11~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a3~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs438w[0]~0_combout\);

-- Location: M9K_X13_Y26_N0
\image_rom_rtl_0|auto_generated|ram_block1a35\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"101000000000871154555555555555555555555554CAFBC5517BD3555055501044400040000001454555555555555555555555555CCFFEC5157B8155055554004440010040000215151555555555555555555555533EEFD5157B05545555504055500441044508C155555555555555555555555550CFBBC5057D4154555150451000401111101244445555555555555555555555503FAFC0417D0154545554004440050515100010455555555555555555555555140EEF11156D00540554541141040050404112011115555555555555555555555043FFD00465015400155015544044054545103445555555555555555555555550333FC045651051D0525441",
	mem_init2 => X"15001155555554301D11555555555555555555515173410015355554441455057000111455155010455555555555555555555555517015440135115501001051400144455555540110555555555555555555555541605141013C954504005515000011515555550115455555555555555555555454631544007F94D400000551440505555515510C4455555555555555555555554060114101040101404005110004500554511548155555555555555555555555502F14504440002410040551004555501504104C155555515555555555555555403315000400000D11005514014550455454054D555555555555555555555555156C40401100401204410551",
	mem_init1 => X"40155544151040485555555555555555555555557BA01404056954079010151054055554155110595555555555515555555555455422A1102A96540658105504405445501540000955555555555555555555555144702C40640050055555450100555444110000545555555550555555555555457AE35400001450145550504140185501100004415555555554105555555555446BE30401008A250555E0015401D94114040001135555555554141555555555515573B80028921B0415F404105595840440000002555555555541555555555544157049024000055451541451EA66A25000010152155555555544155555555555FBB210040045155007C50405",
	mem_init0 => X"AA5D0440FF41B5055555555555515155555555515E26B000A29229A05D11005164497D555555113D55555555555555555555554555721106AAAAAA65454510505017511555155510555555555551051545551501EAE0510A629221507C01104040F1114445555445451155555555515155145504FFA3E404400047DE9001105053104451141115551401555555555455154555415033E5010AA817EE9401001508001111140041555001555555554554545454515573550280000BB9C00100011D11000040030030541555555555545545454500BFB25504A02AEB6B40450040000000011000033F954155555554454554515500FE72F4000AA815A9003A8000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0_combout\,
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a35_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y23_N0
\image_rom_rtl_0|auto_generated|ram_block1a27\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"4300C000C000C3EA800554555554545451441410557225502BA55D10430FC015D01C0000000C0DB645155515555551114545450004605422FFB655152C751054C4C3030030C0C000115500015554451455545513AAB385AFED04004184945001D000300C00000C0CC051005515515144544514410FA0A855411111410250101511070C000000C0C074400AE1555544451500400015635C141001010400100404914DC0C30C3033300D104AFA4154454100540417EF635555445011000000D00531400C0030C300C300056E6E0155500115455116AAA0A45541040040550E40011050DC33330CCC00C004666AA000015445554040EFA0AD555105410015014004",
	mem_init2 => X"8014000000C0330C70002A99FAFAA4055115150005425455145550440015C045044430400DDC0003010429597AAABD0545554552AAA355554405504010508000410100101000000000012695DAA6A90455445152B9A2AC55111144041150400101050011004400004401155DBA5A8095511145404162A85514555410415000000D4410140455451000015A96AAA0189155555545556655554555554015500004941155454455504544015A69AAEAB8955555554A9AE255555105550001402010500155544015555115505A5A69AAAE955555555EA9A688555555550011412044854145455155551555404695A5566AA55555555041648B455555554040412000",
	mem_init1 => X"9D1551555555545445514399BFFFEA275555554AC543555555455540104040429F11155555454154155405DAAAAAAB800555445A9022B0555555554011004002030055555155445545550439A666AA8054551144EAA20A555555554115008060A0D05555555501545151042AAEAAAE0A4544554401624015555554500150C01AAA3C1540045411544550500AABFAA8AA5555546AA16255155555555111414005A7C640045511115141544412AAAAAAA04004016AA4A02B55555554501444401293BFC0055555454454551146AAAAAAA200105550B6A2225555555554540140198AEBC9045555551511540004AAAAA02A1505001414630E555555555455404001",
	mem_init0 => X"A2EB03041001551451551445040415440410409564B255055555145555104009AE3A04D1001015504454011545151015050411D9662062555545555554014025AB2AD17000010151111504555445540410400000115C82155555555554104049A82A9117501011444554045555555001040100B1401905451551155554404009980A9940701505544415115455554000010407654A5315455455551514004011900E192C05404541501404551555000044100486475550D4555555515400C0048048028301504541015401554115400104101151105500D5545551555445C001C4180084800540500554055455550000010006E1545155455554551455038012",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode216w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y26_N0
\image_rom_rtl_0|auto_generated|ram_block1a19\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"B515102AAA000145515011550555000010001E45045504154555455555024020F955402A2811401545501551445510004110011E975500D51451554551024002A85550AAB0C114115450054415510000000010155351BB15555515151400004AB955103A8D7044115540151115514000040044016B555145445151515401010AA55510AAA80854005150055501544000000018414602BE855555545514040002A85540EAAB01151111441554155440040000405E570220C51451155454000108415410EAA3F11540514015445155000001001715040ABED5554555515404008A2555440ABE8C05111040455514550000001000006A015545455555144415045A",
	mem_init2 => X"F55440C0EAB300550000455145550000400041F556ADDD845454545110510025555550464E8D000500404555451500040010B1410FFEE8951555451444050229D5555552AA9C1011055045515451001100000057FBFAA85551515151000502AA75515516AAA740111140545505044004000155005110B84455155444400106AAF5555540EA8F100401001555015114100004540FEFAAE68455554514101102AAEF555505A03970001100555501110510001151C07FEBAFD51154544400030025FB556954191303000501055411115100005105005BAAA054054545400443008AED556A140008C000010045540554450001053F553BEAA2D4545155000117121A",
	mem_init1 => X"7555BA800411F00C4500115110055400445C35C57BAEE64441155400000700889555ABA801087C0145104550015110000414AB997BAFA14550511000011712A29576AAE8C26EC3030101015011155011117EBB3C9BFAA1556001100045E42A2A9756EAAB01EEF1CC450044441555400014F7EAA92BFFAD05E004400156A68A8EF57EAAAB2AAB375D1050451451550100C536AAAA3BEEE045E0000041AA9282AAF5EAEBAAEAEA8DCC040011501155000047EBFAAABBFEB00DE0001156A90A2AAEDFEAEAEA2AAEBFD111045115555540011F2EEAA9BBFBA0099004046D902CAAAA57BEFA6B2AAB8355041415511555000477BAAAA76BEFE006E41416E50AAAAAAE",
	mem_init0 => X"5FFBABA83C12B0C5000044455154030CFAEAAA6FBBFBE807A4856D40AAAAAAAA57AEEAAB2AAAB27D5540044445544001FAEAA9BBF6BFCC03A346A40AAAEAAAAADFAEAFA8ABAEA8E2A954404004500C37EAAAAEEEC057BA06A6AA40EAAAAEBAEB5BEFFAA8EBAEA84A9A945111101001C7EAA8BBEFA8B158126FA42AAAAAAB6AEFFEAABAABEAAAA802286BE555140411DFEAA8BEEAAAA88822A941AAAAAAABAEBBEEAEFFAEFAEEA0C010B1AAD950504CDFEAAABA7AEAA82032902AAAAAAAAEEFBFFBEBFFABEAEAA400402A815B955513FFEA8B96AAEAA82044000C96AAAEFEAEEA6FBEBEBAAAABA93000EA80206969057FEAAEAAAAAEAA20CE04D8AAAABBAAAAAA",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode205w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y23_N24
\image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~0_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a27~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- ((\image_rom_rtl_0|auto_generated|ram_block1a19~portadataout\)))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a27~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a19~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~0_combout\);

-- Location: LCCOMB_X24_Y23_N22
\image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~1_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (((\image_rom_rtl_0|auto_generated|ram_block1a35~portadataout\)))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & 
-- (\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs438w[0]~0_combout\ & ((\image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs438w[0]~0_combout\,
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a35~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~0_combout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~1_combout\);

-- Location: FF_X24_Y23_N21
\spi_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector97~2_combout\,
	asdata => \image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~1_combout\,
	sload => \state.STATE_SCAN_DRAW~q\,
	ena => \spi_data[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(3));

-- Location: LCCOMB_X23_Y17_N28
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (bit_cnt(1) & (spi_data(2) & (bit_cnt(0)))) # (!bit_cnt(1) & (((bit_cnt(0)) # (spi_data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(2),
	datab => bit_cnt(1),
	datac => bit_cnt(0),
	datad => spi_data(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X14_Y17_N30
\Selector100~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector100~2_combout\ = (\cmd_idx.00001100~q\) # (((spi_data(0) & \DC~1_combout\)) # (!\Selector101~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(0),
	datab => \DC~1_combout\,
	datac => \cmd_idx.00001100~q\,
	datad => \Selector101~6_combout\,
	combout => \Selector100~2_combout\);

-- Location: LCCOMB_X21_Y17_N8
\Selector100~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector100~1_combout\ = (!\state.STATE_SET_AXIS~q\ & (((spi_data(0) & \WideNor0~0_combout\)) # (!\Selector100~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(0),
	datab => \state.STATE_SET_AXIS~q\,
	datac => \Selector100~0_combout\,
	datad => \WideNor0~0_combout\,
	combout => \Selector100~1_combout\);

-- Location: LCCOMB_X14_Y17_N10
\Selector100~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector100~3_combout\ = (\Selector100~1_combout\) # ((\Selector100~2_combout\ & \state.STATE_SET_AXIS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector100~2_combout\,
	datab => \state.STATE_SET_AXIS~q\,
	datad => \Selector100~1_combout\,
	combout => \Selector100~3_combout\);

-- Location: M9K_X13_Y28_N0
\image_rom_rtl_0|auto_generated|ram_block1a32\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"101000000000855505111554500100000000000016EC6EA558329355505FC01044400000000001545445554514440000000000004EAAABA4843281550DFFD400444000000000025451511551444440000000000056ABBAB1903205547FFFD00055500000000008D544454554514444000000000016AAEE94A03941544C03500010000000000002555545151145111000000000000AAA3A9A2C390154FFFFF00044400000000000151451155550510400000000008DABBA88800900540FF0C000000000000000021544454544551451000000000007EAAA9AB1050154FFFFD00044400000000000255554555545451100000000000AAAAA6A200500517FFDF000",
	mem_init2 => X"15000000000000255D5545545451150000000008096A38EA806505547FFFF0005000000000000015145155555115444000000000096A9022A855015503FFF0000000000000000005551515545151111000000000297A1828A864954504FFF0000000000000000004455155451514440000000002077A9022AA1580D4003FC0000000000000000C095151555555440440000000002F7A9828A8B2A801407FC0000000000000000001551155554440000000000000157A920A222AAB64100FC0000000FC000030000544155518000000000000000029AAB4AAA2AAAAB51103F0000000F0000000000D114550000000000000000000803A6F2A8BFFEA8E0443C000",
	mem_init1 => X"003FC1C0000800095140000000004000000000002EFA92A290820EAD90000000443FFFF00000800850000000000801000000002006BBF98AC0A88EAE5A000000400CCF300022200B000000000000000000000108262ABB2B81578EAFFC40000000FFFCCC00002002000000000A15000000005020EF7A07ABD7C3078F3FD000034037FF00000032000000000002EE4000100001227D7AB2AA6A2088FCFF6000F003B7C03C00C288030000000002FB800000001048006ADEA98208A3BFCC540000FF7F7FFFE002300200000000007A400440004422802A2FA42DF7787DF77C00C3F5DD55F8EB0C2002800000000026801110441110ADEF5AB3FA20003DFE7D0003",
	mem_init0 => X"55FB5FE8D9F7F0304000000000080840040044581BBFEEB50808829FF5CF00F3FFF565545555996C0000000000000011111111600017B8B40020025FE4FFB03050BD55555555548A000000000008A080201185A8BFB60DB028088A4E36EFF0C003E55555555556602088000000000808448611A255B7F6F215552B6BCFFF70F0FE5555555555555186A8000000000210812041280697FDBEA02283DF32BBC03F35555555555555551AA80000000020421206165800161DA42AAAA338FBFB00033D555555555755A65690000000000210216161AAF5D701AB8AAEE30B6F2DA0C0155555555555569AD428000000022020461955ABFE5A7EA78BABD52FFEBEA003",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0_combout\,
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y15_N0
\image_rom_rtl_0|auto_generated|ram_block1a24\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"5755D555D555D57E16A00200000202061866968A107BBF8C0FA9DEFE6FAD603F755D5555555D5D345580008000000888616565A99D2A55885FDB9DF5FEF5C0FF9DD7575575D5D5555500AAA80002208215565599AAB9D3D7F6A6AAEFE7C7C2237555755D55555D5DD54B57098008082256659669EBA7AF546999997DABFEC0BF74575D555555D5D5756BD158C000226595AA6AAA912F49569AA9A8A2AEBBF20F7D5DD5D75D7577755C5B1D5428022169AA16A6927A291555665A88AAAAAA888F6D155D5575D755D7555707559C000AA995655997AAA7A75569A6AA2A55BB380F0655DD77775DDD55D553477406AAA85665556A6BBFABA95559A568AA95AB003F",
	mem_init2 => X"7991555555D5775D7556CFDD5F1082A5599595AAA537575596555A22AA975ECFFF2575555DDD55575453CD5D4FFF7EA56515655AAAA7555566A55A2A9A5BBEA3FB68555555555555555487D51FF7E0E65566595EB8AAA655999966A299DF788FEB555555555555555554C551DF5F36D11999656A2966AA559655568A69DF123FE7F29555551555555554DFD7E80B4279555555615567555565555D2A95DF70FF5E755555551155555554FF7DFF3FDA055555556A8AE7555559A555AAAB7F1CFFD6754555554455599555335F7DFFF4245555555EA8A6BA55555555AA9B7D51FF6FD4645555540590005537D5F557780D5555554A2967BA755555556A6B7D13FF",
	mem_init1 => X"577559555545560620155DDDD5555ABB5555555AE47555555565556A9A7F11DD75758515556568168015535FFFFFFDA6D555557A8F2AA5555555556A99BF5B7D7B955555595566146015519DF777FF21D5555563BAAAFB55555575E995FFBD5F5F7D54555555A816081557CFF7FFF6AF55555566A96B6AD55555575AA9DF67F555F5455556569816210555EFFD596AB255555568A92B55D5555555599B7F4FFF5EB7F7555599995868055557EFBBF7E35555556AA3ABEE5555555F5A977FCFFD7E2AE555515560660605557DFFFBF333D555554AF2AAEE55555555765F7F63F7758ABF5655550594981555D6FFFEA55DD5D57596926AAB5555555556557FCFFF",
	mem_init0 => X"5DAAD59D5555559618055555A2A2FFB3D555558003BF55F55555D75DD7DF6FF755EAF7775555555A62455555658557555555558922EB6E555575555557FF6C5FD5EABF59555555599895555556555555555576AA9B17BE955555555757DFCC77DFF2FFD1F555556621555555455555755555D5EF7DD95575D55DD5555F7F63F777FA77D5155555562695555651555555555556203B5E5575575557D7D7FF63FF3FFAF7DBF35555694A95555594555D57555D53B232755FD75555555D57FF5FFFBFF7FD76FFD55568A955555569555555555549589D55FFD557575D555F7DA3FFFFF73F5F76D5554AA555555655555755557576FB55515575555755D755FDACDD",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode216w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y11_N0
\image_rom_rtl_0|auto_generated|ram_block1a16\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"5FFFFFD5D7D5552559555555A1555575D5555A30F251B7957555755577FD63DFE7FFCF55FF9556856555555965555D555555D99B8E51FF95D75D5575DDFE0FFDB7FFFF57EF557695555755669555555757755995565D9F955555D7D5D7DF8FF5A7FF3FD7FBE5D69545555599955555755555D3FC2D5D5575775D5D5D57FD0FF5AFFF3C7F7FF9C69555555555A5555755775DDB3CFE3EB7F555555755DFFFA3FD57FFCF5F7EFF5545555D555695557575D5556A5A0502EFF5D75DD55757FF01F7FFFCFF7D7EA35555155555665555555555D543B5540ABF95557555DD77FFFF75DFDFFFFB6BF55554DD555555955555575555FFFF2E30557575555DD777FD5FF7",
	mem_init2 => X"5FFCCF7F9FEB55155595555955555D55555557B152ACCCF7575F575DDF7D7DDFFFFFFFFDFBF7555155555555555555555775BB576AABEBD5D55575D777FDDDDFFFFFFFFF97BA755554755559555575D55575FF53ADFFFF555D7D5D7DFFFD1D57DF73FFFDFFD5D55555555655D55555555D5441FF7DDFBE7755D5577777FD8557BFFFFFCFB77A755D55755555545555D5D55757F965FF72B7555775D7DFFD1D5F29FFFFFF7FE5F655555555555555555555745C65757DFF55DD5F5777FFFD3FDFAAFFC3FCF7FEA755515555555555557555FCF0FF59FFFF57F5F57577FFFD3F75A7FFE9FF3FF7A55555D55555555555555754D900197FFE97D75D55FFFFF535F5",
	mem_init1 => X"FFFF62B00CF7996DD15755555D555555DDF4EC71F9F776B7BDD557DFFFF5FF77BFFF26943377D657D5555555D5555D555D74FE5819F5F7EFBF5DDF7FFFD6F55D9FDEAAA44DD9A7675575755754D5557777D7E5E9995FF8F43FFDDFFFF448D5D53FFCC8A9039B9BDDD1575555455555557D565D7F2B55F99C7F777FFF4955757D9FDA2A851976EFFF554D51555D555759DFAF55DD39777E347FFFFFFC15D27D559F5264A558ADF755D5575D4D5D555555DDD555D57B5FFFFCFF7FFFC17C2BD55DF54FC2271A69E57754D555D55555556775155D5539DFEFFB2FFFFF1D8067D555FDFE08CD12167DFF7743D55DD555595DDED555556BFD6FFEDFCFE3F01475F5D7",
	mem_init0 => X"F56EA8871401EF7FF77557755D5555555355D565EA7DE5F21F7C9C0127DDDFFFFF88030D2A89AD2623FF73537455D5975555759D53D5FBFA1B1AC85C0F5FFFFF75B2AC8F42AAA796561FFFFFD755557D4F555277430195FC981C07800DF7DFBDFBBFC8AC6A2AA7F55F2909FFFF5557DD55575871D36C477615E0560017DDDF7556AE89254AA0A4C1D7778A00BFD577F55D55873FFFEAD75EB03F60005D757B55CEEE30957EE95C4CFF6C55E28BF5DD7557578F4F7F7C856E8F54A80757D566556A62001D8A00ACCCF3FD741B622377F5555CD7FF3FF23527D4377D77F9666655C072C2970809A713CF7DF75D56945FD55577AFFFF7FFA5B9FF7757FDEDDB5955",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode205w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y17_N22
\image_rom_rtl_0|auto_generated|mux2|muxlut_result0w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result0w~0_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a24~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- ((\image_rom_rtl_0|auto_generated|ram_block1a16~portadataout\)))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a24~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a16~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result0w~0_combout\);

-- Location: M9K_X13_Y13_N0
\image_rom_rtl_0|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"DB28E53F0FE88F30FFFF9DFFF105BF56654975F75FFD278EFFFDFFDFD57E25A15C5BC21F67F7F5FFCFFF5FF871FF7FD556CAE7FF77FCC2FFFFD7FF7655FE0161D628A05738A00B33CFFA7FF006AAC97557067BBF7DFC97FF77F56EDD6C804646D7A3CC7DE8A2ABCCFCFDFCF00A80BFA5541999EFDF7F3FFFFEAFDD5596304821DDC21B7DA2AAABC3332FF3F5A677ACD550262AAFFFFC1FF557FFE6F958C00085756B77FDF820AB3CCC17CFF4848AA095DA6AAFFFFDFCF75FF3FFFFA555400501F757DFFD5017E7CCCC333FFA0E2A8BCA8080FE2AFFFCFF757BDAA565554100005FFFDD7DC22AA30F33C3FFF80C8AAAFE402F6CAA3F7CF75568BFF3F155504000",
	mem_init2 => X"7FF5F77D7AAAA7CC4CCCCF4006A2A2BC434FFFB8FBDCFD57BCCFFFC15550514057FFDDBF5A24A7030333D8A8280AAEB9E1B2A3FF7FBCF5FC0FE3B3F9555544025DFDEFF5F7CFAFF303CF6AB08AAAA22A084202BFDE9FF7B2A33FFFF9845554415557F8B7DECAFF3C1F1380220A2626882A82026FFD93DDBCA3FFFFFF20051002DDFEA3AD75AA7FFFC33F8FA304A8AC8A220099BFFF557AB32FCFFFFFFE1144005FF66AAF75F8FFCF333FAA9D501FA6822A9817DFFFF5CCBF0C0FEFFFF045140057A02A8D5F6B7FFF0FCD2AA20A82AC62A2697F2FFFFB3ABFFFFFFFFFFF11010052982AAD5FE3FFFFF33360288629894A22BA2B2BFFFD6C11417ABFFFFF044400",
	mem_init1 => X"5529000175DF7FFF3CFFD82826A90842229A8003FFFCCABFBFFFFFFFFC1444005D2329903DDDD2FF4FCFF7E8BBEE080822202EABAFFF0EA3BFEFFFFBF00444005754009485DDE2DFFF3FFFA8E822880628880A9FFFFD00BFAA2FFFFFFC510400555480BC67550AFFDFCFE2AAAA0A1280AA8040BFFFF9A37FBFAFFFFBF004110075565D00955E587DFF7F602807A94B00A88009BFFFF9154F3F2FA0A0E0104400DFDCA209555426FF7DD30A0A06200110222AEFDFF7FD3CCCBFFFFFFFF8001400DDD4411D55500777777766AF50FD736082AFBBAFFF7D1C00838CFFFBFC1000005755505555D390D77FFFA8AAAA2838000800E7AFF5FD31033FFFFFFBFC001000",
	mem_init0 => X"5557D55F5D51505DFDDF3E08EAA09B4000002BEFFF7D085741237AFFFC0004005557F577557F44DF7F7DFFA784828E0000000FFFFDFF1A43FFFFFFFFFC0000001557D5555548625DDDFFF3DFE6A2A44000028DDDFFFB7A60BF3FCFF280000000E5555555155089555F7DFD7EA08EA1400660AD5FFFF74A6B3FFFEFFFF0000400FC57D5555551455DD5FDDCD4A2EA81051F70AD57FFEFDC3FFFFFFFFFC00410009A157555455400777DF5FD360A823374C638AF7FFFF4684CFFFFFFF044014400FC05555555555175DFD8DF4D003A731F2AEC8E4D14FADD4BFFCFFFC00000450028C555555555005D7D77FD1C55DF83152217A6815CFBE1D20E0FFFC454011440",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode194w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y22_N0
\image_rom_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFBFFF5D55555155DF5A9FF005A8830007A9EF3FFFED13F4FFCFFF8655404400FF00001555555C445DF6CF4F47F6A340000B2F0EBEE96ADF5F5DE66555045100FF303FC95555755DDF46CFCF03F6A14800012AFA1F7D24DF7FA0899555445140FFFCF000555555DFDDD67BF33FFAA340820AAABFFEA574D5F30975955F005514FFFC0F005555557D57446FCFFFFA0340000A2ABEFEA868F5FFFD555540004500FFFC3C00095555D4F477DC7FFFDA0180002288AFFFAD0B5F5F57555550001440FFFC0005545555D555D45C1FFFFA0100008022BBFFB82C9DFF5D555500005500FFFC3F02000055DF51DD71DDFCFA8140220808EFFEA4B777FE75559551011100",
	mem_init2 => X"FFFCFFC0080C1D5D5555DC2B8BAE14C0080A02ABFFFEA57FED55555955001100ACF8FF30030C01555175759582AE10CA208888AAFF9886E7FFDE955A50000100FFF0308055500755D575D516AAA2240E0AAAFAAABAF44FABFEBBFCFF40100000FFF00200C00001555D55510066A6268EBFD7EFBBFF954B2BFE3C30CFC0000000FFFFF3C0020040DDD5D55508A03EA522DA22A82AB9B36F03F7FA8C03C0000401FFFFF3EA01004A555D757555017FA88AE355D7DDE21B1E8BDF78820C00000100F3FB000085A2A955155440845976A8E3B75FDFDF685CFFAFFD6104C000004400FFFF03C30117555557775555143FAEA9DB75D6CDDA09DD5FFDD40CCF18010000",
	mem_init1 => X"3FFC1540155D57DD7557F30110C7EAEFDECFFEDC0BFFFFF7FDDC004084100000BF3055D75555555455DD53C4047522E6F76AFD75E6E5FFDFFFDDD40C28010001C0091555D575D775DDFFC7F1111FFAEA122ADFD77AB7FD7FFF5D7F60015414410001555557D5770577F4D3FF44471EAAAAAA5F7729937DD5EDDD5555569810500002555755555F17D5C7515F41115E8AEEAAEFFF59F9FDD70FDFFDD55554015006155555F577DF557F7F4DC0755555229E97930AFE2BF55D0FFFD5F55545554055555577755DDFF7FFFF6815D055554CFFDFA8EB227FFFDEA2F7F55D55645551545555573385F755FF15D450955555779CF296FF07FFFF5DDF7DD55555455510",
	mem_init0 => X"5220558C0221DDF47F33157028955557D72582FFBF7FFFD55D55D5755555555040F088F021827FF337FFDA82561D55555542F8B5FFCF7D555D5D543FFD55555445082850A28A77D57FF106280AA8555DD5757D57FFF5D7D55555300031555550685B0F21AA81B7FFFF3CF62A8A20950025155755FFFD5555557430000155555498840CAA68221DDFFFF33FE0CCA010001003D557FFDF5D5D57E00CFFC15555555A89432C081A17DCF371FFEAEA0A8028102A3577FFB8A10014003000055555555882A9000854775DF7FF1D80A021A000200029DF722A89000000003015555555650995775A297FD77FFC768A0A08802176A8237FAA282A000208003055555555",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode176w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y17_N20
\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs294w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs294w[0]~0_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(1)) # ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a8~portadataout\)) # 
-- (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a8~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs294w[0]~0_combout\);

-- Location: LCCOMB_X14_Y17_N8
\image_rom_rtl_0|auto_generated|mux2|muxlut_result0w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result0w~1_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (\image_rom_rtl_0|auto_generated|ram_block1a32~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & 
-- (((\image_rom_rtl_0|auto_generated|mux2|muxlut_result0w~0_combout\ & \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs294w[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datab => \image_rom_rtl_0|auto_generated|ram_block1a32~portadataout\,
	datac => \image_rom_rtl_0|auto_generated|mux2|muxlut_result0w~0_combout\,
	datad => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs294w[0]~0_combout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result0w~1_combout\);

-- Location: FF_X14_Y17_N11
\spi_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector100~3_combout\,
	asdata => \image_rom_rtl_0|auto_generated|mux2|muxlut_result0w~1_combout\,
	sload => \state.STATE_SCAN_DRAW~q\,
	ena => \spi_data[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(0));

-- Location: LCCOMB_X24_Y23_N12
\Selector99~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector99~1_combout\ = (spi_data(1) & ((\state.STATE_SET_AXIS~q\ & ((\cmd_idx.00010010~q\) # (!\WideNor0~0_combout\))) # (!\state.STATE_SET_AXIS~q\ & ((\WideNor0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \cmd_idx.00010010~q\,
	datac => \WideNor0~0_combout\,
	datad => spi_data(1),
	combout => \Selector99~1_combout\);

-- Location: LCCOMB_X24_Y23_N18
\Selector99~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector99~2_combout\ = (\Selector99~1_combout\) # ((\state.STATE_SET_AXIS~q\ & ((!\Selector99~0_combout\))) # (!\state.STATE_SET_AXIS~q\ & (!\Selector96~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector96~0_combout\,
	datab => \state.STATE_SET_AXIS~q\,
	datac => \Selector99~0_combout\,
	datad => \Selector99~1_combout\,
	combout => \Selector99~2_combout\);

-- Location: LCCOMB_X24_Y16_N20
\spi_data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[1]~feeder_combout\ = \Selector99~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector99~2_combout\,
	combout => \spi_data[1]~feeder_combout\);

-- Location: M9K_X25_Y18_N0
\image_rom_rtl_0|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FF7FFFA2200084008A05CAAAA0FE75AAA5576D575F69E8A3FFFFFF5B003D33F7FFFD57C88000092208AB1A2A2223FD6AAA8927715D79E082000819B000F10C55FFFFFFDE880020888A2B12AAAA21756AAAA102F7E187788ABF5F5EC200910C15FFFFFFDD2080008A88810EAAAAA7756AA8A08297F627DA80BD5E8AE02FFD00C1FFFFFFDF02000028022BBAAAAAAD756AAA82021EFEAB72A00002AA883FF530DDFFFFFFFFD4800082A2280A2AAA85772AAA288885FF2F5A0000A88A282FF5C335FFFFF7D8ABA8008000818AAAAA87DF0AAA202219FF29724800A2AA8057F500D5FFFFFFFDFFFF808A088A2888AA855F4A88200845FE27F020038AA0C004F4CCDD",
	mem_init2 => X"FFFFFFFFF57FC008000089D45ED16BCA220002A1FF17C008102AA80C00F5CCD55DF7FFFFFFFFD400082020E87F596760802208A07F9D61500003E2AF05F55CD7FFFFFF55A827D0008020804BFFF959DE0088D2009A5E6AD4017DFFFF35455575FFFFFDFFF7DD7C00080008FDB95D7BD1DFFD5793FDEA9E5C03F57FFFD5D55D77FFFFFFFFFD7F950880802AD5F569FA77AF55D5D5DDD8BA54080F7FFFD775517CFFFFFFD5FEFF150008202AAA76297DD734AA2022B75021D400B77DFF55D574D7FFF7FD55725D5E0080022F718CA3DD944AA88800B576A2F0023EF1FF5555115DFFFFFFFFFE480200022202A262AB55DC86A88B902F2228000223FDFF4554555D",
	mem_init1 => X"FFFF421560880A882002AAA88AA0575A8398032B5D500802000F7D15514555557FFFA028A000200222AA0AA2A228155B2A9F2A003148AA80002229FFDD545554FFDC6AAA2020822088AAA2A8A8881F7D457528A83200A8080022809D54014114F5542AAAAA82225022A28AAA2A2287FF5D57808075AE280030A22AAA83CD4505555722A8A0008842A0A28A8A28882A5D1B7F10000524A8807000022A80015405534002AA00228A882AAA28AA20000097EBE0F9DD011EA0005C002A0AA010001500800A88A0088A82AAAA97688A0002350020551DA2AA2A03550802A2AA3100040102AAA8FF50A208AA88210F608000229D0F7D5828AAA20020000A2AA810004F",
	mem_init0 => X"A5DFAAFD55DE88A22AAA8887D742000280028285828AAA000002228AA800082F97FF77FFD6D72AAAAAAA8D57A14020002828022A2A2A2800000A29FFFC80020318775D05555FA288AAA8A175555780000020A8A2A2A28280200AFFFFFC00888F3D27FFD45576E2AAAAAAA35DD57FC0FFF88002208AA80000800BFFFFFE222889EDD15F55BDD7688AAAAAAA35557FEFFFEFFC0802AA8A08220015FFFFFE2808A28FDC1FDFDD4F428AAA28AAB53F557FD7E5D5C022AAD754FFC9FFFFFD7AA88A8A0DD7FE5F55A9A208A2AA8A55F576F7FFFFDFDC8A0777DE77FFF7FFFFCAAA0822305CEA8005D60A822AAA21D555575FD683D7D42AF77DDFFFF5F7FFFFAAAA8AAA",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode176w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y12_N0
\image_rom_rtl_0|auto_generated|ram_block1a9\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"A755FAC0F555DAAAAAA060080EAFC0017079575FFDFCE25DAAA802202ABD78F40387FD60B828A2AAAAA028828A0090002A626557FFFE41AAAA808089A2FD543401575D08F77556AAAAAFAA0AAB55BA0081865997FFFC82AA222019A2BF7F9393815FFD82D557F6AAAAA8AAAA557542F084999965FFFC8AAAA95880AA61FF1D74821D64827557F6AAAAB2AAA25B8252009A042AA7FFFE2AA001DFD9062FFF55D002958802F7F5F6AAAAA2AAA9D95F76009840A55FFFF6A20AAF5FF7FA823F585488A80000A02A12AAAA8AAAAF515FDE25C000557D7DFEAA202C075092A8BED55500002A807DD576AAAAAAAAAD597FFFA98825D5FF5FF6A200177FFFF68A2F1555",
	mem_init2 => X"800208800FFFF0AA2AAAAA08A1F7D7CAA1655F5575FEA8007F7FFFFE0A8F0615820022C005D152AAAAAA8FDD5D7FF344A19021F5FF7CA0A9FF7F77F42200B15500021F000010DAAAAAAA1F455D5F757F2A60A09FFEB4A265DFDFF7F6D12001948008F540A357AAAA8A8AD5555D5B795DAA80AA67FF28885F5FFFF7FFF570CD5588035F70A07D2AAAAAA85575D35D55DDAA0219975FE225DDDDDFFFFFFFCC3155080BBF700085AAAAAAAA7F48AAAAFBFFAA921575FD52FDDFFFF7DFFFFFB0C35D0B55D7780A3CAAAAAAA87F775D5755B5A26155D7DFD2F7FFFFFFFFFFFFCCDCF50F6DDD700AB6AAAAAAAA977D595EDC95229029D7FFFEB899622777FFFFF33375",
	mem_init1 => X"027E7756008A2AAAAAAAA57DD95C5D2A08BDFFFF5FF477FF7FFFFFDFFFC3335D02F7DEE74888A7AA2AAAA8155DD7F408008AA5FCDFF47FDF7FFFFF755FF331550009FFEBD888978AAAAAA97D5D57D6860202AABFFFD4FD5F557FFFFFFF0CD35D080355C1BA00F7AA8AAA957D5D576A80002AA01FFFF05E3F5F7DF5D7FDF3CCD5000BA255E02B2D28AA2AB57D58FE9982822AA9BFFFF0FCBFFFF7F5F5D745335D00035DDE082B53A2288AD55DF1DD63128AA2657FFFF4DC3F7FDFFFF7FD75C3FF20299C60022F7822222299F2A0A813422805D577FDF6FE3F7F7FF55FFFC5FDDDA88A8F2000074D822AAAFD5D5555D822A2A86C35FFFCF4BFFFFFFFFFFF7DCF7D",
	mem_init0 => X"AAA80A0A0A26AD08A88AA3555F55716AAAAA8BDFFF7ECDC80992AF57FFFF73FFAAA8002200BC330A2A28A8F95957C7AAA8A8A7FDFFFCCFEFFFFFDFFFFFF5DFFFCAA8202202B59D0888AAAAAA1B577D62A2280FFF7FFA0FEF7FDFFFF77F755FFFD0AA8002A0AF76800A28A8A95555576AA64A2FFDF7F89FE5FFFFDFFFFDF573FF7FA80880A02CB08880A88A815757EFA7555A2FFF77C88DE7FFFFDFFFFD71CFFFED4A8802A08B572228A0A8A15FD7DD567852ADF5FF7A9A9F7F7FF7F5135C337FFFDAA20000008A208A858A28F5F7DD958A560DDFFD5B82B5FFFFFFF555D730DD57DAA8800000FD082820A88A000AFD95577D2D5C01F85A257D5FFFF10154C315",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode194w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N6
\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs342w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs342w[0]~0_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(1)) # ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a9~portadataout\))) # 
-- (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a1~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \image_rom_rtl_0|auto_generated|ram_block1a1~portadataout\,
	datac => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datad => \image_rom_rtl_0|auto_generated|ram_block1a9~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs342w[0]~0_combout\);

-- Location: M9K_X13_Y16_N0
\image_rom_rtl_0|auto_generated|ram_block1a33\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AA9AAAAAAAAAA52208222AA8A0020000000000002B3D5D7AA00559555A880A9AAAAAAA2AAAAAA988888AAA8A28880000000000008375577808056955A0A8A6AA666AA8AA2AAAAA2822222AA28888800000000000A1D775422005A5564AA2AA2AAAAAA228A228AA02888A8AA8A2888800000000002375DD48000569564002AA209AAA2A88888AAA48888A2A228A222000000000000FD575400805A9568AA002AAAAAAA0A0808AAAA008A22AAAA0A208000000000000F775C00015AA56A200828828A2AA0A282AAA82000A8A88AA28A20000000000023D55602015A956AAAAA8808AAA22A22828AA988AA8AAAA8A8A22000000000000DDD5000015AA592AA08A28",
	mem_init2 => X"A6AA880002088A9022228AA8A8A22A0000000000029D20800015A55668A280808AAA888280082A9008A2AAAAA22A888000000000029F20000015A9558AAA88002AA8222008020AA2202A2AA8A2A222200000000002BF20000016956586AA8000AAAA880880088AA00A82AA8A2A288800000000000ABD200000106A56AAAA800022A0A000202008A480A2AAAAAA880880000000000ABF200000000029626AA000AAA20AA2080208A42A22AAAA888000000000000020352000000002169A828000AA20008A00200024082AAA20000000000000000000DDC8000000002199A88000A820002220000A86228AA00000000000000000000037BA0000020009A6688000",
	mem_init1 => X"2A80028082000008A280000000008000000000001DFFE0002FD7F00050A8008046A00000A0000088A000000000000200000000000BFFFE00157DF001642800006A00080220000008000000000000000000000200081FF602DC82F00000620000AA288A00800000AB00000000002A00000000A0001F7D0A00003CF802001000006AA08022A000208300000000009B800020000200BD7DE000BF75DF2000100000A06200AAA8800221000000000086C00000002080009DDC00D77DF7E280040000282A22A0800020020000000000AD800880008800001F3C09F2008F800040000000880802020A02A20000000000080022208822205DDB200C0FFF7FE8A1210000",
	mem_init0 => X"00A6A0025420DA2A8000000000000080080088A027F358225D7DD7BA018880008AA052A8AAAA221600000000000000222222228000130C29555554B0342000005A00A22AAA2AA800000000000000000000220A007F730A05DD7DDCB3D0888008021222888AAAA88000000000000000008808220055B1788FC000FDF5EAA88002A92088A228222AA208000000000000200200820003D17223F557FD7780200000A0002222280082AA2000000000000080200828A0001122097FFFF7BA62A0000022220000800000D3A82000000000002002828200D5D302005FD5CAAB8A01000A80000002200001D5E8000000000000008822AA02565E5000F5A828ACA81D402A",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0_combout\,
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y13_N0
\image_rom_rtl_0|auto_generated|ram_block1a17\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"08A2AA800380020AA2A022AA02AA0020A00026AAA320EAEAAAAAAAAA88AB4A8A5288AA8280E2800A8AA02AA288AA280082208227A120AA6AAAAAAAAA2AA9A2A8C22A2A0018420822A8A20A882AA2000202202C2AA1289DEAAAAAA8AAAA882220D280AA80269008228A802A222AA2802008000AAAAD20A2AAAAAAAAAAAAAA20A07A2AAA0002A80800A2A00AAA02A882002208AAAA22AA97EAAAAAAAAAA2A00AA80280AA0081A82A0222802AA82AA8A028800080A6A1AAAA6AAAAAAAAAAAA8A8A2AA22AA0289582A8022802A88A2AA0000028029CA0AAA956AAAAAAA2A8AA022208AAAAAAC94200A20A8808AAA28AA00020020A8AAAEAAAAAAAAAAA2AAAA82AAA0",
	mem_init2 => X"0A22AA2A601C002A00008AA28AAA0800800080580AA6AAEAAAA2AAAAAA8AAA8AAA88AAA8A400000200808AAA8A2A000802009C8035576A6AAAAAAAAAAAAA28822AA8A0A8E8E7002208808AA2A8A220A200208A095D5F76AAAA8AAA8AAAA2A8008AAA22A8002000222280A8AA8A0880080800B820088A97AAAAAAAAAAA2A220005AA8A8AA48A5000002202AAA00A228A0800AAAA565FF5AAAAAA8AAAAAA82A800F4AA22A20A9003002200AAAA02220A2000022A70957DF96AAAA2AAAAAAA0AA8A5FAA962AA2A9F00002020AA82222A220000A0F2019FFDAAAAA2AAAA2A220AA2072AABCAAA882700002808AA80AA88A00000885AA197FFA6AAAAAAAAAA888A8A0",
	mem_init1 => X"8AAA17EAAAAA4C30020222A2280AA80000049A2219F77AEA6AAAAA8AAA88AA22EAAA59E2AAA283000A208AA082A228000006019A99F5F2004AAAAA2AA829A808EA8B7F7228847030022222A220AAA00000001A96995FDF2B5AAAAAAA8B1C808068A95D5CAA444C00020288880AAA80000005A2822955F603DA2AAAA8BFF420204A877F588C81900020888228AAAA000C00D82A209957708BDAAAAA237F5328004A07B3580D72200088022A882AAA0000000AAA001957D00BDA2A88BFD60C8000201FD5D88FB614002088A2AAAAAA8030002AA201595DE008BAA2A8FDA0BA0000A81FF7908769A8002A02AAAAAAAA0C00012A880759756A8AFAB21DDA21000008",
	mem_init0 => X"A01DFF5A82881800A2208AAAAAA800000480005F595DE20EB8EBFC8258200000A855DF50B5DED893FC2A2282A8A800C00AAA817FCBD56606BFED60A3F08000002AFDFF5215F7F24AFFE02A2A8AA0000010820DFFEAA9880A3D768A7F72082042AF7FFD721577F2A01F7EFE008A200000022237FF461BAA8A3F6801F74022A08A03DD76703575F2A8827D5FFFE288000022A27FD7DDD742829882B7FF228A84A21F1FDF681DF42A2AAA9AFF77FC80000028A17577FFF7DA92A28357F8882AB9AA9597FF625FD5FAAAAA802A9BFDFC00002AA75557FFF3D2F8AAA22808069BBBAA9F3FFD60555CF28AAA022A8A7FFF00002A9DA557FFF7D2442A22000212272E80",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode205w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y19_N0
\image_rom_rtl_0|auto_generated|ram_block1a25\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"400000000000013F400000000000000820882800209FF07157222B8889C4008000200000000002498A00000000000000828A8A00C02FA85DFF7DE28AB41AA000400000000000000022000000000000002AA8AA21AA9DC07FDD080008CAFA20084000000000000000008080D400000000A88A2882B5A2AEA8822222AA0108A0008008000000000000888227FF0000008A2A00800022298428200200000802A0220A820000000000000022E7FDC000028200280821752D2AAA88A00000000060209A000000000000000008DD7FE80000022A8AA22BAAA2AAAA82080000AA25A022A0A02000000000000002955D580000A88AAA808275AEA6AAA20A80002A008088",
	mem_init2 => X"0C2000000000000080001555F5F55C0AA22A2A000A21AAAA28AAA00000282022820800800220000000021555755FD50A8A2A8AAEAAA1AAAA880AA00020A2680A8C0000202000000000001555D555D788AA88A2AA9AAEA7AA22228800222A60228C0A0022008800008800B55D7555436222228A8002A2ABAA28AAA800822A288A80202028082A8A2000002555555CB7C2AAAAAA82AAABAAAA8AAAA2002A28AA220302AA8A8822A08A8800055555D5777AAAAAAA8AAA63AAAAA20AAA0000A8020A83228AA88008AAA22AA0055555555D78AAAAAAA6AAAAABAAAAAAAA0020AA8A8A0000888AA2A80A20008029555555555AAAAAAA8002AAA9AAAAAAAA8082AA0AAA",
	mem_init1 => X"000AA2AAAA8AA808002288557FFFF5DDAAAAAA8A78A1AAAAAA8AAA8020A8AAA824020A2AAA8A8028002800D575555F7B0AAA888AAAAE90AAAAAAAA80222A62A8A1C0AAAAA2AA8828802A00355555557728AA22827AAEABAAAAAA8A022AAA4A0A0048A8AAAAAA002800220A957D55DDF58A88AA8802AFBFAAAAAAAAA0022A08A000100A8008A820280200A0855FF7D752AAAAA8AAAE2FAAAAAAAAAAA220A888AA09432208AA2222A08008882965995D54800802AAAAAEADAAAAAAA2A02AA208A82955700AA2AA8088080A22A35559513D8020AA83DAAEAAAAAAAAAA88A22888A2205D4C08AAAA0A28202800885554A037AA8A202820ADF7AAAAAAAAA8AAA80AAA",
	mem_init0 => X"087DA9C02002AA28200A288A000080C0882080AAAA9BAAAAAAAAAAA228AA8222009FA04000202AA08088022A8A0A222A0A082269AAAE2AAAAAAAAAAAAAA8828A00BF6A1C000202A2202A08AAA88AA808208020002C86AAEAAAAAAAA8AAA80A2202872A890020228802A808AA8AAAA022080280D8A8880AAAAAAAAAAAA2A888A2A2AFA2AA902A0AA8082A22A8A2AA8000020809AAAB092AAAAAAAA8A8AAAA8AAA6AA7A286A8808A82802808AA28AA0802882802AAA9200A6AAAAAAAAAAAA82AAAEAA2A829A8208A8002A802AA822A8002082002A02808AA6AAAA8AAAAA2A2482A6A82AA2A2B8A80800AA80AA8AAAA020002202A7CA888AAAAAAAAAAAAAAA84288",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/TFT_LCD.ram0_TFT_LCD_d542bdfd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:image_rom_rtl_0|altsyncram_1471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 40960,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \image_rom_rtl_0|auto_generated|rden_decode|w_anode216w\(3),
	portaaddr => \image_rom_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \image_rom_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N28
\image_rom_rtl_0|auto_generated|mux2|muxlut_result1w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result1w~0_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a25~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- (\image_rom_rtl_0|auto_generated|ram_block1a17~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \image_rom_rtl_0|auto_generated|ram_block1a17~portadataout\,
	datac => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datad => \image_rom_rtl_0|auto_generated|ram_block1a25~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result1w~0_combout\);

-- Location: LCCOMB_X24_Y16_N26
\image_rom_rtl_0|auto_generated|mux2|muxlut_result1w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result1w~1_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (((\image_rom_rtl_0|auto_generated|ram_block1a33~portadataout\)))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & 
-- (\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs342w[0]~0_combout\ & ((\image_rom_rtl_0|auto_generated|mux2|muxlut_result1w~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs342w[0]~0_combout\,
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a33~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|mux2|muxlut_result1w~0_combout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result1w~1_combout\);

-- Location: FF_X24_Y16_N21
\spi_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_data[1]~feeder_combout\,
	asdata => \image_rom_rtl_0|auto_generated|mux2|muxlut_result1w~1_combout\,
	sload => \state.STATE_SCAN_DRAW~q\,
	ena => \spi_data[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(1));

-- Location: LCCOMB_X23_Y17_N2
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Add2~0_combout\ & ((\Mux0~0_combout\ & (spi_data(0))) # (!\Mux0~0_combout\ & ((spi_data(1)))))) # (!\Add2~0_combout\ & (\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Mux0~0_combout\,
	datac => spi_data(0),
	datad => spi_data(1),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X23_Y17_N18
\SDA~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SDA~1_combout\ = (\Add2~1_combout\ & ((\Mux0~1_combout\))) # (!\Add2~1_combout\ & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \SDA~1_combout\);

-- Location: LCCOMB_X23_Y21_N2
\SDA~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SDA~3_combout\ = (\SDA~2_combout\ & ((\SDA~1_combout\))) # (!\SDA~2_combout\ & (\SDA~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDA~2_combout\,
	datac => \SDA~reg0_q\,
	datad => \SDA~1_combout\,
	combout => \SDA~3_combout\);

-- Location: FF_X23_Y21_N3
\SDA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SDA~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDA~reg0_q\);

-- Location: LCCOMB_X23_Y20_N0
\Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (!\state.STATE_INIT_CMD~q\ & ((\RES~reg0_q\) # (!\state.000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_INIT_CMD~q\,
	datac => \RES~reg0_q\,
	datad => \state.000000~q\,
	combout => \Selector36~0_combout\);

-- Location: FF_X23_Y20_N1
\RES~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector36~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \spi_data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RES~reg0_q\);

-- Location: LCCOMB_X22_Y21_N0
\Selector101~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~2_combout\ = (\cmd_idx.00001001~q\) # ((\cmd_idx.00001000~q\) # ((\cmd_idx.00001011~q\) # (\cmd_idx.00010000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00001001~q\,
	datab => \cmd_idx.00001000~q\,
	datac => \cmd_idx.00001011~q\,
	datad => \cmd_idx.00010000~q\,
	combout => \Selector101~2_combout\);

-- Location: LCCOMB_X23_Y21_N12
\Selector101~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~3_combout\ = (\cmd_idx.00001111~q\) # ((\cmd_idx.00001010~q\) # ((\cmd_idx.00001101~q\) # (\cmd_idx.00001110~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00001111~q\,
	datab => \cmd_idx.00001010~q\,
	datac => \cmd_idx.00001101~q\,
	datad => \cmd_idx.00001110~q\,
	combout => \Selector101~3_combout\);

-- Location: LCCOMB_X23_Y21_N30
\Selector101~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~4_combout\ = (\Selector101~2_combout\) # ((\Selector101~3_combout\) # (!\state.STATE_SET_AXIS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector101~2_combout\,
	datac => \state.STATE_SET_AXIS~q\,
	datad => \Selector101~3_combout\,
	combout => \Selector101~4_combout\);

-- Location: LCCOMB_X23_Y20_N4
\Selector101~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = ((\cmd_idx.00000011~q\) # (\cmd_idx.00000101~q\)) # (!\state.STATE_SEND_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datab => \cmd_idx.00000011~q\,
	datad => \cmd_idx.00000101~q\,
	combout => \Selector101~0_combout\);

-- Location: LCCOMB_X23_Y20_N30
\DC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DC~0_combout\ = (!\state.STATE_INIT_CMD~q\ & \state.000000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.STATE_INIT_CMD~q\,
	datad => \state.000000~q\,
	combout => \DC~0_combout\);

-- Location: LCCOMB_X23_Y20_N14
\Selector101~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~1_combout\ = (\Selector101~0_combout\ & (((\DC~0_combout\) # (\DC~reg0_q\)))) # (!\Selector101~0_combout\ & (\WideNor0~0_combout\ & ((\DC~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \Selector101~0_combout\,
	datac => \DC~0_combout\,
	datad => \DC~reg0_q\,
	combout => \Selector101~1_combout\);

-- Location: LCCOMB_X23_Y20_N10
\Selector101~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~5_combout\ = (\Selector101~1_combout\ & ((\Selector101~4_combout\) # ((\DC~reg0_q\ & \DC~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector101~4_combout\,
	datab => \Selector101~1_combout\,
	datac => \DC~reg0_q\,
	datad => \DC~1_combout\,
	combout => \Selector101~5_combout\);

-- Location: FF_X23_Y20_N11
\DC~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector101~5_combout\,
	clrn => \rst_n~input_o\,
	ena => \spi_data[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DC~reg0_q\);

-- Location: LCCOMB_X29_Y22_N4
\CS~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CS~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CS~reg0feeder_combout\);

-- Location: FF_X29_Y22_N5
\CS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CS~reg0feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS~reg0_q\);

-- Location: LCCOMB_X26_Y21_N24
\BLK~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BLK~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \BLK~reg0feeder_combout\);

-- Location: FF_X26_Y21_N25
\BLK~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BLK~reg0feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLK~reg0_q\);

ww_SCL <= \SCL~output_o\;

ww_SDA <= \SDA~output_o\;

ww_RES <= \RES~output_o\;

ww_DC <= \DC~output_o\;

ww_CS <= \CS~output_o\;

ww_BLK <= \BLK~output_o\;
END structure;


