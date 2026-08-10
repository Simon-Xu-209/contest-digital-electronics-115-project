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

-- DATE "06/14/2026 19:35:44"

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
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
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
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
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
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
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
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \delay_cnt[0]~34_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \delay_cnt[1]~33_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \delay_cnt[2]~32_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \delay_cnt[3]~31_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \clk_div.0001~0_combout\ : std_logic;
SIGNAL \clk_div.0001~q\ : std_logic;
SIGNAL \state.000000~feeder_combout\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state.STATE_SET_AXIS~q\ : std_logic;
SIGNAL \state.STATE_SCAN_DRAW~feeder_combout\ : std_logic;
SIGNAL \state.STATE_SCAN_DRAW~q\ : std_logic;
SIGNAL \cmd_idx~51_combout\ : std_logic;
SIGNAL \cmd_idx~64_combout\ : std_logic;
SIGNAL \cmd_idx.00000110~q\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \spi_data[6]~2_combout\ : std_logic;
SIGNAL \cmd_idx.00000111~q\ : std_logic;
SIGNAL \cmd_idx~56_combout\ : std_logic;
SIGNAL \cmd_idx~54_combout\ : std_logic;
SIGNAL \cmd_idx.00001000~q\ : std_logic;
SIGNAL \cmd_idx~57_combout\ : std_logic;
SIGNAL \cmd_idx.00001001~q\ : std_logic;
SIGNAL \cmd_idx~58_combout\ : std_logic;
SIGNAL \cmd_idx.00001010~q\ : std_logic;
SIGNAL \cmd_idx~53_combout\ : std_logic;
SIGNAL \cmd_idx.00001011~q\ : std_logic;
SIGNAL \cmd_idx~62_combout\ : std_logic;
SIGNAL \cmd_idx.00001100~q\ : std_logic;
SIGNAL \cmd_idx~59_combout\ : std_logic;
SIGNAL \cmd_idx.00001101~q\ : std_logic;
SIGNAL \cmd_idx~60_combout\ : std_logic;
SIGNAL \cmd_idx.00001110~q\ : std_logic;
SIGNAL \cmd_idx~61_combout\ : std_logic;
SIGNAL \cmd_idx.00001111~q\ : std_logic;
SIGNAL \cmd_idx~55_combout\ : std_logic;
SIGNAL \cmd_idx.00010000~q\ : std_logic;
SIGNAL \cmd_idx~63_combout\ : std_logic;
SIGNAL \cmd_idx.00010001~q\ : std_logic;
SIGNAL \Selector122~0_combout\ : std_logic;
SIGNAL \p_idx~_wirecell_combout\ : std_logic;
SIGNAL \p_idx~q\ : std_logic;
SIGNAL \y_cnt[0]~8_combout\ : std_logic;
SIGNAL \x_cnt[0]~8_combout\ : std_logic;
SIGNAL \x_cnt[5]~22\ : std_logic;
SIGNAL \x_cnt[6]~23_combout\ : std_logic;
SIGNAL \x_cnt[7]~19_combout\ : std_logic;
SIGNAL \x_cnt[7]~20_combout\ : std_logic;
SIGNAL \x_cnt[6]~24\ : std_logic;
SIGNAL \x_cnt[7]~25_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \x_cnt[2]~18_combout\ : std_logic;
SIGNAL \x_cnt[0]~9\ : std_logic;
SIGNAL \x_cnt[1]~10_combout\ : std_logic;
SIGNAL \x_cnt[1]~11\ : std_logic;
SIGNAL \x_cnt[2]~12_combout\ : std_logic;
SIGNAL \x_cnt[2]~13\ : std_logic;
SIGNAL \x_cnt[3]~14_combout\ : std_logic;
SIGNAL \x_cnt[3]~15\ : std_logic;
SIGNAL \x_cnt[4]~16_combout\ : std_logic;
SIGNAL \x_cnt[4]~17\ : std_logic;
SIGNAL \x_cnt[5]~21_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \y_cnt[7]~18_combout\ : std_logic;
SIGNAL \y_cnt[7]~19_combout\ : std_logic;
SIGNAL \y_cnt[0]~9\ : std_logic;
SIGNAL \y_cnt[1]~10_combout\ : std_logic;
SIGNAL \y_cnt[1]~11\ : std_logic;
SIGNAL \y_cnt[2]~12_combout\ : std_logic;
SIGNAL \y_cnt[2]~13\ : std_logic;
SIGNAL \y_cnt[3]~14_combout\ : std_logic;
SIGNAL \y_cnt[3]~15\ : std_logic;
SIGNAL \y_cnt[4]~16_combout\ : std_logic;
SIGNAL \Mux7~587_combout\ : std_logic;
SIGNAL \y_cnt[4]~17\ : std_logic;
SIGNAL \y_cnt[5]~20_combout\ : std_logic;
SIGNAL \y_cnt[5]~21\ : std_logic;
SIGNAL \y_cnt[6]~22_combout\ : std_logic;
SIGNAL \y_cnt[6]~23\ : std_logic;
SIGNAL \y_cnt[7]~24_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \cmd_idx~48_combout\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \cmd_idx.00000000~q\ : std_logic;
SIGNAL \cmd_idx~50_combout\ : std_logic;
SIGNAL \cmd_idx.00000001~q\ : std_logic;
SIGNAL \cmd_idx~46_combout\ : std_logic;
SIGNAL \cmd_idx.00000010~q\ : std_logic;
SIGNAL \cmd_idx~47_combout\ : std_logic;
SIGNAL \cmd_idx.00000011~q\ : std_logic;
SIGNAL \cmd_idx~52_combout\ : std_logic;
SIGNAL \cmd_idx.00000100~q\ : std_logic;
SIGNAL \cmd_idx~49_combout\ : std_logic;
SIGNAL \cmd_idx.00000101~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \WideNor1~0_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \cmd_idx.00010010~q\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state.000000~q\ : std_logic;
SIGNAL \state.STATE_INIT_CMD~0_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.STATE_INIT_CMD~q\ : std_logic;
SIGNAL \state.STATE_SEND_INIT~q\ : std_logic;
SIGNAL \DC~0_combout\ : std_logic;
SIGNAL \bit_cnt[3]~2_combout\ : std_logic;
SIGNAL \bit_cnt[3]~3_combout\ : std_logic;
SIGNAL \bit_cnt[3]~4_combout\ : std_logic;
SIGNAL \bit_cnt[0]~7_combout\ : std_logic;
SIGNAL \bit_cnt[1]~8_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \bit_cnt[2]~6_combout\ : std_logic;
SIGNAL \bit_cnt[3]~5_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \delay_cnt[31]~16_combout\ : std_logic;
SIGNAL \delay_cnt[15]~20_combout\ : std_logic;
SIGNAL \delay_cnt[15]~21_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \delay_cnt[4]~30_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \delay_cnt[5]~29_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \delay_cnt[6]~3_combout\ : std_logic;
SIGNAL \delay_cnt[31]~35_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \delay_cnt[7]~28_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \delay_cnt[8]~27_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \delay_cnt[9]~2_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \delay_cnt[10]~26_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \delay_cnt[11]~25_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \delay_cnt[12]~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \delay_cnt[13]~23_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \delay_cnt[14]~1_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \delay_cnt[15]~22_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \delay_cnt[16]~19_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \delay_cnt[17]~18_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \delay_cnt[18]~17_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \delay_cnt[19]~0_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \delay_cnt[20]~15_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \delay_cnt[21]~14_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \delay_cnt[22]~13_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \delay_cnt[23]~12_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \delay_cnt[24]~11_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \delay_cnt[25]~10_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \delay_cnt[26]~9_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \delay_cnt[27]~8_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \delay_cnt[28]~7_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \delay_cnt[29]~6_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \delay_cnt[30]~5_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \delay_cnt[31]~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \SCL~0_combout\ : std_logic;
SIGNAL \SCL~reg0_q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \img_addr[8]~1\ : std_logic;
SIGNAL \img_addr[9]~3\ : std_logic;
SIGNAL \img_addr[10]~5\ : std_logic;
SIGNAL \img_addr[11]~7\ : std_logic;
SIGNAL \img_addr[12]~9\ : std_logic;
SIGNAL \img_addr[13]~11\ : std_logic;
SIGNAL \img_addr[14]~12_combout\ : std_logic;
SIGNAL \img_addr[14]~13\ : std_logic;
SIGNAL \img_addr[15]~14_combout\ : std_logic;
SIGNAL \img_addr[13]~10_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0_combout\ : std_logic;
SIGNAL \img_addr[8]~0_combout\ : std_logic;
SIGNAL \img_addr[9]~2_combout\ : std_logic;
SIGNAL \img_addr[10]~4_combout\ : std_logic;
SIGNAL \img_addr[11]~6_combout\ : std_logic;
SIGNAL \img_addr[12]~8_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs534w[0]~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \Selector95~1_combout\ : std_logic;
SIGNAL \Selector95~2_combout\ : std_logic;
SIGNAL \Selector95~3_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \spi_data[4]~11_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux7~482_combout\ : std_logic;
SIGNAL \Mux7~483_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux7~473_combout\ : std_logic;
SIGNAL \Mux7~471_combout\ : std_logic;
SIGNAL \Mux7~472_combout\ : std_logic;
SIGNAL \Mux7~474_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux7~450_combout\ : std_logic;
SIGNAL \Mux7~457_combout\ : std_logic;
SIGNAL \Mux7~478_combout\ : std_logic;
SIGNAL \Mux7~479_combout\ : std_logic;
SIGNAL \Mux7~480_combout\ : std_logic;
SIGNAL \Mux7~132_combout\ : std_logic;
SIGNAL \Mux7~475_combout\ : std_logic;
SIGNAL \Mux7~476_combout\ : std_logic;
SIGNAL \Mux7~477_combout\ : std_logic;
SIGNAL \Mux7~481_combout\ : std_logic;
SIGNAL \Mux7~484_combout\ : std_logic;
SIGNAL \Mux7~461_combout\ : std_logic;
SIGNAL \Mux7~467_combout\ : std_logic;
SIGNAL \Mux7~468_combout\ : std_logic;
SIGNAL \Mux7~462_combout\ : std_logic;
SIGNAL \Mux7~463_combout\ : std_logic;
SIGNAL \Mux7~133_combout\ : std_logic;
SIGNAL \Mux7~464_combout\ : std_logic;
SIGNAL \Mux7~465_combout\ : std_logic;
SIGNAL \Mux7~466_combout\ : std_logic;
SIGNAL \Mux7~469_combout\ : std_logic;
SIGNAL \Mux7~451_combout\ : std_logic;
SIGNAL \Mux7~458_combout\ : std_logic;
SIGNAL \Mux7~459_combout\ : std_logic;
SIGNAL \Mux7~175_combout\ : std_logic;
SIGNAL \Mux7~452_combout\ : std_logic;
SIGNAL \Mux7~453_combout\ : std_logic;
SIGNAL \Mux7~66_combout\ : std_logic;
SIGNAL \Mux7~107_combout\ : std_logic;
SIGNAL \Mux7~454_combout\ : std_logic;
SIGNAL \Mux7~455_combout\ : std_logic;
SIGNAL \Mux7~456_combout\ : std_logic;
SIGNAL \Mux7~460_combout\ : std_logic;
SIGNAL \Mux7~470_combout\ : std_logic;
SIGNAL \Mux7~447_combout\ : std_logic;
SIGNAL \Mux7~448_combout\ : std_logic;
SIGNAL \Mux7~435_combout\ : std_logic;
SIGNAL \Mux7~436_combout\ : std_logic;
SIGNAL \Mux7~441_combout\ : std_logic;
SIGNAL \Mux7~444_combout\ : std_logic;
SIGNAL \Mux7~178_combout\ : std_logic;
SIGNAL \Mux7~442_combout\ : std_logic;
SIGNAL \Mux7~443_combout\ : std_logic;
SIGNAL \Mux7~445_combout\ : std_logic;
SIGNAL \Mux7~439_combout\ : std_logic;
SIGNAL \Mux7~437_combout\ : std_logic;
SIGNAL \Mux7~438_combout\ : std_logic;
SIGNAL \Mux7~440_combout\ : std_logic;
SIGNAL \Mux7~446_combout\ : std_logic;
SIGNAL \Mux7~449_combout\ : std_logic;
SIGNAL \spi_data[4]~3_combout\ : std_logic;
SIGNAL \Mux7~540_combout\ : std_logic;
SIGNAL \Mux7~539_combout\ : std_logic;
SIGNAL \Mux7~541_combout\ : std_logic;
SIGNAL \Mux7~553_combout\ : std_logic;
SIGNAL \Mux7~554_combout\ : std_logic;
SIGNAL \Mux7~550_combout\ : std_logic;
SIGNAL \Mux7~547_combout\ : std_logic;
SIGNAL \Mux7~548_combout\ : std_logic;
SIGNAL \Mux7~549_combout\ : std_logic;
SIGNAL \Mux7~551_combout\ : std_logic;
SIGNAL \Mux7~542_combout\ : std_logic;
SIGNAL \Mux7~543_combout\ : std_logic;
SIGNAL \Mux7~545_combout\ : std_logic;
SIGNAL \Mux7~544_combout\ : std_logic;
SIGNAL \Mux7~546_combout\ : std_logic;
SIGNAL \Mux7~552_combout\ : std_logic;
SIGNAL \Mux7~555_combout\ : std_logic;
SIGNAL \Mux7~536_combout\ : std_logic;
SIGNAL \Mux7~537_combout\ : std_logic;
SIGNAL \Mux7~522_combout\ : std_logic;
SIGNAL \Mux7~520_combout\ : std_logic;
SIGNAL \Mux7~519_combout\ : std_logic;
SIGNAL \Mux7~521_combout\ : std_logic;
SIGNAL \Mux7~523_combout\ : std_logic;
SIGNAL \Mux7~527_combout\ : std_logic;
SIGNAL \Mux7~524_combout\ : std_logic;
SIGNAL \Mux7~525_combout\ : std_logic;
SIGNAL \Mux7~526_combout\ : std_logic;
SIGNAL \Mux7~528_combout\ : std_logic;
SIGNAL \Mux7~529_combout\ : std_logic;
SIGNAL \Mux7~533_combout\ : std_logic;
SIGNAL \Mux7~530_combout\ : std_logic;
SIGNAL \Mux7~531_combout\ : std_logic;
SIGNAL \Mux7~532_combout\ : std_logic;
SIGNAL \Mux7~534_combout\ : std_logic;
SIGNAL \Mux7~535_combout\ : std_logic;
SIGNAL \Mux7~538_combout\ : std_logic;
SIGNAL \Mux7~485_combout\ : std_logic;
SIGNAL \Mux7~489_combout\ : std_logic;
SIGNAL \Mux7~486_combout\ : std_logic;
SIGNAL \Mux7~487_combout\ : std_logic;
SIGNAL \Mux7~488_combout\ : std_logic;
SIGNAL \Mux7~490_combout\ : std_logic;
SIGNAL \Mux7~494_combout\ : std_logic;
SIGNAL \Mux7~491_combout\ : std_logic;
SIGNAL \Mux7~492_combout\ : std_logic;
SIGNAL \Mux7~493_combout\ : std_logic;
SIGNAL \Mux7~495_combout\ : std_logic;
SIGNAL \Mux7~496_combout\ : std_logic;
SIGNAL \Mux7~497_combout\ : std_logic;
SIGNAL \Mux7~501_combout\ : std_logic;
SIGNAL \Mux7~498_combout\ : std_logic;
SIGNAL \Mux7~499_combout\ : std_logic;
SIGNAL \Mux7~500_combout\ : std_logic;
SIGNAL \Mux7~502_combout\ : std_logic;
SIGNAL \Mux7~663_combout\ : std_logic;
SIGNAL \Mux7~515_combout\ : std_logic;
SIGNAL \Mux7~513_combout\ : std_logic;
SIGNAL \Mux7~514_combout\ : std_logic;
SIGNAL \Mux7~516_combout\ : std_logic;
SIGNAL \Mux7~510_combout\ : std_logic;
SIGNAL \Mux7~509_combout\ : std_logic;
SIGNAL \Mux7~508_combout\ : std_logic;
SIGNAL \Mux7~511_combout\ : std_logic;
SIGNAL \Mux7~504_combout\ : std_logic;
SIGNAL \Mux7~503_combout\ : std_logic;
SIGNAL \Mux7~505_combout\ : std_logic;
SIGNAL \Mux7~506_combout\ : std_logic;
SIGNAL \Mux7~507_combout\ : std_logic;
SIGNAL \Mux7~512_combout\ : std_logic;
SIGNAL \Mux7~517_combout\ : std_logic;
SIGNAL \Mux7~518_combout\ : std_logic;
SIGNAL \spi_data[4]~4_combout\ : std_logic;
SIGNAL \spi_data[4]~5_combout\ : std_logic;
SIGNAL \Mux7~645_combout\ : std_logic;
SIGNAL \Mux7~642_combout\ : std_logic;
SIGNAL \Mux7~643_combout\ : std_logic;
SIGNAL \Mux7~644_combout\ : std_logic;
SIGNAL \Mux7~646_combout\ : std_logic;
SIGNAL \Mux7~638_combout\ : std_logic;
SIGNAL \Mux7~637_combout\ : std_logic;
SIGNAL \Mux7~667_combout\ : std_logic;
SIGNAL \Mux7~668_combout\ : std_logic;
SIGNAL \Mux7~639_combout\ : std_logic;
SIGNAL \Mux7~640_combout\ : std_logic;
SIGNAL \Mux7~641_combout\ : std_logic;
SIGNAL \Mux7~634_combout\ : std_logic;
SIGNAL \Mux7~635_combout\ : std_logic;
SIGNAL \Mux7~592_combout\ : std_logic;
SIGNAL \Mux7~636_combout\ : std_logic;
SIGNAL \Mux7~647_combout\ : std_logic;
SIGNAL \Mux7~355_combout\ : std_logic;
SIGNAL \Mux7~611_combout\ : std_logic;
SIGNAL \Mux7~612_combout\ : std_logic;
SIGNAL \Mux7~613_combout\ : std_logic;
SIGNAL \Mux7~629_combout\ : std_logic;
SIGNAL \Mux7~630_combout\ : std_logic;
SIGNAL \Mux7~631_combout\ : std_logic;
SIGNAL \Mux7~621_combout\ : std_logic;
SIGNAL \Mux7~622_combout\ : std_logic;
SIGNAL \Mux7~665_combout\ : std_logic;
SIGNAL \Mux7~623_combout\ : std_logic;
SIGNAL \Mux7~624_combout\ : std_logic;
SIGNAL \Mux7~625_combout\ : std_logic;
SIGNAL \Mux7~626_combout\ : std_logic;
SIGNAL \Mux7~627_combout\ : std_logic;
SIGNAL \Mux7~628_combout\ : std_logic;
SIGNAL \Mux7~632_combout\ : std_logic;
SIGNAL \Mux7~619_combout\ : std_logic;
SIGNAL \Mux7~618_combout\ : std_logic;
SIGNAL \Mux7~669_combout\ : std_logic;
SIGNAL \Mux7~670_combout\ : std_logic;
SIGNAL \Mux7~609_combout\ : std_logic;
SIGNAL \Mux7~606_combout\ : std_logic;
SIGNAL \Mux7~607_combout\ : std_logic;
SIGNAL \Mux7~608_combout\ : std_logic;
SIGNAL \Mux7~610_combout\ : std_logic;
SIGNAL \Mux7~615_combout\ : std_logic;
SIGNAL \Mux7~614_combout\ : std_logic;
SIGNAL \Mux7~616_combout\ : std_logic;
SIGNAL \Mux7~617_combout\ : std_logic;
SIGNAL \Mux7~620_combout\ : std_logic;
SIGNAL \Mux7~633_combout\ : std_logic;
SIGNAL \Mux7~603_combout\ : std_logic;
SIGNAL \Mux7~604_combout\ : std_logic;
SIGNAL \Mux7~590_combout\ : std_logic;
SIGNAL \Mux7~591_combout\ : std_logic;
SIGNAL \Mux7~593_combout\ : std_logic;
SIGNAL \Mux7~599_combout\ : std_logic;
SIGNAL \Mux7~600_combout\ : std_logic;
SIGNAL \Mux7~601_combout\ : std_logic;
SIGNAL \Mux7~597_combout\ : std_logic;
SIGNAL \Mux7~594_combout\ : std_logic;
SIGNAL \Mux7~595_combout\ : std_logic;
SIGNAL \Mux7~596_combout\ : std_logic;
SIGNAL \Mux7~598_combout\ : std_logic;
SIGNAL \Mux7~602_combout\ : std_logic;
SIGNAL \Mux7~605_combout\ : std_logic;
SIGNAL \spi_data[4]~6_combout\ : std_logic;
SIGNAL \Mux7~664_combout\ : std_logic;
SIGNAL \Mux7~588_combout\ : std_logic;
SIGNAL \Mux7~566_combout\ : std_logic;
SIGNAL \Mux7~422_combout\ : std_logic;
SIGNAL \Mux7~567_combout\ : std_logic;
SIGNAL \Mux7~583_combout\ : std_logic;
SIGNAL \Mux7~582_combout\ : std_logic;
SIGNAL \Mux7~584_combout\ : std_logic;
SIGNAL \Mux7~571_combout\ : std_logic;
SIGNAL \Mux7~569_combout\ : std_logic;
SIGNAL \Mux7~570_combout\ : std_logic;
SIGNAL \Mux7~568_combout\ : std_logic;
SIGNAL \Mux7~572_combout\ : std_logic;
SIGNAL \Mux7~574_combout\ : std_logic;
SIGNAL \Mux7~573_combout\ : std_logic;
SIGNAL \Mux7~575_combout\ : std_logic;
SIGNAL \Mux7~576_combout\ : std_logic;
SIGNAL \Mux7~579_combout\ : std_logic;
SIGNAL \Mux7~577_combout\ : std_logic;
SIGNAL \Mux7~578_combout\ : std_logic;
SIGNAL \Mux7~580_combout\ : std_logic;
SIGNAL \Mux7~581_combout\ : std_logic;
SIGNAL \Mux7~585_combout\ : std_logic;
SIGNAL \Mux7~586_combout\ : std_logic;
SIGNAL \Mux7~556_combout\ : std_logic;
SIGNAL \Mux7~59_combout\ : std_logic;
SIGNAL \Mux7~563_combout\ : std_logic;
SIGNAL \Mux7~561_combout\ : std_logic;
SIGNAL \Mux7~562_combout\ : std_logic;
SIGNAL \Mux7~564_combout\ : std_logic;
SIGNAL \Mux7~557_combout\ : std_logic;
SIGNAL \Mux7~212_combout\ : std_logic;
SIGNAL \Mux7~558_combout\ : std_logic;
SIGNAL \Mux7~146_combout\ : std_logic;
SIGNAL \Mux7~220_combout\ : std_logic;
SIGNAL \Mux7~559_combout\ : std_logic;
SIGNAL \Mux7~560_combout\ : std_logic;
SIGNAL \Mux7~565_combout\ : std_logic;
SIGNAL \Mux7~589_combout\ : std_logic;
SIGNAL \spi_data[4]~7_combout\ : std_logic;
SIGNAL \spi_data[4]~8_combout\ : std_logic;
SIGNAL \Mux7~238_combout\ : std_logic;
SIGNAL \Mux7~239_combout\ : std_logic;
SIGNAL \Mux7~246_combout\ : std_logic;
SIGNAL \Mux7~82_combout\ : std_logic;
SIGNAL \Mux7~245_combout\ : std_logic;
SIGNAL \Mux7~247_combout\ : std_logic;
SIGNAL \Mux7~243_combout\ : std_logic;
SIGNAL \Mux7~240_combout\ : std_logic;
SIGNAL \Mux7~241_combout\ : std_logic;
SIGNAL \Mux7~242_combout\ : std_logic;
SIGNAL \Mux7~244_combout\ : std_logic;
SIGNAL \Mux7~248_combout\ : std_logic;
SIGNAL \Mux7~215_combout\ : std_logic;
SIGNAL \Mux7~654_combout\ : std_logic;
SIGNAL \Mux7~216_combout\ : std_logic;
SIGNAL \Mux7~205_combout\ : std_logic;
SIGNAL \Mux7~206_combout\ : std_logic;
SIGNAL \Mux7~213_combout\ : std_logic;
SIGNAL \Mux7~210_combout\ : std_logic;
SIGNAL \Mux7~209_combout\ : std_logic;
SIGNAL \Mux7~211_combout\ : std_logic;
SIGNAL \Mux7~653_combout\ : std_logic;
SIGNAL \Mux7~652_combout\ : std_logic;
SIGNAL \Mux7~207_combout\ : std_logic;
SIGNAL \Mux7~208_combout\ : std_logic;
SIGNAL \Mux7~214_combout\ : std_logic;
SIGNAL \Mux7~217_combout\ : std_logic;
SIGNAL \Mux7~234_combout\ : std_logic;
SIGNAL \Mux7~235_combout\ : std_logic;
SIGNAL \Mux7~232_combout\ : std_logic;
SIGNAL \Mux7~230_combout\ : std_logic;
SIGNAL \Mux7~226_combout\ : std_logic;
SIGNAL \Mux7~228_combout\ : std_logic;
SIGNAL \Mux7~227_combout\ : std_logic;
SIGNAL \Mux7~229_combout\ : std_logic;
SIGNAL \Mux7~231_combout\ : std_logic;
SIGNAL \Mux7~233_combout\ : std_logic;
SIGNAL \Mux7~236_combout\ : std_logic;
SIGNAL \Mux7~218_combout\ : std_logic;
SIGNAL \Mux7~219_combout\ : std_logic;
SIGNAL \Mux7~223_combout\ : std_logic;
SIGNAL \Mux7~221_combout\ : std_logic;
SIGNAL \Mux7~222_combout\ : std_logic;
SIGNAL \Mux7~224_combout\ : std_logic;
SIGNAL \Mux7~225_combout\ : std_logic;
SIGNAL \Mux7~237_combout\ : std_logic;
SIGNAL \Mux7~249_combout\ : std_logic;
SIGNAL \Mux7~94_combout\ : std_logic;
SIGNAL \Mux7~98_combout\ : std_logic;
SIGNAL \Mux7~99_combout\ : std_logic;
SIGNAL \Mux7~96_combout\ : std_logic;
SIGNAL \Mux7~95_combout\ : std_logic;
SIGNAL \Mux7~97_combout\ : std_logic;
SIGNAL \Mux7~100_combout\ : std_logic;
SIGNAL \Mux7~73_combout\ : std_logic;
SIGNAL \Mux7~71_combout\ : std_logic;
SIGNAL \Mux7~72_combout\ : std_logic;
SIGNAL \Mux7~74_combout\ : std_logic;
SIGNAL \Mux7~60_combout\ : std_logic;
SIGNAL \Mux7~61_combout\ : std_logic;
SIGNAL \Mux7~62_combout\ : std_logic;
SIGNAL \Mux7~68_combout\ : std_logic;
SIGNAL \Mux7~67_combout\ : std_logic;
SIGNAL \Mux7~69_combout\ : std_logic;
SIGNAL \Mux7~63_combout\ : std_logic;
SIGNAL \Mux7~64_combout\ : std_logic;
SIGNAL \Mux7~65_combout\ : std_logic;
SIGNAL \Mux7~70_combout\ : std_logic;
SIGNAL \Mux7~75_combout\ : std_logic;
SIGNAL \Mux7~76_combout\ : std_logic;
SIGNAL \Mux7~77_combout\ : std_logic;
SIGNAL \Mux7~78_combout\ : std_logic;
SIGNAL \Mux7~90_combout\ : std_logic;
SIGNAL \Mux7~91_combout\ : std_logic;
SIGNAL \Mux7~83_combout\ : std_logic;
SIGNAL \Mux7~79_combout\ : std_logic;
SIGNAL \Mux7~80_combout\ : std_logic;
SIGNAL \Mux7~81_combout\ : std_logic;
SIGNAL \Mux7~84_combout\ : std_logic;
SIGNAL \Mux7~85_combout\ : std_logic;
SIGNAL \Mux7~86_combout\ : std_logic;
SIGNAL \Mux7~87_combout\ : std_logic;
SIGNAL \Mux7~88_combout\ : std_logic;
SIGNAL \Mux7~89_combout\ : std_logic;
SIGNAL \Mux7~92_combout\ : std_logic;
SIGNAL \Mux7~93_combout\ : std_logic;
SIGNAL \Mux7~101_combout\ : std_logic;
SIGNAL \Mux7~154_combout\ : std_logic;
SIGNAL \Mux7~155_combout\ : std_logic;
SIGNAL \Mux7~679_combout\ : std_logic;
SIGNAL \Mux7~680_combout\ : std_logic;
SIGNAL \Mux7~169_combout\ : std_logic;
SIGNAL \Mux7~170_combout\ : std_logic;
SIGNAL \Mux7~160_combout\ : std_logic;
SIGNAL \Mux7~158_combout\ : std_logic;
SIGNAL \Mux7~157_combout\ : std_logic;
SIGNAL \Mux7~159_combout\ : std_logic;
SIGNAL \Mux7~156_combout\ : std_logic;
SIGNAL \Mux7~161_combout\ : std_logic;
SIGNAL \Mux7~164_combout\ : std_logic;
SIGNAL \Mux7~163_combout\ : std_logic;
SIGNAL \Mux7~165_combout\ : std_logic;
SIGNAL \Mux7~166_combout\ : std_logic;
SIGNAL \Mux7~162_combout\ : std_logic;
SIGNAL \Mux7~167_combout\ : std_logic;
SIGNAL \Mux7~168_combout\ : std_logic;
SIGNAL \Mux7~171_combout\ : std_logic;
SIGNAL \Mux7~187_combout\ : std_logic;
SIGNAL \Mux7~188_combout\ : std_logic;
SIGNAL \Mux7~189_combout\ : std_logic;
SIGNAL \Mux7~199_combout\ : std_logic;
SIGNAL \Mux7~200_combout\ : std_logic;
SIGNAL \Mux7~201_combout\ : std_logic;
SIGNAL \Mux7~191_combout\ : std_logic;
SIGNAL \Mux7~190_combout\ : std_logic;
SIGNAL \Mux7~192_combout\ : std_logic;
SIGNAL \Mux7~193_combout\ : std_logic;
SIGNAL \Mux7~196_combout\ : std_logic;
SIGNAL \Mux7~194_combout\ : std_logic;
SIGNAL \Mux7~195_combout\ : std_logic;
SIGNAL \Mux7~197_combout\ : std_logic;
SIGNAL \Mux7~198_combout\ : std_logic;
SIGNAL \Mux7~202_combout\ : std_logic;
SIGNAL \Mux7~176_combout\ : std_logic;
SIGNAL \Mux7~172_combout\ : std_logic;
SIGNAL \Mux7~173_combout\ : std_logic;
SIGNAL \Mux7~174_combout\ : std_logic;
SIGNAL \Mux7~177_combout\ : std_logic;
SIGNAL \Mux7~179_combout\ : std_logic;
SIGNAL \Mux7~651_combout\ : std_logic;
SIGNAL \Mux7~180_combout\ : std_logic;
SIGNAL \Mux7~181_combout\ : std_logic;
SIGNAL \Mux7~182_combout\ : std_logic;
SIGNAL \Mux7~183_combout\ : std_logic;
SIGNAL \Mux7~184_combout\ : std_logic;
SIGNAL \Mux7~677_combout\ : std_logic;
SIGNAL \Mux7~678_combout\ : std_logic;
SIGNAL \Mux7~185_combout\ : std_logic;
SIGNAL \Mux7~186_combout\ : std_logic;
SIGNAL \Mux7~203_combout\ : std_logic;
SIGNAL \Mux7~102_combout\ : std_logic;
SIGNAL \Mux7~683_combout\ : std_logic;
SIGNAL \Mux7~684_combout\ : std_logic;
SIGNAL \Mux7~103_combout\ : std_logic;
SIGNAL \Mux7~111_combout\ : std_logic;
SIGNAL \Mux7~110_combout\ : std_logic;
SIGNAL \Mux7~113_combout\ : std_logic;
SIGNAL \Mux7~112_combout\ : std_logic;
SIGNAL \Mux7~114_combout\ : std_logic;
SIGNAL \Mux7~108_combout\ : std_logic;
SIGNAL \Mux7~648_combout\ : std_logic;
SIGNAL \Mux7~105_combout\ : std_logic;
SIGNAL \Mux7~104_combout\ : std_logic;
SIGNAL \Mux7~106_combout\ : std_logic;
SIGNAL \Mux7~109_combout\ : std_logic;
SIGNAL \Mux7~115_combout\ : std_logic;
SIGNAL \Mux7~150_combout\ : std_logic;
SIGNAL \Mux7~147_combout\ : std_logic;
SIGNAL \Mux7~148_combout\ : std_logic;
SIGNAL \Mux7~149_combout\ : std_logic;
SIGNAL \Mux7~151_combout\ : std_logic;
SIGNAL \Mux7~144_combout\ : std_logic;
SIGNAL \Mux7~145_combout\ : std_logic;
SIGNAL \Mux7~650_combout\ : std_logic;
SIGNAL \Mux7~152_combout\ : std_logic;
SIGNAL \Mux7~128_combout\ : std_logic;
SIGNAL \Mux7~129_combout\ : std_logic;
SIGNAL \Mux7~130_combout\ : std_logic;
SIGNAL \Mux7~116_combout\ : std_logic;
SIGNAL \Mux7~117_combout\ : std_logic;
SIGNAL \Mux7~118_combout\ : std_logic;
SIGNAL \Mux7~649_combout\ : std_logic;
SIGNAL \Mux7~119_combout\ : std_logic;
SIGNAL \Mux7~120_combout\ : std_logic;
SIGNAL \Mux7~122_combout\ : std_logic;
SIGNAL \Mux7~121_combout\ : std_logic;
SIGNAL \Mux7~123_combout\ : std_logic;
SIGNAL \Mux7~124_combout\ : std_logic;
SIGNAL \Mux7~125_combout\ : std_logic;
SIGNAL \Mux7~681_combout\ : std_logic;
SIGNAL \Mux7~682_combout\ : std_logic;
SIGNAL \Mux7~126_combout\ : std_logic;
SIGNAL \Mux7~127_combout\ : std_logic;
SIGNAL \Mux7~131_combout\ : std_logic;
SIGNAL \Mux7~135_combout\ : std_logic;
SIGNAL \Mux7~134_combout\ : std_logic;
SIGNAL \Mux7~136_combout\ : std_logic;
SIGNAL \Mux7~137_combout\ : std_logic;
SIGNAL \Mux7~140_combout\ : std_logic;
SIGNAL \Mux7~138_combout\ : std_logic;
SIGNAL \Mux7~139_combout\ : std_logic;
SIGNAL \Mux7~141_combout\ : std_logic;
SIGNAL \Mux7~142_combout\ : std_logic;
SIGNAL \Mux7~143_combout\ : std_logic;
SIGNAL \Mux7~153_combout\ : std_logic;
SIGNAL \Mux7~204_combout\ : std_logic;
SIGNAL \Mux7~250_combout\ : std_logic;
SIGNAL \Mux7~251_combout\ : std_logic;
SIGNAL \Mux7~253_combout\ : std_logic;
SIGNAL \Mux7~252_combout\ : std_logic;
SIGNAL \Mux7~655_combout\ : std_logic;
SIGNAL \Mux7~254_combout\ : std_logic;
SIGNAL \Mux7~255_combout\ : std_logic;
SIGNAL \Mux7~256_combout\ : std_logic;
SIGNAL \Mux7~261_combout\ : std_logic;
SIGNAL \Mux7~257_combout\ : std_logic;
SIGNAL \Mux7~258_combout\ : std_logic;
SIGNAL \Mux7~259_combout\ : std_logic;
SIGNAL \Mux7~260_combout\ : std_logic;
SIGNAL \Mux7~262_combout\ : std_logic;
SIGNAL \Mux7~263_combout\ : std_logic;
SIGNAL \Mux7~293_combout\ : std_logic;
SIGNAL \Mux7~294_combout\ : std_logic;
SIGNAL \Mux7~289_combout\ : std_logic;
SIGNAL \Mux7~673_combout\ : std_logic;
SIGNAL \Mux7~674_combout\ : std_logic;
SIGNAL \Mux7~291_combout\ : std_logic;
SIGNAL \Mux7~290_combout\ : std_logic;
SIGNAL \Mux7~671_combout\ : std_logic;
SIGNAL \Mux7~672_combout\ : std_logic;
SIGNAL \Mux7~292_combout\ : std_logic;
SIGNAL \Mux7~295_combout\ : std_logic;
SIGNAL \Mux7~282_combout\ : std_logic;
SIGNAL \Mux7~281_combout\ : std_logic;
SIGNAL \Mux7~283_combout\ : std_logic;
SIGNAL \Mux7~285_combout\ : std_logic;
SIGNAL \Mux7~286_combout\ : std_logic;
SIGNAL \Mux7~675_combout\ : std_logic;
SIGNAL \Mux7~676_combout\ : std_logic;
SIGNAL \Mux7~284_combout\ : std_logic;
SIGNAL \Mux7~287_combout\ : std_logic;
SIGNAL \Mux7~278_combout\ : std_logic;
SIGNAL \Mux7~277_combout\ : std_logic;
SIGNAL \Mux7~279_combout\ : std_logic;
SIGNAL \Mux7~267_combout\ : std_logic;
SIGNAL \Mux7~656_combout\ : std_logic;
SIGNAL \Mux7~265_combout\ : std_logic;
SIGNAL \Mux7~264_combout\ : std_logic;
SIGNAL \Mux7~266_combout\ : std_logic;
SIGNAL \Mux7~268_combout\ : std_logic;
SIGNAL \Mux7~273_combout\ : std_logic;
SIGNAL \Mux7~274_combout\ : std_logic;
SIGNAL \Mux7~275_combout\ : std_logic;
SIGNAL \Mux7~271_combout\ : std_logic;
SIGNAL \Mux7~269_combout\ : std_logic;
SIGNAL \Mux7~270_combout\ : std_logic;
SIGNAL \Mux7~272_combout\ : std_logic;
SIGNAL \Mux7~276_combout\ : std_logic;
SIGNAL \Mux7~280_combout\ : std_logic;
SIGNAL \Mux7~288_combout\ : std_logic;
SIGNAL \Mux7~296_combout\ : std_logic;
SIGNAL \Mux7~357_combout\ : std_logic;
SIGNAL \Mux7~321_combout\ : std_logic;
SIGNAL \Mux7~358_combout\ : std_logic;
SIGNAL \Mux7~356_combout\ : std_logic;
SIGNAL \Mux7~359_combout\ : std_logic;
SIGNAL \Mux7~361_combout\ : std_logic;
SIGNAL \Mux7~360_combout\ : std_logic;
SIGNAL \Mux7~362_combout\ : std_logic;
SIGNAL \Mux7~363_combout\ : std_logic;
SIGNAL \Mux7~364_combout\ : std_logic;
SIGNAL \Mux7~367_combout\ : std_logic;
SIGNAL \Mux7~365_combout\ : std_logic;
SIGNAL \Mux7~366_combout\ : std_logic;
SIGNAL \Mux7~368_combout\ : std_logic;
SIGNAL \Mux7~369_combout\ : std_logic;
SIGNAL \Mux7~660_combout\ : std_logic;
SIGNAL \Mux7~370_combout\ : std_logic;
SIGNAL \Mux7~335_combout\ : std_logic;
SIGNAL \Mux7~333_combout\ : std_logic;
SIGNAL \Mux7~332_combout\ : std_logic;
SIGNAL \Mux7~334_combout\ : std_logic;
SIGNAL \Mux7~336_combout\ : std_logic;
SIGNAL \Mux7~658_combout\ : std_logic;
SIGNAL \Mux7~659_combout\ : std_logic;
SIGNAL \Mux7~349_combout\ : std_logic;
SIGNAL \Mux7~350_combout\ : std_logic;
SIGNAL \Mux7~351_combout\ : std_logic;
SIGNAL \Mux7~352_combout\ : std_logic;
SIGNAL \Mux7~342_combout\ : std_logic;
SIGNAL \Mux7~346_combout\ : std_logic;
SIGNAL \Mux7~343_combout\ : std_logic;
SIGNAL \Mux7~344_combout\ : std_logic;
SIGNAL \Mux7~345_combout\ : std_logic;
SIGNAL \Mux7~347_combout\ : std_logic;
SIGNAL \Mux7~337_combout\ : std_logic;
SIGNAL \Mux7~338_combout\ : std_logic;
SIGNAL \Mux7~340_combout\ : std_logic;
SIGNAL \Mux7~339_combout\ : std_logic;
SIGNAL \Mux7~341_combout\ : std_logic;
SIGNAL \Mux7~348_combout\ : std_logic;
SIGNAL \Mux7~353_combout\ : std_logic;
SIGNAL \Mux7~45_combout\ : std_logic;
SIGNAL \Mux7~42_combout\ : std_logic;
SIGNAL \Mux7~39_combout\ : std_logic;
SIGNAL \Mux7~666_combout\ : std_logic;
SIGNAL \Mux7~320_combout\ : std_logic;
SIGNAL \Mux7~322_combout\ : std_logic;
SIGNAL \Mux7~323_combout\ : std_logic;
SIGNAL \Mux7~327_combout\ : std_logic;
SIGNAL \Mux7~328_combout\ : std_logic;
SIGNAL \Mux7~326_combout\ : std_logic;
SIGNAL \Mux7~329_combout\ : std_logic;
SIGNAL \Mux7~324_combout\ : std_logic;
SIGNAL \Mux7~325_combout\ : std_logic;
SIGNAL \Mux7~657_combout\ : std_logic;
SIGNAL \Mux7~330_combout\ : std_logic;
SIGNAL \Mux7~331_combout\ : std_logic;
SIGNAL \Mux7~315_combout\ : std_logic;
SIGNAL \Mux7~314_combout\ : std_logic;
SIGNAL \Mux7~316_combout\ : std_logic;
SIGNAL \Mux7~317_combout\ : std_logic;
SIGNAL \Mux7~318_combout\ : std_logic;
SIGNAL \Mux7~298_combout\ : std_logic;
SIGNAL \Mux7~297_combout\ : std_logic;
SIGNAL \Mux7~300_combout\ : std_logic;
SIGNAL \Mux7~299_combout\ : std_logic;
SIGNAL \Mux7~301_combout\ : std_logic;
SIGNAL \Mux7~306_combout\ : std_logic;
SIGNAL \Mux7~302_combout\ : std_logic;
SIGNAL \Mux7~304_combout\ : std_logic;
SIGNAL \Mux7~303_combout\ : std_logic;
SIGNAL \Mux7~305_combout\ : std_logic;
SIGNAL \Mux7~307_combout\ : std_logic;
SIGNAL \Mux7~309_combout\ : std_logic;
SIGNAL \Mux7~308_combout\ : std_logic;
SIGNAL \Mux7~310_combout\ : std_logic;
SIGNAL \Mux7~311_combout\ : std_logic;
SIGNAL \Mux7~312_combout\ : std_logic;
SIGNAL \Mux7~313_combout\ : std_logic;
SIGNAL \Mux7~319_combout\ : std_logic;
SIGNAL \Mux7~354_combout\ : std_logic;
SIGNAL \Mux7~371_combout\ : std_logic;
SIGNAL \Mux7~661_combout\ : std_logic;
SIGNAL \Mux7~378_combout\ : std_logic;
SIGNAL \Mux7~379_combout\ : std_logic;
SIGNAL \Mux7~376_combout\ : std_logic;
SIGNAL \Mux7~377_combout\ : std_logic;
SIGNAL \Mux7~372_combout\ : std_logic;
SIGNAL \Mux7~373_combout\ : std_logic;
SIGNAL \Mux7~374_combout\ : std_logic;
SIGNAL \Mux7~375_combout\ : std_logic;
SIGNAL \Mux7~380_combout\ : std_logic;
SIGNAL \Mux7~423_combout\ : std_logic;
SIGNAL \Mux7~424_combout\ : std_logic;
SIGNAL \Mux7~425_combout\ : std_logic;
SIGNAL \Mux7~429_combout\ : std_logic;
SIGNAL \Mux7~430_combout\ : std_logic;
SIGNAL \Mux7~431_combout\ : std_logic;
SIGNAL \Mux7~426_combout\ : std_logic;
SIGNAL \Mux7~427_combout\ : std_logic;
SIGNAL \Mux7~428_combout\ : std_logic;
SIGNAL \Mux7~432_combout\ : std_logic;
SIGNAL \Mux7~408_combout\ : std_logic;
SIGNAL \Mux7~404_combout\ : std_logic;
SIGNAL \Mux7~405_combout\ : std_logic;
SIGNAL \Mux7~406_combout\ : std_logic;
SIGNAL \Mux7~407_combout\ : std_logic;
SIGNAL \Mux7~409_combout\ : std_logic;
SIGNAL \Mux7~413_combout\ : std_logic;
SIGNAL \Mux7~414_combout\ : std_logic;
SIGNAL \Mux7~415_combout\ : std_logic;
SIGNAL \Mux7~411_combout\ : std_logic;
SIGNAL \Mux7~410_combout\ : std_logic;
SIGNAL \Mux7~412_combout\ : std_logic;
SIGNAL \Mux7~416_combout\ : std_logic;
SIGNAL \Mux7~662_combout\ : std_logic;
SIGNAL \Mux7~417_combout\ : std_logic;
SIGNAL \Mux7~418_combout\ : std_logic;
SIGNAL \Mux7~419_combout\ : std_logic;
SIGNAL \Mux7~420_combout\ : std_logic;
SIGNAL \Mux7~400_combout\ : std_logic;
SIGNAL \Mux7~399_combout\ : std_logic;
SIGNAL \Mux7~401_combout\ : std_logic;
SIGNAL \Mux7~402_combout\ : std_logic;
SIGNAL \Mux7~385_combout\ : std_logic;
SIGNAL \Mux7~381_combout\ : std_logic;
SIGNAL \Mux7~382_combout\ : std_logic;
SIGNAL \Mux7~383_combout\ : std_logic;
SIGNAL \Mux7~384_combout\ : std_logic;
SIGNAL \Mux7~386_combout\ : std_logic;
SIGNAL \Mux7~388_combout\ : std_logic;
SIGNAL \Mux7~387_combout\ : std_logic;
SIGNAL \Mux7~389_combout\ : std_logic;
SIGNAL \Mux7~390_combout\ : std_logic;
SIGNAL \Mux7~391_combout\ : std_logic;
SIGNAL \Mux7~396_combout\ : std_logic;
SIGNAL \Mux7~392_combout\ : std_logic;
SIGNAL \Mux7~393_combout\ : std_logic;
SIGNAL \Mux7~394_combout\ : std_logic;
SIGNAL \Mux7~395_combout\ : std_logic;
SIGNAL \Mux7~397_combout\ : std_logic;
SIGNAL \Mux7~398_combout\ : std_logic;
SIGNAL \Mux7~403_combout\ : std_logic;
SIGNAL \Mux7~421_combout\ : std_logic;
SIGNAL \Mux7~433_combout\ : std_logic;
SIGNAL \Mux7~434_combout\ : std_logic;
SIGNAL \spi_data[4]~12_combout\ : std_logic;
SIGNAL \spi_data[4]~13_combout\ : std_logic;
SIGNAL \Selector95~4_combout\ : std_logic;
SIGNAL \spi_data[4]~9_combout\ : std_logic;
SIGNAL \Selector95~5_combout\ : std_logic;
SIGNAL \spi_data[6]~10_combout\ : std_logic;
SIGNAL \DC~1_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \Selector96~1_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs486w[0]~0_combout\ : std_logic;
SIGNAL \Selector96~2_combout\ : std_logic;
SIGNAL \Selector96~3_combout\ : std_logic;
SIGNAL \Selector96~4_combout\ : std_logic;
SIGNAL \Selector96~5_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \Selector94~1_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~0_combout\ : std_logic;
SIGNAL \Selector94~2_combout\ : std_logic;
SIGNAL \Selector94~3_combout\ : std_logic;
SIGNAL \Selector94~4_combout\ : std_logic;
SIGNAL \Selector94~5_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs630w[0]~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \Selector93~1_combout\ : std_logic;
SIGNAL \Selector93~2_combout\ : std_logic;
SIGNAL \Selector93~3_combout\ : std_logic;
SIGNAL \Selector93~4_combout\ : std_logic;
SIGNAL \Selector93~5_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Selector100~1_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \Selector100~2_combout\ : std_logic;
SIGNAL \Selector100~3_combout\ : std_logic;
SIGNAL \Selector100~4_combout\ : std_logic;
SIGNAL \Selector100~5_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \Selector97~1_combout\ : std_logic;
SIGNAL \Selector97~2_combout\ : std_logic;
SIGNAL \Selector97~3_combout\ : std_logic;
SIGNAL \Selector97~4_combout\ : std_logic;
SIGNAL \Selector97~5_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \Selector98~1_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs390w[0]~0_combout\ : std_logic;
SIGNAL \Selector98~2_combout\ : std_logic;
SIGNAL \Selector98~3_combout\ : std_logic;
SIGNAL \Selector98~4_combout\ : std_logic;
SIGNAL \Selector98~5_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs342w[0]~0_combout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \Selector99~1_combout\ : std_logic;
SIGNAL \Selector99~2_combout\ : std_logic;
SIGNAL \Selector99~3_combout\ : std_logic;
SIGNAL \Selector99~4_combout\ : std_logic;
SIGNAL \Selector99~5_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \SDA~1_combout\ : std_logic;
SIGNAL \SDA~2_combout\ : std_logic;
SIGNAL \SDA~3_combout\ : std_logic;
SIGNAL \SDA~reg0_q\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \RES~reg0_q\ : std_logic;
SIGNAL \Selector101~2_combout\ : std_logic;
SIGNAL \Selector101~3_combout\ : std_logic;
SIGNAL \Selector101~4_combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \Selector101~1_combout\ : std_logic;
SIGNAL \Selector101~5_combout\ : std_logic;
SIGNAL \DC~reg0_q\ : std_logic;
SIGNAL \CS~reg0feeder_combout\ : std_logic;
SIGNAL \CS~reg0_q\ : std_logic;
SIGNAL \BLK~reg0feeder_combout\ : std_logic;
SIGNAL \BLK~reg0_q\ : std_logic;
SIGNAL \image_rom_rtl_0|auto_generated|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|rden_decode|w_anode216w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|rden_decode|w_anode205w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|rden_decode|w_anode194w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL y_cnt : std_logic_vector(7 DOWNTO 0);
SIGNAL x_cnt : std_logic_vector(7 DOWNTO 0);
SIGNAL spi_data : std_logic_vector(7 DOWNTO 0);
SIGNAL delay_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL bit_cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \image_rom_rtl_0|auto_generated|rden_decode|w_anode176w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_CS~reg0_q\ : std_logic;
SIGNAL \ALT_INV_RES~reg0_q\ : std_logic;
SIGNAL \ALT_INV_SCL~reg0_q\ : std_logic;
SIGNAL \ALT_INV_state.STATE_SCAN_DRAW~q\ : std_logic;
SIGNAL \ALT_INV_state.STATE_SET_AXIS~q\ : std_logic;

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

\image_rom_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a27~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a19~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a11~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

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

\image_rom_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a24~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

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

\image_rom_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a30~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a22~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\image_rom_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\img_addr[12]~8_combout\ & \img_addr[11]~6_combout\ & \img_addr[10]~4_combout\ & \img_addr[9]~2_combout\ & \img_addr[8]~0_combout\ & x_cnt(6) & x_cnt(5) & x_cnt(4) & x_cnt(3) & 
x_cnt(2) & x_cnt(1) & x_cnt(0) & \p_idx~q\);

\image_rom_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \image_rom_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

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
\ALT_INV_CS~reg0_q\ <= NOT \CS~reg0_q\;
\ALT_INV_RES~reg0_q\ <= NOT \RES~reg0_q\;
\ALT_INV_SCL~reg0_q\ <= NOT \SCL~reg0_q\;
\ALT_INV_state.STATE_SCAN_DRAW~q\ <= NOT \state.STATE_SCAN_DRAW~q\;
\ALT_INV_state.STATE_SET_AXIS~q\ <= NOT \state.STATE_SET_AXIS~q\;

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

-- Location: LCCOMB_X22_Y14_N0
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = delay_cnt(0) $ (VCC)
-- \Add2~1\ = CARRY(delay_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X23_Y14_N24
\delay_cnt[0]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[0]~34_combout\ = (\LessThan0~10_combout\ & \Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~10_combout\,
	datad => \Add2~0_combout\,
	combout => \delay_cnt[0]~34_combout\);

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

-- Location: FF_X23_Y14_N25
\delay_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[0]~34_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(0));

-- Location: LCCOMB_X22_Y14_N2
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (delay_cnt(1) & (\Add2~1\ & VCC)) # (!delay_cnt(1) & (!\Add2~1\))
-- \Add2~3\ = CARRY((!delay_cnt(1) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X23_Y14_N2
\delay_cnt[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[1]~33_combout\ = (\LessThan0~10_combout\ & \Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add2~2_combout\,
	combout => \delay_cnt[1]~33_combout\);

-- Location: FF_X23_Y14_N3
\delay_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[1]~33_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(1));

-- Location: LCCOMB_X22_Y14_N4
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (delay_cnt(2) & ((GND) # (!\Add2~3\))) # (!delay_cnt(2) & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((delay_cnt(2)) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X23_Y14_N4
\delay_cnt[2]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[2]~32_combout\ = (\LessThan0~10_combout\ & \Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~10_combout\,
	datac => \Add2~4_combout\,
	combout => \delay_cnt[2]~32_combout\);

-- Location: FF_X23_Y14_N5
\delay_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[2]~32_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(2));

-- Location: LCCOMB_X22_Y14_N6
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (delay_cnt(3) & (\Add2~5\ & VCC)) # (!delay_cnt(3) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!delay_cnt(3) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X23_Y14_N10
\delay_cnt[3]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[3]~31_combout\ = (\LessThan0~10_combout\ & \Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~10_combout\,
	datad => \Add2~6_combout\,
	combout => \delay_cnt[3]~31_combout\);

-- Location: FF_X23_Y14_N11
\delay_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[3]~31_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(3));

-- Location: LCCOMB_X23_Y14_N22
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (delay_cnt(3)) # ((delay_cnt(0)) # ((delay_cnt(2)) # (delay_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(3),
	datab => delay_cnt(0),
	datac => delay_cnt(2),
	datad => delay_cnt(1),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X26_Y13_N24
\clk_div.0001~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div.0001~0_combout\ = \clk_div.0001~q\ $ (((!\LessThan0~10_combout\ & (\LessThan1~0_combout\ & \rst_n~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \LessThan1~0_combout\,
	datac => \clk_div.0001~q\,
	datad => \rst_n~input_o\,
	combout => \clk_div.0001~0_combout\);

-- Location: FF_X26_Y13_N25
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

-- Location: LCCOMB_X19_Y19_N30
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

-- Location: LCCOMB_X19_Y19_N28
\state~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (\state.STATE_SCAN_DRAW~q\) # (\state.STATE_SEND_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SCAN_DRAW~q\,
	datad => \state.STATE_SEND_INIT~q\,
	combout => \state~23_combout\);

-- Location: FF_X19_Y19_N29
\state.STATE_SET_AXIS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~23_combout\,
	clrn => \rst_n~input_o\,
	ena => \state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_SET_AXIS~q\);

-- Location: LCCOMB_X19_Y19_N10
\state.STATE_SCAN_DRAW~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.STATE_SCAN_DRAW~feeder_combout\ = \state.STATE_SET_AXIS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.STATE_SET_AXIS~q\,
	combout => \state.STATE_SCAN_DRAW~feeder_combout\);

-- Location: FF_X19_Y19_N11
\state.STATE_SCAN_DRAW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.STATE_SCAN_DRAW~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_SCAN_DRAW~q\);

-- Location: LCCOMB_X20_Y17_N0
\cmd_idx~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~51_combout\ = (\cmd_idx.00000101~q\ & \state.STATE_SEND_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00000101~q\,
	datac => \state.STATE_SEND_INIT~q\,
	combout => \cmd_idx~51_combout\);

-- Location: LCCOMB_X20_Y18_N12
\cmd_idx~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~64_combout\ = (!\state.STATE_SET_AXIS~q\ & (!\LessThan1~0_combout\ & (\cmd_idx~48_combout\ & !\LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \LessThan1~0_combout\,
	datac => \cmd_idx~48_combout\,
	datad => \LessThan0~10_combout\,
	combout => \cmd_idx~64_combout\);

-- Location: FF_X20_Y17_N1
\cmd_idx.00000110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~51_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000110~q\);

-- Location: LCCOMB_X20_Y18_N6
\Selector81~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\state.STATE_SEND_INIT~q\ & (((\cmd_idx.00000111~q\) # (\cmd_idx.00000110~q\)))) # (!\state.STATE_SEND_INIT~q\ & (!\cmd_idx~48_combout\ & (\cmd_idx.00000111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datab => \cmd_idx~48_combout\,
	datac => \cmd_idx.00000111~q\,
	datad => \cmd_idx.00000110~q\,
	combout => \Selector81~0_combout\);

-- Location: LCCOMB_X24_Y14_N30
\spi_data[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[6]~2_combout\ = (!\LessThan1~0_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~10_combout\,
	combout => \spi_data[6]~2_combout\);

-- Location: FF_X20_Y18_N7
\cmd_idx.00000111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector81~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \spi_data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000111~q\);

-- Location: LCCOMB_X20_Y16_N2
\cmd_idx~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~56_combout\ = (\state.STATE_SET_AXIS~q\ & \cmd_idx.00000111~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SET_AXIS~q\,
	datac => \cmd_idx.00000111~q\,
	combout => \cmd_idx~56_combout\);

-- Location: LCCOMB_X20_Y18_N18
\cmd_idx~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~54_combout\ = (\cmd_idx~48_combout\ & (\spi_data[6]~2_combout\ & ((!\WideNor1~0_combout\) # (!\state.STATE_SEND_INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datab => \WideNor1~0_combout\,
	datac => \cmd_idx~48_combout\,
	datad => \spi_data[6]~2_combout\,
	combout => \cmd_idx~54_combout\);

-- Location: FF_X20_Y16_N3
\cmd_idx.00001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~56_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001000~q\);

-- Location: LCCOMB_X20_Y16_N12
\cmd_idx~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~57_combout\ = (\state.STATE_SET_AXIS~q\ & \cmd_idx.00001000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SET_AXIS~q\,
	datad => \cmd_idx.00001000~q\,
	combout => \cmd_idx~57_combout\);

-- Location: FF_X20_Y16_N13
\cmd_idx.00001001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~57_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001001~q\);

-- Location: LCCOMB_X20_Y16_N20
\cmd_idx~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~58_combout\ = (\state.STATE_SET_AXIS~q\ & \cmd_idx.00001001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SET_AXIS~q\,
	datad => \cmd_idx.00001001~q\,
	combout => \cmd_idx~58_combout\);

-- Location: FF_X20_Y16_N21
\cmd_idx.00001010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~58_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001010~q\);

-- Location: LCCOMB_X20_Y16_N30
\cmd_idx~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~53_combout\ = (\state.STATE_SET_AXIS~q\ & \cmd_idx.00001010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SET_AXIS~q\,
	datad => \cmd_idx.00001010~q\,
	combout => \cmd_idx~53_combout\);

-- Location: FF_X20_Y16_N31
\cmd_idx.00001011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~53_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001011~q\);

-- Location: LCCOMB_X20_Y16_N16
\cmd_idx~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~62_combout\ = (\cmd_idx.00001011~q\ & \state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_idx.00001011~q\,
	datad => \state.STATE_SET_AXIS~q\,
	combout => \cmd_idx~62_combout\);

-- Location: FF_X20_Y16_N17
\cmd_idx.00001100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~62_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001100~q\);

-- Location: LCCOMB_X20_Y16_N22
\cmd_idx~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~59_combout\ = (\state.STATE_SET_AXIS~q\ & \cmd_idx.00001100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SET_AXIS~q\,
	datad => \cmd_idx.00001100~q\,
	combout => \cmd_idx~59_combout\);

-- Location: FF_X20_Y16_N23
\cmd_idx.00001101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~59_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001101~q\);

-- Location: LCCOMB_X20_Y16_N28
\cmd_idx~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~60_combout\ = (\cmd_idx.00001101~q\ & \state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_idx.00001101~q\,
	datad => \state.STATE_SET_AXIS~q\,
	combout => \cmd_idx~60_combout\);

-- Location: FF_X20_Y16_N29
\cmd_idx.00001110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~60_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001110~q\);

-- Location: LCCOMB_X20_Y16_N18
\cmd_idx~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~61_combout\ = (\state.STATE_SET_AXIS~q\ & \cmd_idx.00001110~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SET_AXIS~q\,
	datad => \cmd_idx.00001110~q\,
	combout => \cmd_idx~61_combout\);

-- Location: FF_X20_Y16_N19
\cmd_idx.00001111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~61_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00001111~q\);

-- Location: LCCOMB_X20_Y16_N24
\cmd_idx~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~55_combout\ = (\state.STATE_SET_AXIS~q\ & \cmd_idx.00001111~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SET_AXIS~q\,
	datad => \cmd_idx.00001111~q\,
	combout => \cmd_idx~55_combout\);

-- Location: FF_X20_Y16_N25
\cmd_idx.00010000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~55_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00010000~q\);

-- Location: LCCOMB_X20_Y16_N6
\cmd_idx~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~63_combout\ = (\state.STATE_SET_AXIS~q\ & (\cmd_idx.00010000~q\)) # (!\state.STATE_SET_AXIS~q\ & ((\state.STATE_SCAN_DRAW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_idx.00010000~q\,
	datac => \state.STATE_SCAN_DRAW~q\,
	datad => \state.STATE_SET_AXIS~q\,
	combout => \cmd_idx~63_combout\);

-- Location: FF_X20_Y16_N7
\cmd_idx.00010001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~63_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00010001~q\);

-- Location: LCCOMB_X24_Y14_N4
\Selector122~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector122~0_combout\ = (\p_idx~q\ & ((!\cmd_idx.00010001~q\) # (!\state.STATE_SET_AXIS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datac => \p_idx~q\,
	datad => \cmd_idx.00010001~q\,
	combout => \Selector122~0_combout\);

-- Location: LCCOMB_X24_Y14_N22
\p_idx~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_idx~_wirecell_combout\ = !\p_idx~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p_idx~q\,
	combout => \p_idx~_wirecell_combout\);

-- Location: FF_X24_Y14_N5
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
	ena => \spi_data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_idx~q\);

-- Location: LCCOMB_X22_Y18_N0
\y_cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[0]~8_combout\ = y_cnt(0) $ (VCC)
-- \y_cnt[0]~9\ = CARRY(y_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(0),
	datad => VCC,
	combout => \y_cnt[0]~8_combout\,
	cout => \y_cnt[0]~9\);

-- Location: LCCOMB_X21_Y18_N8
\x_cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[0]~8_combout\ = x_cnt(0) $ (VCC)
-- \x_cnt[0]~9\ = CARRY(x_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(0),
	datad => VCC,
	combout => \x_cnt[0]~8_combout\,
	cout => \x_cnt[0]~9\);

-- Location: LCCOMB_X21_Y18_N18
\x_cnt[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[5]~21_combout\ = (x_cnt(5) & (!\x_cnt[4]~17\)) # (!x_cnt(5) & ((\x_cnt[4]~17\) # (GND)))
-- \x_cnt[5]~22\ = CARRY((!\x_cnt[4]~17\) # (!x_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(5),
	datad => VCC,
	cin => \x_cnt[4]~17\,
	combout => \x_cnt[5]~21_combout\,
	cout => \x_cnt[5]~22\);

-- Location: LCCOMB_X21_Y18_N20
\x_cnt[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[6]~23_combout\ = (x_cnt(6) & (\x_cnt[5]~22\ $ (GND))) # (!x_cnt(6) & (!\x_cnt[5]~22\ & VCC))
-- \x_cnt[6]~24\ = CARRY((x_cnt(6) & !\x_cnt[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(6),
	datad => VCC,
	cin => \x_cnt[5]~22\,
	combout => \x_cnt[6]~23_combout\,
	cout => \x_cnt[6]~24\);

-- Location: LCCOMB_X24_Y14_N28
\x_cnt[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[7]~19_combout\ = (\state.STATE_SET_AXIS~q\ & (!\cmd_idx.00010001~q\ & ((!\state.STATE_SCAN_DRAW~q\) # (!\p_idx~q\)))) # (!\state.STATE_SET_AXIS~q\ & (((!\state.STATE_SCAN_DRAW~q\) # (!\p_idx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \cmd_idx.00010001~q\,
	datac => \p_idx~q\,
	datad => \state.STATE_SCAN_DRAW~q\,
	combout => \x_cnt[7]~19_combout\);

-- Location: LCCOMB_X21_Y14_N18
\x_cnt[7]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[7]~20_combout\ = (!\LessThan1~0_combout\ & (!\LessThan0~10_combout\ & !\x_cnt[7]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~0_combout\,
	datac => \LessThan0~10_combout\,
	datad => \x_cnt[7]~19_combout\,
	combout => \x_cnt[7]~20_combout\);

-- Location: FF_X21_Y18_N21
\x_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt[6]~23_combout\,
	clrn => \rst_n~input_o\,
	sclr => \x_cnt[2]~18_combout\,
	ena => \x_cnt[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(6));

-- Location: LCCOMB_X21_Y18_N22
\x_cnt[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[7]~25_combout\ = x_cnt(7) $ (\x_cnt[6]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(7),
	cin => \x_cnt[6]~24\,
	combout => \x_cnt[7]~25_combout\);

-- Location: FF_X21_Y18_N23
\x_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt[7]~25_combout\,
	clrn => \rst_n~input_o\,
	sclr => \x_cnt[2]~18_combout\,
	ena => \x_cnt[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(7));

-- Location: LCCOMB_X21_Y18_N30
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (((!x_cnt(3)) # (!x_cnt(0))) # (!x_cnt(1))) # (!x_cnt(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(4),
	datab => x_cnt(1),
	datac => x_cnt(0),
	datad => x_cnt(3),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X20_Y18_N26
\x_cnt[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[2]~18_combout\ = (x_cnt(7)) # (((!\LessThan2~1_combout\ & !\LessThan2~0_combout\)) # (!\state.STATE_SCAN_DRAW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => x_cnt(7),
	datac => \LessThan2~0_combout\,
	datad => \state.STATE_SCAN_DRAW~q\,
	combout => \x_cnt[2]~18_combout\);

-- Location: FF_X21_Y18_N9
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
	sclr => \x_cnt[2]~18_combout\,
	ena => \x_cnt[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(0));

-- Location: LCCOMB_X21_Y18_N10
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

-- Location: FF_X21_Y18_N11
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
	sclr => \x_cnt[2]~18_combout\,
	ena => \x_cnt[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(1));

-- Location: LCCOMB_X21_Y18_N12
\x_cnt[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[2]~12_combout\ = (x_cnt(2) & (\x_cnt[1]~11\ $ (GND))) # (!x_cnt(2) & (!\x_cnt[1]~11\ & VCC))
-- \x_cnt[2]~13\ = CARRY((x_cnt(2) & !\x_cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datad => VCC,
	cin => \x_cnt[1]~11\,
	combout => \x_cnt[2]~12_combout\,
	cout => \x_cnt[2]~13\);

-- Location: FF_X21_Y18_N13
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
	sclr => \x_cnt[2]~18_combout\,
	ena => \x_cnt[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(2));

-- Location: LCCOMB_X21_Y18_N14
\x_cnt[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[3]~14_combout\ = (x_cnt(3) & (!\x_cnt[2]~13\)) # (!x_cnt(3) & ((\x_cnt[2]~13\) # (GND)))
-- \x_cnt[3]~15\ = CARRY((!\x_cnt[2]~13\) # (!x_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(3),
	datad => VCC,
	cin => \x_cnt[2]~13\,
	combout => \x_cnt[3]~14_combout\,
	cout => \x_cnt[3]~15\);

-- Location: FF_X21_Y18_N15
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
	sclr => \x_cnt[2]~18_combout\,
	ena => \x_cnt[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(3));

-- Location: LCCOMB_X21_Y18_N16
\x_cnt[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \x_cnt[4]~16_combout\ = (x_cnt(4) & (\x_cnt[3]~15\ $ (GND))) # (!x_cnt(4) & (!\x_cnt[3]~15\ & VCC))
-- \x_cnt[4]~17\ = CARRY((x_cnt(4) & !\x_cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(4),
	datad => VCC,
	cin => \x_cnt[3]~15\,
	combout => \x_cnt[4]~16_combout\,
	cout => \x_cnt[4]~17\);

-- Location: FF_X21_Y18_N17
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
	sclr => \x_cnt[2]~18_combout\,
	ena => \x_cnt[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(4));

-- Location: FF_X21_Y18_N19
\x_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_cnt[5]~21_combout\,
	clrn => \rst_n~input_o\,
	sclr => \x_cnt[2]~18_combout\,
	ena => \x_cnt[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x_cnt(5));

-- Location: LCCOMB_X19_Y18_N26
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ((!x_cnt(2)) # (!x_cnt(6))) # (!x_cnt(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(5),
	datac => x_cnt(6),
	datad => x_cnt(2),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X20_Y18_N28
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!x_cnt(7) & ((\LessThan2~1_combout\) # (\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datac => \LessThan2~0_combout\,
	datad => x_cnt(7),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X20_Y18_N2
\y_cnt[7]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[7]~18_combout\ = (((\LessThan3~1_combout\) # (\LessThan2~2_combout\)) # (!\p_idx~q\)) # (!\state.STATE_SCAN_DRAW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SCAN_DRAW~q\,
	datab => \p_idx~q\,
	datac => \LessThan3~1_combout\,
	datad => \LessThan2~2_combout\,
	combout => \y_cnt[7]~18_combout\);

-- Location: LCCOMB_X20_Y18_N4
\y_cnt[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[7]~19_combout\ = (\spi_data[6]~2_combout\ & (((\cmd_idx.00010001~q\ & \state.STATE_SET_AXIS~q\)) # (!\y_cnt[7]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00010001~q\,
	datab => \y_cnt[7]~18_combout\,
	datac => \state.STATE_SET_AXIS~q\,
	datad => \spi_data[6]~2_combout\,
	combout => \y_cnt[7]~19_combout\);

-- Location: FF_X22_Y18_N1
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
	ena => \y_cnt[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(0));

-- Location: LCCOMB_X22_Y18_N2
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

-- Location: FF_X22_Y18_N3
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
	ena => \y_cnt[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(1));

-- Location: LCCOMB_X22_Y18_N4
\y_cnt[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[2]~12_combout\ = (y_cnt(2) & (\y_cnt[1]~11\ $ (GND))) # (!y_cnt(2) & (!\y_cnt[1]~11\ & VCC))
-- \y_cnt[2]~13\ = CARRY((y_cnt(2) & !\y_cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(2),
	datad => VCC,
	cin => \y_cnt[1]~11\,
	combout => \y_cnt[2]~12_combout\,
	cout => \y_cnt[2]~13\);

-- Location: FF_X22_Y18_N5
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
	ena => \y_cnt[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(2));

-- Location: LCCOMB_X22_Y18_N6
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

-- Location: FF_X22_Y18_N7
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
	ena => \y_cnt[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(3));

-- Location: LCCOMB_X22_Y18_N8
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

-- Location: FF_X22_Y18_N9
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
	ena => \y_cnt[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(4));

-- Location: LCCOMB_X19_Y18_N28
\Mux7~587\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~587_combout\ = (y_cnt(1) & (y_cnt(3) & (y_cnt(0) & y_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => y_cnt(3),
	datac => y_cnt(0),
	datad => y_cnt(2),
	combout => \Mux7~587_combout\);

-- Location: LCCOMB_X22_Y18_N10
\y_cnt[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[5]~20_combout\ = (y_cnt(5) & (!\y_cnt[4]~17\)) # (!y_cnt(5) & ((\y_cnt[4]~17\) # (GND)))
-- \y_cnt[5]~21\ = CARRY((!\y_cnt[4]~17\) # (!y_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(5),
	datad => VCC,
	cin => \y_cnt[4]~17\,
	combout => \y_cnt[5]~20_combout\,
	cout => \y_cnt[5]~21\);

-- Location: FF_X22_Y18_N11
\y_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[5]~20_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \y_cnt[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(5));

-- Location: LCCOMB_X22_Y18_N12
\y_cnt[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[6]~22_combout\ = (y_cnt(6) & (\y_cnt[5]~21\ $ (GND))) # (!y_cnt(6) & (!\y_cnt[5]~21\ & VCC))
-- \y_cnt[6]~23\ = CARRY((y_cnt(6) & !\y_cnt[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(6),
	datad => VCC,
	cin => \y_cnt[5]~21\,
	combout => \y_cnt[6]~22_combout\,
	cout => \y_cnt[6]~23\);

-- Location: FF_X22_Y18_N13
\y_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[6]~22_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \y_cnt[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(6));

-- Location: LCCOMB_X22_Y18_N14
\y_cnt[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \y_cnt[7]~24_combout\ = y_cnt(7) $ (\y_cnt[6]~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(7),
	cin => \y_cnt[6]~23\,
	combout => \y_cnt[7]~24_combout\);

-- Location: FF_X22_Y18_N15
\y_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_cnt[7]~24_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \y_cnt[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y_cnt(7));

-- Location: LCCOMB_X23_Y18_N20
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!y_cnt(6) & !y_cnt(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(6),
	datad => y_cnt(5),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X19_Y18_N16
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (y_cnt(7) & (((y_cnt(4) & \Mux7~587_combout\)) # (!\LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(4),
	datab => \Mux7~587_combout\,
	datac => y_cnt(7),
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X20_Y18_N10
\state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (\state.STATE_SCAN_DRAW~q\ & (((\LessThan2~2_combout\) # (!\LessThan3~1_combout\)) # (!\p_idx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SCAN_DRAW~q\,
	datab => \p_idx~q\,
	datac => \LessThan3~1_combout\,
	datad => \LessThan2~2_combout\,
	combout => \state~19_combout\);

-- Location: LCCOMB_X20_Y18_N8
\cmd_idx~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~48_combout\ = (\state.000000~q\ & !\state~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.000000~q\,
	datad => \state~19_combout\,
	combout => \cmd_idx~48_combout\);

-- Location: LCCOMB_X20_Y18_N30
\Selector74~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (!\state.STATE_INIT_CMD~q\ & ((\cmd_idx.00000000~q\) # ((\cmd_idx~48_combout\ & !\state.STATE_SET_AXIS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_INIT_CMD~q\,
	datab => \cmd_idx~48_combout\,
	datac => \cmd_idx.00000000~q\,
	datad => \state.STATE_SET_AXIS~q\,
	combout => \Selector74~0_combout\);

-- Location: FF_X20_Y18_N31
\cmd_idx.00000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector74~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \spi_data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000000~q\);

-- Location: LCCOMB_X20_Y17_N14
\cmd_idx~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~50_combout\ = (\state.STATE_SEND_INIT~q\ & !\cmd_idx.00000000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SEND_INIT~q\,
	datac => \cmd_idx.00000000~q\,
	combout => \cmd_idx~50_combout\);

-- Location: FF_X20_Y17_N15
\cmd_idx.00000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~50_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000001~q\);

-- Location: LCCOMB_X21_Y14_N20
\cmd_idx~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~46_combout\ = (\state.STATE_SEND_INIT~q\ & \cmd_idx.00000001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datad => \cmd_idx.00000001~q\,
	combout => \cmd_idx~46_combout\);

-- Location: FF_X20_Y17_N5
\cmd_idx.00000010\ : dffeas
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
	ena => \cmd_idx~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000010~q\);

-- Location: LCCOMB_X20_Y17_N30
\cmd_idx~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~47_combout\ = (\cmd_idx.00000010~q\ & \state.STATE_SEND_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_idx.00000010~q\,
	datac => \state.STATE_SEND_INIT~q\,
	combout => \cmd_idx~47_combout\);

-- Location: FF_X20_Y17_N31
\cmd_idx.00000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~47_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000011~q\);

-- Location: LCCOMB_X20_Y16_N0
\cmd_idx~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~52_combout\ = (\cmd_idx.00000011~q\ & \state.STATE_SEND_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_idx.00000011~q\,
	datad => \state.STATE_SEND_INIT~q\,
	combout => \cmd_idx~52_combout\);

-- Location: FF_X20_Y16_N1
\cmd_idx.00000100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~52_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000100~q\);

-- Location: LCCOMB_X20_Y16_N26
\cmd_idx~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_idx~49_combout\ = (\cmd_idx.00000100~q\ & \state.STATE_SEND_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_idx.00000100~q\,
	datad => \state.STATE_SEND_INIT~q\,
	combout => \cmd_idx~49_combout\);

-- Location: FF_X20_Y16_N27
\cmd_idx.00000101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_idx~49_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_idx~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00000101~q\);

-- Location: LCCOMB_X20_Y17_N10
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\cmd_idx.00000000~q\ & (!\cmd_idx.00000110~q\ & (!\cmd_idx.00000011~q\ & !\cmd_idx.00000001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00000000~q\,
	datab => \cmd_idx.00000110~q\,
	datac => \cmd_idx.00000011~q\,
	datad => \cmd_idx.00000001~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X20_Y17_N8
\WideNor1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor1~0_combout\ = (!\cmd_idx.00000101~q\ & (!\cmd_idx.00000100~q\ & (!\cmd_idx.00000010~q\ & \Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00000101~q\,
	datab => \cmd_idx.00000100~q\,
	datac => \cmd_idx.00000010~q\,
	datad => \Selector7~0_combout\,
	combout => \WideNor1~0_combout\);

-- Location: LCCOMB_X20_Y16_N8
\Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\cmd_idx.00010010~q\) # (\cmd_idx.00010001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_idx.00010010~q\,
	datad => \cmd_idx.00010001~q\,
	combout => \Selector35~0_combout\);

-- Location: FF_X20_Y16_N9
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
	ena => \cmd_idx~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_idx.00010010~q\);

-- Location: LCCOMB_X20_Y18_N16
\state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (\spi_data[6]~2_combout\ & (!\state~19_combout\ & ((\cmd_idx.00010010~q\) # (!\state.STATE_SET_AXIS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00010010~q\,
	datab => \spi_data[6]~2_combout\,
	datac => \state.STATE_SET_AXIS~q\,
	datad => \state~19_combout\,
	combout => \state~20_combout\);

-- Location: LCCOMB_X20_Y18_N0
\state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (\state~20_combout\ & ((\WideNor1~0_combout\) # (!\state.STATE_SEND_INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datac => \WideNor1~0_combout\,
	datad => \state~20_combout\,
	combout => \state~22_combout\);

-- Location: FF_X19_Y19_N31
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
	ena => \state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.000000~q\);

-- Location: LCCOMB_X20_Y18_N22
\state.STATE_INIT_CMD~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.STATE_INIT_CMD~0_combout\ = !\state.000000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.000000~q\,
	combout => \state.STATE_INIT_CMD~0_combout\);

-- Location: LCCOMB_X20_Y18_N14
\state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (\state~20_combout\ & ((\state.STATE_SET_AXIS~q\) # ((\WideNor1~0_combout\) # (!\state.STATE_SEND_INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \WideNor1~0_combout\,
	datac => \state.STATE_SEND_INIT~q\,
	datad => \state~20_combout\,
	combout => \state~21_combout\);

-- Location: FF_X20_Y18_N23
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
	ena => \state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_INIT_CMD~q\);

-- Location: FF_X20_Y18_N15
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
	ena => \state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_SEND_INIT~q\);

-- Location: LCCOMB_X20_Y18_N20
\DC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DC~0_combout\ = (!\state.STATE_INIT_CMD~q\ & \state.000000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_INIT_CMD~q\,
	datac => \state.000000~q\,
	combout => \DC~0_combout\);

-- Location: LCCOMB_X20_Y17_N12
\bit_cnt[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[3]~2_combout\ = (\state.STATE_SET_AXIS~q\ & ((\cmd_idx.00010010~q\) # (!\WideNor1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_SET_AXIS~q\,
	datac => \WideNor1~0_combout\,
	datad => \cmd_idx.00010010~q\,
	combout => \bit_cnt[3]~2_combout\);

-- Location: LCCOMB_X20_Y17_N18
\bit_cnt[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[3]~3_combout\ = ((\bit_cnt[3]~2_combout\) # ((\state.STATE_SEND_INIT~q\ & \WideNor1~0_combout\))) # (!\DC~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datab => \WideNor1~0_combout\,
	datac => \DC~0_combout\,
	datad => \bit_cnt[3]~2_combout\,
	combout => \bit_cnt[3]~3_combout\);

-- Location: LCCOMB_X26_Y13_N18
\bit_cnt[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[3]~4_combout\ = (\LessThan0~10_combout\) # ((\LessThan1~0_combout\ & (!\clk_div.0001~q\)) # (!\LessThan1~0_combout\ & ((\bit_cnt[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \clk_div.0001~q\,
	datac => \bit_cnt[3]~3_combout\,
	datad => \LessThan1~0_combout\,
	combout => \bit_cnt[3]~4_combout\);

-- Location: LCCOMB_X26_Y13_N16
\bit_cnt[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[0]~7_combout\ = (bit_cnt(0) & ((\bit_cnt[3]~4_combout\))) # (!bit_cnt(0) & (\LessThan1~0_combout\ & !\bit_cnt[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~0_combout\,
	datac => bit_cnt(0),
	datad => \bit_cnt[3]~4_combout\,
	combout => \bit_cnt[0]~7_combout\);

-- Location: FF_X26_Y13_N17
\bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_cnt[0]~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(0));

-- Location: LCCOMB_X26_Y13_N2
\bit_cnt[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[1]~8_combout\ = (\bit_cnt[3]~4_combout\ & (((bit_cnt(1))))) # (!\bit_cnt[3]~4_combout\ & (\LessThan1~0_combout\ & (bit_cnt(0) $ (!bit_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => bit_cnt(0),
	datac => bit_cnt(1),
	datad => \bit_cnt[3]~4_combout\,
	combout => \bit_cnt[1]~8_combout\);

-- Location: FF_X26_Y13_N3
\bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_cnt[1]~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(1));

-- Location: LCCOMB_X26_Y13_N12
\Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = (!bit_cnt(1) & !bit_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_cnt(1),
	datad => bit_cnt(0),
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X26_Y13_N0
\bit_cnt[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[2]~6_combout\ = (\bit_cnt[3]~4_combout\ & (((bit_cnt(2))))) # (!\bit_cnt[3]~4_combout\ & (\LessThan1~0_combout\ & (\Add3~1_combout\ $ (bit_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => \LessThan1~0_combout\,
	datac => bit_cnt(2),
	datad => \bit_cnt[3]~4_combout\,
	combout => \bit_cnt[2]~6_combout\);

-- Location: FF_X26_Y13_N1
\bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_cnt[2]~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(2));

-- Location: LCCOMB_X26_Y13_N14
\bit_cnt[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[3]~5_combout\ = bit_cnt(3) $ (((\Add3~1_combout\ & (!bit_cnt(2) & !\bit_cnt[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => bit_cnt(2),
	datac => bit_cnt(3),
	datad => \bit_cnt[3]~4_combout\,
	combout => \bit_cnt[3]~5_combout\);

-- Location: FF_X26_Y13_N15
\bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_cnt[3]~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(3));

-- Location: LCCOMB_X26_Y13_N22
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (bit_cnt(2)) # ((bit_cnt(1)) # ((bit_cnt(3)) # (bit_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(2),
	datab => bit_cnt(1),
	datac => bit_cnt(3),
	datad => bit_cnt(0),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y14_N14
\delay_cnt[31]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[31]~16_combout\ = (!\state.STATE_SET_AXIS~q\ & (!\state.STATE_SCAN_DRAW~q\ & ((\cmd_idx.00000001~q\) # (!\state.STATE_SEND_INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00000001~q\,
	datab => \state.STATE_SET_AXIS~q\,
	datac => \state.STATE_SCAN_DRAW~q\,
	datad => \state.STATE_SEND_INIT~q\,
	combout => \delay_cnt[31]~16_combout\);

-- Location: LCCOMB_X21_Y14_N0
\delay_cnt[15]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[15]~20_combout\ = (\state.STATE_SEND_INIT~q\ & (\cmd_idx.00000001~q\)) # (!\state.STATE_SEND_INIT~q\ & (((!\state.STATE_SET_AXIS~q\ & !\state.STATE_SCAN_DRAW~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00000001~q\,
	datab => \state.STATE_SET_AXIS~q\,
	datac => \state.STATE_SCAN_DRAW~q\,
	datad => \state.STATE_SEND_INIT~q\,
	combout => \delay_cnt[15]~20_combout\);

-- Location: LCCOMB_X21_Y14_N10
\delay_cnt[15]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[15]~21_combout\ = (\LessThan0~10_combout\) # ((!\LessThan1~0_combout\ & \delay_cnt[15]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~0_combout\,
	datac => \LessThan0~10_combout\,
	datad => \delay_cnt[15]~20_combout\,
	combout => \delay_cnt[15]~21_combout\);

-- Location: LCCOMB_X22_Y14_N8
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (delay_cnt(4) & ((GND) # (!\Add2~7\))) # (!delay_cnt(4) & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((delay_cnt(4)) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X21_Y14_N6
\delay_cnt[4]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[4]~30_combout\ = (\LessThan0~10_combout\ & \Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datac => \Add2~8_combout\,
	combout => \delay_cnt[4]~30_combout\);

-- Location: FF_X21_Y14_N7
\delay_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[4]~30_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(4));

-- Location: LCCOMB_X22_Y14_N10
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (delay_cnt(5) & (\Add2~9\ & VCC)) # (!delay_cnt(5) & (!\Add2~9\))
-- \Add2~11\ = CARRY((!delay_cnt(5) & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X21_Y14_N16
\delay_cnt[5]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[5]~29_combout\ = (\delay_cnt[15]~21_combout\ & ((\LessThan0~10_combout\ & ((\Add2~10_combout\))) # (!\LessThan0~10_combout\ & (\cmd_idx~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \cmd_idx~46_combout\,
	datac => \Add2~10_combout\,
	datad => \delay_cnt[15]~21_combout\,
	combout => \delay_cnt[5]~29_combout\);

-- Location: FF_X21_Y14_N17
\delay_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[5]~29_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(5));

-- Location: LCCOMB_X22_Y14_N12
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (delay_cnt(6) & ((GND) # (!\Add2~11\))) # (!delay_cnt(6) & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((delay_cnt(6)) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X23_Y14_N6
\delay_cnt[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[6]~3_combout\ = (\LessThan0~10_combout\ & ((\Add2~12_combout\))) # (!\LessThan0~10_combout\ & (!\state.STATE_SEND_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datab => \LessThan0~10_combout\,
	datad => \Add2~12_combout\,
	combout => \delay_cnt[6]~3_combout\);

-- Location: LCCOMB_X23_Y14_N16
\delay_cnt[31]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[31]~35_combout\ = (!\LessThan0~10_combout\ & ((\LessThan1~0_combout\) # (!\delay_cnt[31]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~10_combout\,
	datac => \delay_cnt[31]~16_combout\,
	datad => \LessThan1~0_combout\,
	combout => \delay_cnt[31]~35_combout\);

-- Location: FF_X23_Y14_N7
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
	sload => \delay_cnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(6));

-- Location: LCCOMB_X22_Y14_N14
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (delay_cnt(7) & (\Add2~13\ & VCC)) # (!delay_cnt(7) & (!\Add2~13\))
-- \Add2~15\ = CARRY((!delay_cnt(7) & !\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X21_Y14_N30
\delay_cnt[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[7]~28_combout\ = (\LessThan0~10_combout\ & \Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datac => \Add2~14_combout\,
	combout => \delay_cnt[7]~28_combout\);

-- Location: FF_X21_Y14_N31
\delay_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[7]~28_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(7));

-- Location: LCCOMB_X22_Y14_N16
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (delay_cnt(8) & ((GND) # (!\Add2~15\))) # (!delay_cnt(8) & (\Add2~15\ $ (GND)))
-- \Add2~17\ = CARRY((delay_cnt(8)) # (!\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X21_Y14_N4
\delay_cnt[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[8]~27_combout\ = (\delay_cnt[15]~21_combout\ & ((\LessThan0~10_combout\ & ((\Add2~16_combout\))) # (!\LessThan0~10_combout\ & (\cmd_idx~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_cnt[15]~21_combout\,
	datab => \cmd_idx~46_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Add2~16_combout\,
	combout => \delay_cnt[8]~27_combout\);

-- Location: FF_X21_Y14_N5
\delay_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[8]~27_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(8));

-- Location: LCCOMB_X22_Y14_N18
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (delay_cnt(9) & (\Add2~17\ & VCC)) # (!delay_cnt(9) & (!\Add2~17\))
-- \Add2~19\ = CARRY((!delay_cnt(9) & !\Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X23_Y14_N0
\delay_cnt[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[9]~2_combout\ = (\LessThan0~10_combout\ & ((\Add2~18_combout\))) # (!\LessThan0~10_combout\ & (!\state.STATE_SEND_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datab => \LessThan0~10_combout\,
	datad => \Add2~18_combout\,
	combout => \delay_cnt[9]~2_combout\);

-- Location: FF_X23_Y14_N1
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
	sload => \delay_cnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(9));

-- Location: LCCOMB_X22_Y14_N20
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (delay_cnt(10) & ((GND) # (!\Add2~19\))) # (!delay_cnt(10) & (\Add2~19\ $ (GND)))
-- \Add2~21\ = CARRY((delay_cnt(10)) # (!\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X23_Y14_N18
\delay_cnt[10]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[10]~26_combout\ = (\LessThan0~10_combout\ & \Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add2~20_combout\,
	combout => \delay_cnt[10]~26_combout\);

-- Location: FF_X23_Y14_N19
\delay_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[10]~26_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(10));

-- Location: LCCOMB_X22_Y14_N22
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (delay_cnt(11) & (\Add2~21\ & VCC)) # (!delay_cnt(11) & (!\Add2~21\))
-- \Add2~23\ = CARRY((!delay_cnt(11) & !\Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X23_Y14_N12
\delay_cnt[11]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[11]~25_combout\ = (\LessThan0~10_combout\ & \Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add2~22_combout\,
	combout => \delay_cnt[11]~25_combout\);

-- Location: FF_X23_Y14_N13
\delay_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[11]~25_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(11));

-- Location: LCCOMB_X22_Y14_N24
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (delay_cnt(12) & ((GND) # (!\Add2~23\))) # (!delay_cnt(12) & (\Add2~23\ $ (GND)))
-- \Add2~25\ = CARRY((delay_cnt(12)) # (!\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X21_Y14_N12
\delay_cnt[12]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[12]~24_combout\ = (\LessThan0~10_combout\ & \Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add2~24_combout\,
	combout => \delay_cnt[12]~24_combout\);

-- Location: FF_X21_Y14_N13
\delay_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[12]~24_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(12));

-- Location: LCCOMB_X22_Y14_N26
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (delay_cnt(13) & (\Add2~25\ & VCC)) # (!delay_cnt(13) & (!\Add2~25\))
-- \Add2~27\ = CARRY((!delay_cnt(13) & !\Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X21_Y14_N2
\delay_cnt[13]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[13]~23_combout\ = (\delay_cnt[15]~21_combout\ & ((\LessThan0~10_combout\ & ((\Add2~26_combout\))) # (!\LessThan0~10_combout\ & (\cmd_idx~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_cnt[15]~21_combout\,
	datab => \cmd_idx~46_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Add2~26_combout\,
	combout => \delay_cnt[13]~23_combout\);

-- Location: FF_X21_Y14_N3
\delay_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[13]~23_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(13));

-- Location: LCCOMB_X22_Y14_N28
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (delay_cnt(14) & ((GND) # (!\Add2~27\))) # (!delay_cnt(14) & (\Add2~27\ $ (GND)))
-- \Add2~29\ = CARRY((delay_cnt(14)) # (!\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X23_Y14_N30
\delay_cnt[14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[14]~1_combout\ = (\LessThan0~10_combout\ & ((\Add2~28_combout\))) # (!\LessThan0~10_combout\ & (!\state.STATE_SEND_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND_INIT~q\,
	datab => \LessThan0~10_combout\,
	datad => \Add2~28_combout\,
	combout => \delay_cnt[14]~1_combout\);

-- Location: FF_X23_Y14_N31
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
	sload => \delay_cnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(14));

-- Location: LCCOMB_X22_Y14_N30
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (delay_cnt(15) & (\Add2~29\ & VCC)) # (!delay_cnt(15) & (!\Add2~29\))
-- \Add2~31\ = CARRY((!delay_cnt(15) & !\Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X21_Y14_N28
\delay_cnt[15]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[15]~22_combout\ = (\delay_cnt[15]~21_combout\ & ((\LessThan0~10_combout\ & ((\Add2~30_combout\))) # (!\LessThan0~10_combout\ & (\cmd_idx~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \cmd_idx~46_combout\,
	datac => \Add2~30_combout\,
	datad => \delay_cnt[15]~21_combout\,
	combout => \delay_cnt[15]~22_combout\);

-- Location: FF_X21_Y14_N29
\delay_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[15]~22_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(15));

-- Location: LCCOMB_X22_Y13_N0
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (delay_cnt(16) & ((GND) # (!\Add2~31\))) # (!delay_cnt(16) & (\Add2~31\ $ (GND)))
-- \Add2~33\ = CARRY((delay_cnt(16)) # (!\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X26_Y13_N10
\delay_cnt[16]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[16]~19_combout\ = (\LessThan0~10_combout\ & (\Add2~32_combout\)) # (!\LessThan0~10_combout\ & (((\delay_cnt[31]~16_combout\ & !\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \Add2~32_combout\,
	datac => \delay_cnt[31]~16_combout\,
	datad => \LessThan1~0_combout\,
	combout => \delay_cnt[16]~19_combout\);

-- Location: FF_X26_Y13_N11
\delay_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[16]~19_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(16));

-- Location: LCCOMB_X22_Y13_N2
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (delay_cnt(17) & (\Add2~33\ & VCC)) # (!delay_cnt(17) & (!\Add2~33\))
-- \Add2~35\ = CARRY((!delay_cnt(17) & !\Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X23_Y13_N14
\delay_cnt[17]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[17]~18_combout\ = (\LessThan0~10_combout\ & (((\Add2~34_combout\)))) # (!\LessThan0~10_combout\ & (!\LessThan1~0_combout\ & (\delay_cnt[31]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \delay_cnt[31]~16_combout\,
	datac => \LessThan0~10_combout\,
	datad => \Add2~34_combout\,
	combout => \delay_cnt[17]~18_combout\);

-- Location: FF_X23_Y13_N15
\delay_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[17]~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(17));

-- Location: LCCOMB_X22_Y13_N4
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (delay_cnt(18) & ((GND) # (!\Add2~35\))) # (!delay_cnt(18) & (\Add2~35\ $ (GND)))
-- \Add2~37\ = CARRY((delay_cnt(18)) # (!\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X26_Y13_N20
\delay_cnt[18]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[18]~17_combout\ = (\LessThan0~10_combout\ & (\Add2~36_combout\)) # (!\LessThan0~10_combout\ & (((\delay_cnt[31]~16_combout\ & !\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \Add2~36_combout\,
	datac => \delay_cnt[31]~16_combout\,
	datad => \LessThan1~0_combout\,
	combout => \delay_cnt[18]~17_combout\);

-- Location: FF_X26_Y13_N21
\delay_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[18]~17_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(18));

-- Location: LCCOMB_X22_Y13_N6
\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (delay_cnt(19) & (\Add2~37\ & VCC)) # (!delay_cnt(19) & (!\Add2~37\))
-- \Add2~39\ = CARRY((!delay_cnt(19) & !\Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X23_Y14_N28
\delay_cnt[19]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[19]~0_combout\ = (\LessThan0~10_combout\ & (\Add2~38_combout\)) # (!\LessThan0~10_combout\ & ((!\state.STATE_SEND_INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~38_combout\,
	datab => \LessThan0~10_combout\,
	datad => \state.STATE_SEND_INIT~q\,
	combout => \delay_cnt[19]~0_combout\);

-- Location: FF_X23_Y14_N29
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
	sload => \delay_cnt[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(19));

-- Location: LCCOMB_X23_Y14_N20
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (delay_cnt(19)) # ((delay_cnt(9)) # ((delay_cnt(14)) # (delay_cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(19),
	datab => delay_cnt(9),
	datac => delay_cnt(14),
	datad => delay_cnt(6),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X21_Y14_N24
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (delay_cnt(7)) # ((delay_cnt(5)) # ((delay_cnt(8)) # (delay_cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(7),
	datab => delay_cnt(5),
	datac => delay_cnt(8),
	datad => delay_cnt(4),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X21_Y14_N22
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (delay_cnt(13)) # (delay_cnt(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(13),
	datad => delay_cnt(12),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X23_Y14_N8
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (delay_cnt(11)) # ((\LessThan0~6_combout\) # ((\LessThan0~5_combout\) # (delay_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(11),
	datab => \LessThan0~6_combout\,
	datac => \LessThan0~5_combout\,
	datad => delay_cnt(10),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X22_Y13_N8
\Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (delay_cnt(20) & ((GND) # (!\Add2~39\))) # (!delay_cnt(20) & (\Add2~39\ $ (GND)))
-- \Add2~41\ = CARRY((delay_cnt(20)) # (!\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X23_Y13_N2
\delay_cnt[20]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[20]~15_combout\ = (\LessThan0~10_combout\ & \Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add2~40_combout\,
	combout => \delay_cnt[20]~15_combout\);

-- Location: FF_X23_Y13_N3
\delay_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[20]~15_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(20));

-- Location: LCCOMB_X22_Y13_N10
\Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (delay_cnt(21) & (\Add2~41\ & VCC)) # (!delay_cnt(21) & (!\Add2~41\))
-- \Add2~43\ = CARRY((!delay_cnt(21) & !\Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X23_Y13_N12
\delay_cnt[21]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[21]~14_combout\ = (\LessThan0~10_combout\ & \Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add2~42_combout\,
	combout => \delay_cnt[21]~14_combout\);

-- Location: FF_X23_Y13_N13
\delay_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[21]~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(21));

-- Location: LCCOMB_X22_Y13_N12
\Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (delay_cnt(22) & ((GND) # (!\Add2~43\))) # (!delay_cnt(22) & (\Add2~43\ $ (GND)))
-- \Add2~45\ = CARRY((delay_cnt(22)) # (!\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X23_Y13_N22
\delay_cnt[22]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[22]~13_combout\ = (\LessThan0~10_combout\ & \Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add2~44_combout\,
	combout => \delay_cnt[22]~13_combout\);

-- Location: FF_X23_Y13_N23
\delay_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[22]~13_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(22));

-- Location: LCCOMB_X22_Y13_N14
\Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (delay_cnt(23) & (\Add2~45\ & VCC)) # (!delay_cnt(23) & (!\Add2~45\))
-- \Add2~47\ = CARRY((!delay_cnt(23) & !\Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X23_Y13_N4
\delay_cnt[23]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[23]~12_combout\ = (\LessThan0~10_combout\ & \Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add2~46_combout\,
	combout => \delay_cnt[23]~12_combout\);

-- Location: FF_X23_Y13_N5
\delay_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[23]~12_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(23));

-- Location: LCCOMB_X23_Y13_N16
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (delay_cnt(21)) # ((delay_cnt(23)) # ((delay_cnt(22)) # (delay_cnt(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(21),
	datab => delay_cnt(23),
	datac => delay_cnt(22),
	datad => delay_cnt(20),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y13_N16
\Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (delay_cnt(24) & ((GND) # (!\Add2~47\))) # (!delay_cnt(24) & (\Add2~47\ $ (GND)))
-- \Add2~49\ = CARRY((delay_cnt(24)) # (!\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X23_Y13_N20
\delay_cnt[24]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[24]~11_combout\ = (\LessThan0~10_combout\ & \Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~10_combout\,
	datac => \Add2~48_combout\,
	combout => \delay_cnt[24]~11_combout\);

-- Location: FF_X23_Y13_N21
\delay_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[24]~11_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(24));

-- Location: LCCOMB_X22_Y13_N18
\Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (delay_cnt(25) & (\Add2~49\ & VCC)) # (!delay_cnt(25) & (!\Add2~49\))
-- \Add2~51\ = CARRY((!delay_cnt(25) & !\Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X23_Y13_N26
\delay_cnt[25]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[25]~10_combout\ = (\LessThan0~10_combout\ & \Add2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add2~50_combout\,
	combout => \delay_cnt[25]~10_combout\);

-- Location: FF_X23_Y13_N27
\delay_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[25]~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(25));

-- Location: LCCOMB_X22_Y13_N20
\Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (delay_cnt(26) & ((GND) # (!\Add2~51\))) # (!delay_cnt(26) & (\Add2~51\ $ (GND)))
-- \Add2~53\ = CARRY((delay_cnt(26)) # (!\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X23_Y13_N0
\delay_cnt[26]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[26]~9_combout\ = (\LessThan0~10_combout\ & \Add2~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add2~52_combout\,
	combout => \delay_cnt[26]~9_combout\);

-- Location: FF_X23_Y13_N1
\delay_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[26]~9_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(26));

-- Location: LCCOMB_X22_Y13_N22
\Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (delay_cnt(27) & (\Add2~53\ & VCC)) # (!delay_cnt(27) & (!\Add2~53\))
-- \Add2~55\ = CARRY((!delay_cnt(27) & !\Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X23_Y13_N30
\delay_cnt[27]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[27]~8_combout\ = (\LessThan0~10_combout\ & \Add2~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add2~54_combout\,
	combout => \delay_cnt[27]~8_combout\);

-- Location: FF_X23_Y13_N31
\delay_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[27]~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(27));

-- Location: LCCOMB_X22_Y13_N24
\Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (delay_cnt(28) & ((GND) # (!\Add2~55\))) # (!delay_cnt(28) & (\Add2~55\ $ (GND)))
-- \Add2~57\ = CARRY((delay_cnt(28)) # (!\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X23_Y13_N18
\delay_cnt[28]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[28]~7_combout\ = (\LessThan0~10_combout\ & \Add2~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add2~56_combout\,
	combout => \delay_cnt[28]~7_combout\);

-- Location: FF_X23_Y13_N19
\delay_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[28]~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(28));

-- Location: LCCOMB_X22_Y13_N26
\Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (delay_cnt(29) & (\Add2~57\ & VCC)) # (!delay_cnt(29) & (!\Add2~57\))
-- \Add2~59\ = CARRY((!delay_cnt(29) & !\Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X23_Y13_N28
\delay_cnt[29]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[29]~6_combout\ = (\LessThan0~10_combout\ & \Add2~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~10_combout\,
	datac => \Add2~58_combout\,
	combout => \delay_cnt[29]~6_combout\);

-- Location: FF_X23_Y13_N29
\delay_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[29]~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(29));

-- Location: LCCOMB_X22_Y13_N28
\Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (delay_cnt(30) & ((GND) # (!\Add2~59\))) # (!delay_cnt(30) & (\Add2~59\ $ (GND)))
-- \Add2~61\ = CARRY((delay_cnt(30)) # (!\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X23_Y13_N10
\delay_cnt[30]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[30]~5_combout\ = (\LessThan0~10_combout\ & \Add2~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add2~60_combout\,
	combout => \delay_cnt[30]~5_combout\);

-- Location: FF_X23_Y13_N11
\delay_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[30]~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(30));

-- Location: LCCOMB_X22_Y13_N30
\Add2~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = delay_cnt(31) $ (!\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X23_Y13_N8
\delay_cnt[31]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[31]~4_combout\ = (\LessThan0~10_combout\ & \Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \Add2~62_combout\,
	combout => \delay_cnt[31]~4_combout\);

-- Location: FF_X23_Y13_N9
\delay_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[31]~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(31));

-- Location: LCCOMB_X23_Y13_N24
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (delay_cnt(30)) # ((delay_cnt(29)) # ((delay_cnt(31)) # (delay_cnt(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(30),
	datab => delay_cnt(29),
	datac => delay_cnt(31),
	datad => delay_cnt(28),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y13_N6
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (delay_cnt(27)) # ((delay_cnt(26)) # ((delay_cnt(25)) # (delay_cnt(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(27),
	datab => delay_cnt(26),
	datac => delay_cnt(25),
	datad => delay_cnt(24),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y13_N0
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (delay_cnt(17)) # ((delay_cnt(15)) # ((delay_cnt(18)) # (delay_cnt(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(17),
	datab => delay_cnt(15),
	datac => delay_cnt(18),
	datad => delay_cnt(16),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y13_N10
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~2_combout\) # ((\LessThan0~0_combout\) # ((\LessThan0~1_combout\) # (\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y14_N14
\LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\LessThan0~8_combout\) # ((\LessThan0~9_combout\) # ((\LessThan0~7_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \LessThan0~9_combout\,
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X26_Y13_N8
\SCL~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCL~0_combout\ = (\LessThan0~10_combout\ & (((\SCL~reg0_q\)))) # (!\LessThan0~10_combout\ & ((\LessThan1~0_combout\ & (!\clk_div.0001~q\)) # (!\LessThan1~0_combout\ & ((\SCL~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \clk_div.0001~q\,
	datac => \SCL~reg0_q\,
	datad => \LessThan1~0_combout\,
	combout => \SCL~0_combout\);

-- Location: FF_X26_Y13_N9
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

-- Location: LCCOMB_X28_Y20_N2
\Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\cmd_idx.00010001~q\) # ((\cmd_idx.00001011~q\) # ((\cmd_idx.00001100~q\) # (\cmd_idx.00000111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00010001~q\,
	datab => \cmd_idx.00001011~q\,
	datac => \cmd_idx.00001100~q\,
	datad => \cmd_idx.00000111~q\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X28_Y20_N0
\Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\Selector18~0_combout\) # ((spi_data(5) & ((\cmd_idx.00010010~q\) # (!\WideNor1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(5),
	datab => \WideNor1~0_combout\,
	datac => \cmd_idx.00010010~q\,
	datad => \Selector18~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X20_Y17_N20
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\cmd_idx.00000010~q\ & !\cmd_idx.00000100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_idx.00000010~q\,
	datad => \cmd_idx.00000100~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X20_Y17_N28
\Selector95~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\cmd_idx.00000110~q\) # (((spi_data(5) & \WideNor1~0_combout\)) # (!\Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(5),
	datab => \cmd_idx.00000110~q\,
	datac => \WideNor1~0_combout\,
	datad => \Selector6~0_combout\,
	combout => \Selector95~0_combout\);

-- Location: LCCOMB_X19_Y16_N8
\img_addr[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \img_addr[8]~0_combout\ = (x_cnt(7) & (y_cnt(0) $ (VCC))) # (!x_cnt(7) & (y_cnt(0) & VCC))
-- \img_addr[8]~1\ = CARRY((x_cnt(7) & y_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(7),
	datab => y_cnt(0),
	datad => VCC,
	combout => \img_addr[8]~0_combout\,
	cout => \img_addr[8]~1\);

-- Location: LCCOMB_X19_Y16_N10
\img_addr[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \img_addr[9]~2_combout\ = (y_cnt(1) & (!\img_addr[8]~1\)) # (!y_cnt(1) & ((\img_addr[8]~1\) # (GND)))
-- \img_addr[9]~3\ = CARRY((!\img_addr[8]~1\) # (!y_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datad => VCC,
	cin => \img_addr[8]~1\,
	combout => \img_addr[9]~2_combout\,
	cout => \img_addr[9]~3\);

-- Location: LCCOMB_X19_Y16_N12
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

-- Location: LCCOMB_X19_Y16_N14
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

-- Location: LCCOMB_X19_Y16_N16
\img_addr[12]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \img_addr[12]~8_combout\ = (y_cnt(4) & (\img_addr[11]~7\ $ (GND))) # (!y_cnt(4) & (!\img_addr[11]~7\ & VCC))
-- \img_addr[12]~9\ = CARRY((y_cnt(4) & !\img_addr[11]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(4),
	datad => VCC,
	cin => \img_addr[11]~7\,
	combout => \img_addr[12]~8_combout\,
	cout => \img_addr[12]~9\);

-- Location: LCCOMB_X19_Y16_N18
\img_addr[13]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \img_addr[13]~10_combout\ = (y_cnt(5) & (!\img_addr[12]~9\)) # (!y_cnt(5) & ((\img_addr[12]~9\) # (GND)))
-- \img_addr[13]~11\ = CARRY((!\img_addr[12]~9\) # (!y_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(5),
	datad => VCC,
	cin => \img_addr[12]~9\,
	combout => \img_addr[13]~10_combout\,
	cout => \img_addr[13]~11\);

-- Location: LCCOMB_X19_Y16_N20
\img_addr[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \img_addr[14]~12_combout\ = (y_cnt(6) & (\img_addr[13]~11\ $ (GND))) # (!y_cnt(6) & (!\img_addr[13]~11\ & VCC))
-- \img_addr[14]~13\ = CARRY((y_cnt(6) & !\img_addr[13]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(6),
	datad => VCC,
	cin => \img_addr[13]~11\,
	combout => \img_addr[14]~12_combout\,
	cout => \img_addr[14]~13\);

-- Location: LCCOMB_X19_Y16_N22
\img_addr[15]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \img_addr[15]~14_combout\ = \img_addr[14]~13\ $ (y_cnt(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => y_cnt(7),
	cin => \img_addr[14]~13\,
	combout => \img_addr[15]~14_combout\);

-- Location: LCCOMB_X19_Y16_N26
\image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0_combout\ = (!\img_addr[14]~12_combout\ & (\img_addr[15]~14_combout\ & !\img_addr[13]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \img_addr[14]~12_combout\,
	datac => \img_addr[15]~14_combout\,
	datad => \img_addr[13]~10_combout\,
	combout => \image_rom_rtl_0|auto_generated|rden_decode|w_anode227w[3]~0_combout\);

-- Location: M9K_X13_Y24_N0
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

-- Location: FF_X19_Y16_N23
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

-- Location: LCCOMB_X19_Y16_N28
\image_rom_rtl_0|auto_generated|address_reg_a[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\ = \img_addr[13]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \img_addr[13]~10_combout\,
	combout => \image_rom_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: FF_X19_Y16_N29
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

-- Location: LCCOMB_X19_Y16_N6
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

-- Location: FF_X19_Y16_N7
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

-- Location: LCCOMB_X19_Y16_N4
\image_rom_rtl_0|auto_generated|rden_decode|w_anode194w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|rden_decode|w_anode194w\(3) = (!\img_addr[14]~12_combout\ & (!\img_addr[15]~14_combout\ & \img_addr[13]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \img_addr[14]~12_combout\,
	datac => \img_addr[15]~14_combout\,
	datad => \img_addr[13]~10_combout\,
	combout => \image_rom_rtl_0|auto_generated|rden_decode|w_anode194w\(3));

-- Location: M9K_X13_Y13_N0
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

-- Location: LCCOMB_X19_Y16_N30
\image_rom_rtl_0|auto_generated|rden_decode|w_anode176w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|rden_decode|w_anode176w\(3) = (!\img_addr[14]~12_combout\ & (!\img_addr[15]~14_combout\ & !\img_addr[13]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \img_addr[14]~12_combout\,
	datac => \img_addr[15]~14_combout\,
	datad => \img_addr[13]~10_combout\,
	combout => \image_rom_rtl_0|auto_generated|rden_decode|w_anode176w\(3));

-- Location: M9K_X13_Y21_N0
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

-- Location: LCCOMB_X14_Y17_N26
\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs534w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs534w[0]~0_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(1)) # ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a13~portadataout\)) # 
-- (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a5~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a13~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a5~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs534w[0]~0_combout\);

-- Location: LCCOMB_X19_Y16_N2
\image_rom_rtl_0|auto_generated|rden_decode|w_anode205w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|rden_decode|w_anode205w\(3) = (\img_addr[14]~12_combout\ & (!\img_addr[15]~14_combout\ & !\img_addr[13]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \img_addr[14]~12_combout\,
	datac => \img_addr[15]~14_combout\,
	datad => \img_addr[13]~10_combout\,
	combout => \image_rom_rtl_0|auto_generated|rden_decode|w_anode205w\(3));

-- Location: M9K_X13_Y10_N0
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

-- Location: LCCOMB_X19_Y16_N0
\image_rom_rtl_0|auto_generated|rden_decode|w_anode216w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|rden_decode|w_anode216w\(3) = (\img_addr[14]~12_combout\ & (!\img_addr[15]~14_combout\ & \img_addr[13]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \img_addr[14]~12_combout\,
	datac => \img_addr[15]~14_combout\,
	datad => \img_addr[13]~10_combout\,
	combout => \image_rom_rtl_0|auto_generated|rden_decode|w_anode216w\(3));

-- Location: M9K_X13_Y15_N0
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

-- Location: LCCOMB_X14_Y17_N16
\Selector95~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~1_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a29~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- (\image_rom_rtl_0|auto_generated|ram_block1a21~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a21~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a29~portadataout\,
	combout => \Selector95~1_combout\);

-- Location: LCCOMB_X14_Y17_N6
\Selector95~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~2_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (\image_rom_rtl_0|auto_generated|ram_block1a37~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & 
-- (((\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs534w[0]~0_combout\ & \Selector95~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|ram_block1a37~portadataout\,
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datac => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs534w[0]~0_combout\,
	datad => \Selector95~1_combout\,
	combout => \Selector95~2_combout\);

-- Location: LCCOMB_X14_Y17_N12
\Selector95~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~3_combout\ = (\state.STATE_SCAN_DRAW~q\ & (((\Selector95~2_combout\)))) # (!\state.STATE_SCAN_DRAW~q\ & (!\state.STATE_SET_AXIS~q\ & (\Selector95~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SCAN_DRAW~q\,
	datab => \state.STATE_SET_AXIS~q\,
	datac => \Selector95~0_combout\,
	datad => \Selector95~2_combout\,
	combout => \Selector95~3_combout\);

-- Location: LCCOMB_X19_Y16_N24
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (y_cnt(7) & (!y_cnt(5) & (!y_cnt(4) & !y_cnt(6)))) # (!y_cnt(7) & (((y_cnt(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(5),
	datab => y_cnt(7),
	datac => y_cnt(4),
	datad => y_cnt(6),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X22_Y18_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (x_cnt(3) & (!x_cnt(6) & (x_cnt(4) & !x_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(3),
	datab => x_cnt(6),
	datac => x_cnt(4),
	datad => x_cnt(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y18_N2
\WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!x_cnt(6) & ((x_cnt(5)) # ((x_cnt(4) & x_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(4),
	datab => x_cnt(5),
	datac => x_cnt(6),
	datad => x_cnt(3),
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X23_Y18_N0
\Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (y_cnt(7)) # ((y_cnt(5) & (y_cnt(4) & y_cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(5),
	datab => y_cnt(7),
	datac => y_cnt(4),
	datad => y_cnt(6),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X23_Y18_N30
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (y_cnt(7)) # ((y_cnt(6) & !y_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(6),
	datac => y_cnt(5),
	datad => y_cnt(7),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X21_Y18_N6
\Decoder1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (!x_cnt(6) & (!x_cnt(4) & (!x_cnt(3) & x_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(6),
	datab => x_cnt(4),
	datac => x_cnt(3),
	datad => x_cnt(5),
	combout => \Decoder1~0_combout\);

-- Location: LCCOMB_X22_Y18_N18
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!y_cnt(4) & (\LessThan3~0_combout\ & ((\Decoder1~0_combout\) # (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(4),
	datab => \Decoder1~0_combout\,
	datac => \LessThan3~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X23_Y18_N22
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux4~2_combout\ & (((\Mux0~0_combout\) # (!\Mux4~1_combout\)))) # (!\Mux4~2_combout\ & (\WideOr1~0_combout\ & (\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => \Mux4~2_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X23_Y18_N4
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (y_cnt(5) & (y_cnt(6) & !y_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(5),
	datac => y_cnt(6),
	datad => y_cnt(7),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X21_Y18_N24
\WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!x_cnt(6) & (x_cnt(5) $ (((x_cnt(4) & x_cnt(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(6),
	datab => x_cnt(4),
	datac => x_cnt(3),
	datad => x_cnt(5),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X22_Y19_N4
\WideOr7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (!x_cnt(6) & ((x_cnt(5) & ((!x_cnt(4)))) # (!x_cnt(5) & (x_cnt(3) & x_cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(3),
	datab => x_cnt(5),
	datac => x_cnt(4),
	datad => x_cnt(6),
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X23_Y18_N24
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & (((\WideOr7~0_combout\)) # (!\Mux4~0_combout\))) # (!\Mux0~1_combout\ & (\Mux4~0_combout\ & (\WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux4~0_combout\,
	datac => \WideOr4~0_combout\,
	datad => \WideOr7~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X27_Y20_N2
\spi_data[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[4]~11_combout\ = (\Mux1~0_combout\ & (\Equal0~0_combout\ & (\Mux0~2_combout\ & \state.STATE_SCAN_DRAW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \Mux0~2_combout\,
	datad => \state.STATE_SCAN_DRAW~q\,
	combout => \spi_data[4]~11_combout\);

-- Location: LCCOMB_X22_Y18_N16
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (x_cnt(5) & ((y_cnt(5) & (!x_cnt(4))) # (!y_cnt(5) & ((!y_cnt(4)))))) # (!x_cnt(5) & (x_cnt(4) & (y_cnt(4) & y_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(4),
	datab => x_cnt(5),
	datac => y_cnt(4),
	datad => y_cnt(5),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X21_Y18_N4
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!x_cnt(6) & (y_cnt(6) & x_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(6),
	datac => y_cnt(6),
	datad => x_cnt(3),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X22_Y18_N22
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (y_cnt(7) & (((\Mux0~0_combout\)))) # (!y_cnt(7) & (\Mux2~1_combout\ & (\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(7),
	datab => \Mux2~1_combout\,
	datac => \Mux2~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X24_Y18_N16
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!x_cnt(6) & ((x_cnt(4) & ((!x_cnt(5)) # (!y_cnt(5)))) # (!x_cnt(4) & ((x_cnt(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(6),
	datab => y_cnt(5),
	datac => x_cnt(4),
	datad => x_cnt(5),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X24_Y18_N18
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (y_cnt(4) & (((y_cnt(5))))) # (!y_cnt(4) & (x_cnt(3) & ((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(3),
	datab => y_cnt(5),
	datac => y_cnt(4),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X24_Y18_N24
\Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (y_cnt(4) & ((\Mux5~1_combout\ & (\Decoder1~0_combout\)) # (!\Mux5~1_combout\ & ((\WideOr4~0_combout\))))) # (!y_cnt(4) & (((\Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(4),
	datab => \Decoder1~0_combout\,
	datac => \WideOr4~0_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X24_Y18_N30
\Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (y_cnt(6) & (!y_cnt(7) & \Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(6),
	datac => y_cnt(7),
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X23_Y18_N16
\Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (!y_cnt(6) & (!y_cnt(5) & (!y_cnt(4) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(6),
	datab => y_cnt(5),
	datac => y_cnt(4),
	datad => \Equal0~0_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X23_Y18_N26
\Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (x_cnt(3) & (y_cnt(5) & (x_cnt(4) & !x_cnt(5)))) # (!x_cnt(3) & (((x_cnt(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(5),
	datab => x_cnt(4),
	datac => x_cnt(3),
	datad => x_cnt(5),
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X23_Y18_N12
\Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (x_cnt(3) & (x_cnt(4) $ (((y_cnt(5) & x_cnt(5)))))) # (!x_cnt(3) & (((!x_cnt(4) & x_cnt(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(5),
	datab => x_cnt(3),
	datac => x_cnt(4),
	datad => x_cnt(5),
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X23_Y18_N2
\Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (!x_cnt(6) & ((y_cnt(4) & ((\Mux6~4_combout\))) # (!y_cnt(4) & (\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(4),
	datab => x_cnt(6),
	datac => \Mux6~3_combout\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X23_Y18_N6
\Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (y_cnt(7) & (\Mux6~7_combout\)) # (!y_cnt(7) & (((y_cnt(6) & \Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(7),
	datab => \Mux6~7_combout\,
	datac => y_cnt(6),
	datad => \Mux6~9_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X22_Y17_N0
\Mux7~482\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~482_combout\ = (y_cnt(1) & ((y_cnt(3) & (y_cnt(0) & \Mux6~8_combout\)) # (!y_cnt(3) & ((!\Mux6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(3),
	datac => \Mux6~8_combout\,
	datad => y_cnt(1),
	combout => \Mux7~482_combout\);

-- Location: LCCOMB_X22_Y17_N22
\Mux7~483\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~483_combout\ = (y_cnt(2) & (\Mux5~3_combout\ & \Mux7~482_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datac => \Mux5~3_combout\,
	datad => \Mux7~482_combout\,
	combout => \Mux7~483_combout\);

-- Location: LCCOMB_X23_Y18_N10
\Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~1_combout\ & ((\Mux4~2_combout\ & ((\Mux6~7_combout\))) # (!\Mux4~2_combout\ & (\WideOr4~0_combout\)))) # (!\Mux4~1_combout\ & (\Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~2_combout\,
	datac => \WideOr4~0_combout\,
	datad => \Mux6~7_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X23_Y18_N28
\Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (x_cnt(5) & (x_cnt(4) $ (((x_cnt(3)) # (\Mux4~3_combout\))))) # (!x_cnt(5) & (x_cnt(3) & (x_cnt(4) & !\Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(5),
	datab => x_cnt(3),
	datac => x_cnt(4),
	datad => \Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X23_Y18_N18
\Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~0_combout\ & (((!x_cnt(6) & \Mux4~4_combout\)))) # (!\Mux4~0_combout\ & (\Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \Mux4~0_combout\,
	datac => x_cnt(6),
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X24_Y17_N22
\Mux7~473\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~473_combout\ = (y_cnt(2) & ((y_cnt(0)) # ((\Mux5~3_combout\) # (y_cnt(1))))) # (!y_cnt(2) & (((\Mux5~3_combout\ & y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(2),
	datac => \Mux5~3_combout\,
	datad => y_cnt(1),
	combout => \Mux7~473_combout\);

-- Location: LCCOMB_X24_Y17_N6
\Mux7~471\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~471_combout\ = (y_cnt(0) & (\Mux5~3_combout\ & (y_cnt(2) $ (y_cnt(1))))) # (!y_cnt(0) & ((y_cnt(2) & (\Mux5~3_combout\)) # (!y_cnt(2) & ((y_cnt(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(2),
	datac => \Mux5~3_combout\,
	datad => y_cnt(1),
	combout => \Mux7~471_combout\);

-- Location: LCCOMB_X24_Y17_N16
\Mux7~472\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~472_combout\ = (\Mux6~8_combout\ & ((y_cnt(2)) # ((y_cnt(1))))) # (!\Mux6~8_combout\ & (((\Mux7~471_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(1),
	datac => \Mux6~8_combout\,
	datad => \Mux7~471_combout\,
	combout => \Mux7~472_combout\);

-- Location: LCCOMB_X24_Y17_N12
\Mux7~474\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~474_combout\ = (y_cnt(3) & (\Mux6~8_combout\ & (!\Mux7~473_combout\))) # (!y_cnt(3) & (((\Mux7~472_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux6~8_combout\,
	datac => \Mux7~473_combout\,
	datad => \Mux7~472_combout\,
	combout => \Mux7~474_combout\);

-- Location: LCCOMB_X22_Y18_N30
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (x_cnt(3) & ((y_cnt(5) & (x_cnt(4) & !x_cnt(5))) # (!y_cnt(5) & (!x_cnt(4) & x_cnt(5))))) # (!x_cnt(3) & (x_cnt(5) & ((!x_cnt(4)) # (!y_cnt(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(3),
	datab => y_cnt(5),
	datac => x_cnt(4),
	datad => x_cnt(5),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X22_Y18_N20
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (y_cnt(5) & (\Decoder1~0_combout\)) # (!y_cnt(5) & ((\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(5),
	datac => \Decoder1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X22_Y18_N26
\Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (y_cnt(4) & (!x_cnt(6) & (\Mux3~0_combout\))) # (!y_cnt(4) & (((\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(6),
	datab => y_cnt(4),
	datac => \Mux3~0_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X22_Y18_N28
\Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (!y_cnt(7) & (\Mux3~2_combout\ & y_cnt(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(7),
	datac => \Mux3~2_combout\,
	datad => y_cnt(6),
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X21_Y17_N4
\Mux7~450\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~450_combout\ = (y_cnt(3) & (y_cnt(1) & y_cnt(2))) # (!y_cnt(3) & (!y_cnt(1) & !y_cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datac => y_cnt(1),
	datad => y_cnt(2),
	combout => \Mux7~450_combout\);

-- Location: LCCOMB_X21_Y17_N10
\Mux7~457\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~457_combout\ = (y_cnt(2) & ((y_cnt(1)) # (y_cnt(0)))) # (!y_cnt(2) & ((!y_cnt(0)) # (!y_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(2),
	datac => y_cnt(1),
	datad => y_cnt(0),
	combout => \Mux7~457_combout\);

-- Location: LCCOMB_X21_Y17_N2
\Mux7~478\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~478_combout\ = (y_cnt(3) & (y_cnt(2) & (!y_cnt(1) & !y_cnt(0)))) # (!y_cnt(3) & (y_cnt(1) & (y_cnt(2) $ (y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => y_cnt(1),
	datad => y_cnt(0),
	combout => \Mux7~478_combout\);

-- Location: LCCOMB_X21_Y17_N16
\Mux7~479\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~479_combout\ = (\Mux6~8_combout\ & ((\Mux5~3_combout\ & ((\Mux7~478_combout\))) # (!\Mux5~3_combout\ & (!\Mux7~457_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~457_combout\,
	datab => \Mux7~478_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~479_combout\);

-- Location: LCCOMB_X21_Y17_N26
\Mux7~480\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~480_combout\ = (\Mux7~479_combout\) # ((!\Mux7~450_combout\ & !\Mux6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~450_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux7~479_combout\,
	combout => \Mux7~480_combout\);

-- Location: LCCOMB_X23_Y17_N0
\Mux7~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~132_combout\ = (!y_cnt(3) & ((y_cnt(2) & (!y_cnt(0) & !y_cnt(1))) # (!y_cnt(2) & ((y_cnt(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(0),
	datac => y_cnt(1),
	datad => y_cnt(3),
	combout => \Mux7~132_combout\);

-- Location: LCCOMB_X23_Y17_N16
\Mux7~475\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~475_combout\ = (y_cnt(0) & (!y_cnt(3) & ((\Mux5~3_combout\) # (!y_cnt(1))))) # (!y_cnt(0) & ((y_cnt(1) & (y_cnt(3) & !\Mux5~3_combout\)) # (!y_cnt(1) & ((\Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(0),
	datac => y_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~475_combout\);

-- Location: LCCOMB_X23_Y17_N18
\Mux7~476\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~476_combout\ = (!\Mux6~8_combout\ & (!\Mux7~475_combout\ & (y_cnt(2) $ (y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux6~8_combout\,
	datac => y_cnt(1),
	datad => \Mux7~475_combout\,
	combout => \Mux7~476_combout\);

-- Location: LCCOMB_X23_Y17_N24
\Mux7~477\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~477_combout\ = (\Mux7~476_combout\) # ((\Mux6~8_combout\ & (\Mux7~132_combout\ & !\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux7~132_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux7~476_combout\,
	combout => \Mux7~477_combout\);

-- Location: LCCOMB_X22_Y17_N10
\Mux7~481\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~481_combout\ = (\Mux4~5_combout\ & (\Mux3~3_combout\)) # (!\Mux4~5_combout\ & ((\Mux3~3_combout\ & ((\Mux7~477_combout\))) # (!\Mux3~3_combout\ & (\Mux7~480_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux7~480_combout\,
	datad => \Mux7~477_combout\,
	combout => \Mux7~481_combout\);

-- Location: LCCOMB_X22_Y17_N4
\Mux7~484\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~484_combout\ = (\Mux4~5_combout\ & ((\Mux7~481_combout\ & (\Mux7~483_combout\)) # (!\Mux7~481_combout\ & ((\Mux7~474_combout\))))) # (!\Mux4~5_combout\ & (((\Mux7~481_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~483_combout\,
	datab => \Mux4~5_combout\,
	datac => \Mux7~474_combout\,
	datad => \Mux7~481_combout\,
	combout => \Mux7~484_combout\);

-- Location: LCCOMB_X24_Y17_N28
\Mux7~461\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~461_combout\ = (y_cnt(3) & (y_cnt(2) & (y_cnt(0) & !y_cnt(1)))) # (!y_cnt(3) & (!y_cnt(2) & (!y_cnt(0) & y_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~461_combout\);

-- Location: LCCOMB_X22_Y17_N2
\Mux7~467\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~467_combout\ = (y_cnt(2) & (!y_cnt(3) & ((y_cnt(0)) # (y_cnt(1))))) # (!y_cnt(2) & (y_cnt(3) & ((!y_cnt(1)) # (!y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(3),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~467_combout\);

-- Location: LCCOMB_X22_Y17_N12
\Mux7~468\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~468_combout\ = (\Mux6~8_combout\ & ((\Mux4~5_combout\ & ((\Mux7~467_combout\))) # (!\Mux4~5_combout\ & (\Mux7~461_combout\)))) # (!\Mux6~8_combout\ & (\Mux7~461_combout\ & ((\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~461_combout\,
	datab => \Mux7~467_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~468_combout\);

-- Location: LCCOMB_X22_Y17_N24
\Mux7~462\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~462_combout\ = (\Mux7~461_combout\ & ((\Mux4~5_combout\) # (!\Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~461_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~462_combout\);

-- Location: LCCOMB_X22_Y17_N18
\Mux7~463\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~463_combout\ = (\Mux6~8_combout\ & (y_cnt(2) $ ((y_cnt(3))))) # (!\Mux6~8_combout\ & (((\Mux7~461_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(3),
	datac => \Mux6~8_combout\,
	datad => \Mux7~461_combout\,
	combout => \Mux7~463_combout\);

-- Location: LCCOMB_X24_Y17_N20
\Mux7~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~133_combout\ = (y_cnt(3) & (y_cnt(2) & (y_cnt(0) & !y_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~133_combout\);

-- Location: LCCOMB_X22_Y17_N28
\Mux7~464\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~464_combout\ = (\Mux6~8_combout\ & (((\Mux7~133_combout\)))) # (!\Mux6~8_combout\ & (y_cnt(2) $ (((y_cnt(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux7~133_combout\,
	datac => \Mux6~8_combout\,
	datad => y_cnt(3),
	combout => \Mux7~464_combout\);

-- Location: LCCOMB_X22_Y17_N6
\Mux7~465\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~465_combout\ = (\Mux4~5_combout\ & (\Mux7~461_combout\)) # (!\Mux4~5_combout\ & ((\Mux7~464_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~461_combout\,
	datab => \Mux7~464_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~465_combout\);

-- Location: LCCOMB_X22_Y17_N20
\Mux7~466\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~466_combout\ = (\Mux5~3_combout\ & ((\Mux7~463_combout\) # ((\Mux3~3_combout\)))) # (!\Mux5~3_combout\ & (((!\Mux3~3_combout\ & \Mux7~465_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux7~463_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux7~465_combout\,
	combout => \Mux7~466_combout\);

-- Location: LCCOMB_X22_Y17_N14
\Mux7~469\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~469_combout\ = (\Mux3~3_combout\ & ((\Mux7~466_combout\ & (\Mux7~468_combout\)) # (!\Mux7~466_combout\ & ((\Mux7~462_combout\))))) # (!\Mux3~3_combout\ & (((\Mux7~466_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~468_combout\,
	datab => \Mux7~462_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux7~466_combout\,
	combout => \Mux7~469_combout\);

-- Location: LCCOMB_X21_Y17_N18
\Mux7~451\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~451_combout\ = (y_cnt(3) & (y_cnt(2) & (!y_cnt(1) & !y_cnt(0)))) # (!y_cnt(3) & (!y_cnt(2) & (y_cnt(1) & y_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => y_cnt(1),
	datad => y_cnt(0),
	combout => \Mux7~451_combout\);

-- Location: LCCOMB_X21_Y17_N20
\Mux7~458\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~458_combout\ = (\Mux5~3_combout\ & ((\Mux3~3_combout\ & (!\Mux7~457_combout\)) # (!\Mux3~3_combout\ & ((\Mux7~451_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~457_combout\,
	datab => \Mux7~451_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~458_combout\);

-- Location: LCCOMB_X21_Y17_N14
\Mux7~459\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~459_combout\ = (\Mux7~458_combout\) # ((!\Mux7~450_combout\ & !\Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~450_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux7~458_combout\,
	combout => \Mux7~459_combout\);

-- Location: LCCOMB_X21_Y17_N30
\Mux7~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~175_combout\ = y_cnt(1) $ (y_cnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => y_cnt(1),
	datad => y_cnt(2),
	combout => \Mux7~175_combout\);

-- Location: LCCOMB_X21_Y17_N28
\Mux7~452\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~452_combout\ = (\Mux5~3_combout\ & (((\Mux7~451_combout\)))) # (!\Mux5~3_combout\ & (y_cnt(3) & ((\Mux7~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux7~451_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux7~175_combout\,
	combout => \Mux7~452_combout\);

-- Location: LCCOMB_X21_Y17_N22
\Mux7~453\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~453_combout\ = (\Mux3~3_combout\ & (!\Mux7~450_combout\ & (\Mux5~3_combout\))) # (!\Mux3~3_combout\ & (((\Mux7~452_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~450_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux7~452_combout\,
	combout => \Mux7~453_combout\);

-- Location: LCCOMB_X23_Y16_N0
\Mux7~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~66_combout\ = (!y_cnt(0) & !y_cnt(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~66_combout\);

-- Location: LCCOMB_X21_Y17_N8
\Mux7~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~107_combout\ = (y_cnt(3) & y_cnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => y_cnt(3),
	datad => y_cnt(2),
	combout => \Mux7~107_combout\);

-- Location: LCCOMB_X21_Y17_N24
\Mux7~454\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~454_combout\ = (\Mux5~3_combout\ & (\Mux7~66_combout\ & (\Mux7~107_combout\))) # (!\Mux5~3_combout\ & (((\Mux7~451_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~66_combout\,
	datab => \Mux7~107_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux7~451_combout\,
	combout => \Mux7~454_combout\);

-- Location: LCCOMB_X21_Y17_N6
\Mux7~455\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~455_combout\ = (\Mux7~450_combout\ & (\Mux7~454_combout\ & (\Mux3~3_combout\ $ (!\Mux5~3_combout\)))) # (!\Mux7~450_combout\ & ((\Mux7~454_combout\) # (\Mux3~3_combout\ $ (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~450_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux7~454_combout\,
	combout => \Mux7~455_combout\);

-- Location: LCCOMB_X21_Y17_N0
\Mux7~456\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~456_combout\ = (\Mux6~8_combout\ & ((\Mux4~5_combout\) # ((\Mux7~453_combout\)))) # (!\Mux6~8_combout\ & (!\Mux4~5_combout\ & ((\Mux7~455_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux4~5_combout\,
	datac => \Mux7~453_combout\,
	datad => \Mux7~455_combout\,
	combout => \Mux7~456_combout\);

-- Location: LCCOMB_X21_Y17_N12
\Mux7~460\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~460_combout\ = (\Mux4~5_combout\ & ((\Mux7~456_combout\ & ((\Mux7~459_combout\))) # (!\Mux7~456_combout\ & (!\Mux7~450_combout\)))) # (!\Mux4~5_combout\ & (((\Mux7~456_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux7~450_combout\,
	datac => \Mux7~459_combout\,
	datad => \Mux7~456_combout\,
	combout => \Mux7~460_combout\);

-- Location: LCCOMB_X22_Y17_N8
\Mux7~470\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~470_combout\ = (x_cnt(0) & ((\Mux2~2_combout\) # ((\Mux7~460_combout\)))) # (!x_cnt(0) & (!\Mux2~2_combout\ & (\Mux7~469_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux2~2_combout\,
	datac => \Mux7~469_combout\,
	datad => \Mux7~460_combout\,
	combout => \Mux7~470_combout\);

-- Location: LCCOMB_X23_Y15_N26
\Mux7~447\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~447_combout\ = (y_cnt(0) & (((!\Mux6~8_combout\) # (!y_cnt(1))) # (!y_cnt(2)))) # (!y_cnt(0) & ((y_cnt(2)) # ((y_cnt(1)) # (\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(2),
	datac => y_cnt(1),
	datad => \Mux6~8_combout\,
	combout => \Mux7~447_combout\);

-- Location: LCCOMB_X23_Y15_N12
\Mux7~448\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~448_combout\ = (y_cnt(3) & (!\Mux7~447_combout\ & \Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(3),
	datac => \Mux7~447_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~448_combout\);

-- Location: LCCOMB_X23_Y15_N6
\Mux7~435\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~435_combout\ = (y_cnt(1) & (((!\Mux6~8_combout\ & !\Mux5~3_combout\)) # (!y_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => \Mux6~8_combout\,
	datac => y_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~435_combout\);

-- Location: LCCOMB_X23_Y15_N28
\Mux7~436\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~436_combout\ = (!y_cnt(3) & (!y_cnt(2) & \Mux7~435_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(3),
	datac => y_cnt(2),
	datad => \Mux7~435_combout\,
	combout => \Mux7~436_combout\);

-- Location: LCCOMB_X23_Y15_N22
\Mux7~441\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~441_combout\ = (y_cnt(3) & (!y_cnt(1) & y_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(3),
	datac => y_cnt(1),
	datad => y_cnt(0),
	combout => \Mux7~441_combout\);

-- Location: LCCOMB_X23_Y15_N4
\Mux7~444\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~444_combout\ = (\Mux5~3_combout\ & (((!y_cnt(1))))) # (!\Mux5~3_combout\ & (!y_cnt(3) & ((y_cnt(0)) # (y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(3),
	datac => y_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~444_combout\);

-- Location: LCCOMB_X23_Y15_N8
\Mux7~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~178_combout\ = (!y_cnt(3) & (y_cnt(1) & !y_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(3),
	datac => y_cnt(1),
	datad => y_cnt(0),
	combout => \Mux7~178_combout\);

-- Location: LCCOMB_X23_Y15_N24
\Mux7~442\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~442_combout\ = (y_cnt(3) & (\Mux5~3_combout\ $ (((!y_cnt(1)) # (!y_cnt(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(3),
	datac => y_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~442_combout\);

-- Location: LCCOMB_X23_Y15_N18
\Mux7~443\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~443_combout\ = (y_cnt(2) & (((\Mux6~8_combout\)))) # (!y_cnt(2) & ((\Mux6~8_combout\ & ((\Mux7~442_combout\))) # (!\Mux6~8_combout\ & (\Mux7~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux7~178_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux7~442_combout\,
	combout => \Mux7~443_combout\);

-- Location: LCCOMB_X23_Y15_N30
\Mux7~445\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~445_combout\ = (y_cnt(2) & ((\Mux7~443_combout\ & ((\Mux7~444_combout\))) # (!\Mux7~443_combout\ & (\Mux7~441_combout\)))) # (!y_cnt(2) & (((\Mux7~443_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~441_combout\,
	datab => y_cnt(2),
	datac => \Mux7~444_combout\,
	datad => \Mux7~443_combout\,
	combout => \Mux7~445_combout\);

-- Location: LCCOMB_X23_Y15_N14
\Mux7~439\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~439_combout\ = (\Mux7~178_combout\ & (!y_cnt(2) & \Mux6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~178_combout\,
	datac => y_cnt(2),
	datad => \Mux6~8_combout\,
	combout => \Mux7~439_combout\);

-- Location: LCCOMB_X23_Y15_N10
\Mux7~437\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~437_combout\ = (y_cnt(0) & ((y_cnt(3)) # ((y_cnt(1) & !\Mux5~3_combout\)))) # (!y_cnt(0) & ((y_cnt(1) & (y_cnt(3))) # (!y_cnt(1) & ((\Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(3),
	datac => y_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~437_combout\);

-- Location: LCCOMB_X23_Y15_N0
\Mux7~438\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~438_combout\ = (!\Mux6~8_combout\ & ((y_cnt(1) & (!y_cnt(2) & !\Mux7~437_combout\)) # (!y_cnt(1) & (y_cnt(2) & \Mux7~437_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => \Mux6~8_combout\,
	datac => y_cnt(2),
	datad => \Mux7~437_combout\,
	combout => \Mux7~438_combout\);

-- Location: LCCOMB_X23_Y15_N16
\Mux7~440\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~440_combout\ = (\Mux7~438_combout\) # ((!\Mux5~3_combout\ & \Mux7~439_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~3_combout\,
	datac => \Mux7~439_combout\,
	datad => \Mux7~438_combout\,
	combout => \Mux7~440_combout\);

-- Location: LCCOMB_X23_Y15_N20
\Mux7~446\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~446_combout\ = (\Mux3~3_combout\ & ((\Mux4~5_combout\) # ((\Mux7~440_combout\)))) # (!\Mux3~3_combout\ & (!\Mux4~5_combout\ & (\Mux7~445_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux4~5_combout\,
	datac => \Mux7~445_combout\,
	datad => \Mux7~440_combout\,
	combout => \Mux7~446_combout\);

-- Location: LCCOMB_X23_Y15_N2
\Mux7~449\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~449_combout\ = (\Mux4~5_combout\ & ((\Mux7~446_combout\ & (\Mux7~448_combout\)) # (!\Mux7~446_combout\ & ((\Mux7~436_combout\))))) # (!\Mux4~5_combout\ & (((\Mux7~446_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~448_combout\,
	datab => \Mux4~5_combout\,
	datac => \Mux7~436_combout\,
	datad => \Mux7~446_combout\,
	combout => \Mux7~449_combout\);

-- Location: LCCOMB_X22_Y17_N26
\spi_data[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[4]~3_combout\ = (\Mux2~2_combout\ & ((\Mux7~470_combout\ & (\Mux7~484_combout\)) # (!\Mux7~470_combout\ & ((\Mux7~449_combout\))))) # (!\Mux2~2_combout\ & (((\Mux7~470_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux7~484_combout\,
	datac => \Mux7~470_combout\,
	datad => \Mux7~449_combout\,
	combout => \spi_data[4]~3_combout\);

-- Location: LCCOMB_X26_Y20_N30
\Mux7~540\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~540_combout\ = (\Mux3~3_combout\ & (\Mux6~8_combout\ & ((\Mux2~2_combout\) # (\Mux4~5_combout\)))) # (!\Mux3~3_combout\ & ((\Mux6~8_combout\ & ((!\Mux4~5_combout\) # (!\Mux2~2_combout\))) # (!\Mux6~8_combout\ & ((\Mux4~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~540_combout\);

-- Location: LCCOMB_X26_Y20_N24
\Mux7~539\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~539_combout\ = (\Mux2~2_combout\ & (!\Mux3~3_combout\ & ((\Mux4~5_combout\) # (!\Mux6~8_combout\)))) # (!\Mux2~2_combout\ & (\Mux3~3_combout\ & ((!\Mux4~5_combout\) # (!\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~539_combout\);

-- Location: LCCOMB_X26_Y20_N8
\Mux7~541\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~541_combout\ = (\Mux5~3_combout\ & (\Mux7~539_combout\ & ((!\Mux7~540_combout\) # (!y_cnt(0))))) # (!\Mux5~3_combout\ & (!y_cnt(0) & (!\Mux7~540_combout\ & !\Mux7~539_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => \Mux5~3_combout\,
	datac => \Mux7~540_combout\,
	datad => \Mux7~539_combout\,
	combout => \Mux7~541_combout\);

-- Location: LCCOMB_X22_Y21_N24
\Mux7~553\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~553_combout\ = (\Mux3~3_combout\ & (((!\Mux5~3_combout\ & !\Mux4~5_combout\)) # (!y_cnt(0)))) # (!\Mux3~3_combout\ & ((y_cnt(0)) # ((\Mux5~3_combout\) # (\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => y_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~553_combout\);

-- Location: LCCOMB_X22_Y21_N26
\Mux7~554\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~554_combout\ = (\Mux6~8_combout\ & (\Mux2~2_combout\ & !\Mux7~553_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux7~553_combout\,
	combout => \Mux7~554_combout\);

-- Location: LCCOMB_X22_Y22_N26
\Mux7~550\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~550_combout\ = (\Mux6~8_combout\ & (!\Mux2~2_combout\ & (!\Mux3~3_combout\ & \Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~550_combout\);

-- Location: LCCOMB_X22_Y22_N24
\Mux7~547\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~547_combout\ = (\Mux2~2_combout\ & (\Mux3~3_combout\ & ((\Mux5~3_combout\) # (!\Mux6~8_combout\)))) # (!\Mux2~2_combout\ & ((\Mux3~3_combout\ & ((!\Mux5~3_combout\))) # (!\Mux3~3_combout\ & (\Mux6~8_combout\ & \Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~547_combout\);

-- Location: LCCOMB_X22_Y22_N14
\Mux7~548\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~548_combout\ = (\Mux6~8_combout\ & (!y_cnt(0) & ((\Mux3~3_combout\) # (\Mux5~3_combout\)))) # (!\Mux6~8_combout\ & (((\Mux3~3_combout\ & \Mux5~3_combout\)) # (!y_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(0),
	datac => \Mux3~3_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~548_combout\);

-- Location: LCCOMB_X22_Y22_N16
\Mux7~549\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~549_combout\ = (\Mux4~5_combout\ & (y_cnt(0))) # (!\Mux4~5_combout\ & ((\Mux2~2_combout\ & (!y_cnt(0))) # (!\Mux2~2_combout\ & ((\Mux7~548_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => \Mux2~2_combout\,
	datac => \Mux7~548_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~549_combout\);

-- Location: LCCOMB_X22_Y22_N28
\Mux7~551\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~551_combout\ = (\Mux4~5_combout\ & ((\Mux7~549_combout\ & (\Mux7~550_combout\)) # (!\Mux7~549_combout\ & ((!\Mux7~547_combout\))))) # (!\Mux4~5_combout\ & (((\Mux7~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~550_combout\,
	datab => \Mux7~547_combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux7~549_combout\,
	combout => \Mux7~551_combout\);

-- Location: LCCOMB_X23_Y19_N12
\Mux7~542\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~542_combout\ = (\Mux5~3_combout\ & ((y_cnt(0)) # ((\Mux6~8_combout\)))) # (!\Mux5~3_combout\ & (((\Mux6~8_combout\ & \Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => \Mux5~3_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux7~542_combout\);

-- Location: LCCOMB_X23_Y19_N14
\Mux7~543\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~543_combout\ = (y_cnt(0) & (\Mux5~3_combout\ $ (((\Mux6~8_combout\) # (!\Mux2~2_combout\))))) # (!y_cnt(0) & ((\Mux5~3_combout\ & (!\Mux6~8_combout\)) # (!\Mux5~3_combout\ & ((\Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux5~3_combout\,
	datad => y_cnt(0),
	combout => \Mux7~543_combout\);

-- Location: LCCOMB_X23_Y19_N26
\Mux7~545\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~545_combout\ = (\Mux4~5_combout\ & (\Mux3~3_combout\)) # (!\Mux4~5_combout\ & ((\Mux7~543_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datac => \Mux7~543_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~545_combout\);

-- Location: LCCOMB_X23_Y19_N16
\Mux7~544\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~544_combout\ = (\Mux3~3_combout\ & ((!\Mux4~5_combout\))) # (!\Mux3~3_combout\ & (!\Mux7~543_combout\ & \Mux4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datac => \Mux7~543_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~544_combout\);

-- Location: LCCOMB_X23_Y19_N0
\Mux7~546\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~546_combout\ = (\Mux7~542_combout\ & ((\Mux6~8_combout\ & (\Mux7~545_combout\ & \Mux7~544_combout\)) # (!\Mux6~8_combout\ & (!\Mux7~545_combout\)))) # (!\Mux7~542_combout\ & ((\Mux6~8_combout\ & ((!\Mux7~544_combout\))) # (!\Mux6~8_combout\ & 
-- (\Mux7~545_combout\ & \Mux7~544_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~542_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux7~545_combout\,
	datad => \Mux7~544_combout\,
	combout => \Mux7~546_combout\);

-- Location: LCCOMB_X23_Y20_N24
\Mux7~552\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~552_combout\ = (y_cnt(2) & ((y_cnt(3)) # ((\Mux7~546_combout\)))) # (!y_cnt(2) & (!y_cnt(3) & (\Mux7~551_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(3),
	datac => \Mux7~551_combout\,
	datad => \Mux7~546_combout\,
	combout => \Mux7~552_combout\);

-- Location: LCCOMB_X23_Y20_N10
\Mux7~555\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~555_combout\ = (y_cnt(3) & ((\Mux7~552_combout\ & ((\Mux7~554_combout\))) # (!\Mux7~552_combout\ & (\Mux7~541_combout\)))) # (!y_cnt(3) & (((\Mux7~552_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~541_combout\,
	datab => y_cnt(3),
	datac => \Mux7~554_combout\,
	datad => \Mux7~552_combout\,
	combout => \Mux7~555_combout\);

-- Location: LCCOMB_X22_Y21_N6
\Mux7~536\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~536_combout\ = (\Mux3~3_combout\ & (\Mux4~5_combout\ & ((y_cnt(0)) # (!\Mux5~3_combout\)))) # (!\Mux3~3_combout\ & (y_cnt(0) & (!\Mux5~3_combout\ & !\Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => y_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~536_combout\);

-- Location: LCCOMB_X22_Y21_N28
\Mux7~537\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~537_combout\ = (\Mux6~8_combout\ & (\Mux2~2_combout\ & \Mux7~536_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux7~536_combout\,
	combout => \Mux7~537_combout\);

-- Location: LCCOMB_X22_Y21_N18
\Mux7~522\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~522_combout\ = (!\Mux2~2_combout\ & ((\Mux3~3_combout\ & ((y_cnt(0)) # (!\Mux6~8_combout\))) # (!\Mux3~3_combout\ & ((\Mux6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => y_cnt(0),
	datac => \Mux2~2_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~522_combout\);

-- Location: LCCOMB_X22_Y21_N10
\Mux7~520\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~520_combout\ = (\Mux2~2_combout\ & (y_cnt(0) & (\Mux3~3_combout\ $ (\Mux6~8_combout\)))) # (!\Mux2~2_combout\ & ((\Mux3~3_combout\ $ (\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => y_cnt(0),
	datac => \Mux3~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~520_combout\);

-- Location: LCCOMB_X22_Y21_N0
\Mux7~519\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~519_combout\ = (\Mux6~8_combout\ & ((\Mux2~2_combout\) # ((\Mux3~3_combout\)))) # (!\Mux6~8_combout\ & (y_cnt(0) & (\Mux2~2_combout\ $ (!\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => y_cnt(0),
	datac => \Mux3~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~519_combout\);

-- Location: LCCOMB_X22_Y21_N20
\Mux7~521\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~521_combout\ = (!\Mux5~3_combout\ & ((\Mux4~5_combout\ & ((\Mux7~519_combout\))) # (!\Mux4~5_combout\ & (\Mux7~520_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux7~520_combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux7~519_combout\,
	combout => \Mux7~521_combout\);

-- Location: LCCOMB_X22_Y21_N4
\Mux7~523\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~523_combout\ = (\Mux7~521_combout\) # ((\Mux4~5_combout\ & (\Mux7~522_combout\ & \Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux7~522_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux7~521_combout\,
	combout => \Mux7~523_combout\);

-- Location: LCCOMB_X22_Y21_N8
\Mux7~527\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~527_combout\ = ((!\Mux3~3_combout\ & \Mux2~2_combout\)) # (!\Mux5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux7~527_combout\);

-- Location: LCCOMB_X22_Y21_N30
\Mux7~524\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~524_combout\ = (\Mux5~3_combout\ & ((\Mux3~3_combout\) # ((!\Mux2~2_combout\) # (!y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => y_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux7~524_combout\);

-- Location: LCCOMB_X22_Y21_N12
\Mux7~525\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~525_combout\ = (\Mux2~2_combout\ & ((\Mux3~3_combout\) # ((!y_cnt(0))))) # (!\Mux2~2_combout\ & (\Mux5~3_combout\ & ((\Mux3~3_combout\) # (y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => y_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux7~525_combout\);

-- Location: LCCOMB_X22_Y21_N2
\Mux7~526\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~526_combout\ = (!\Mux6~8_combout\ & ((\Mux4~5_combout\ & (\Mux7~524_combout\)) # (!\Mux4~5_combout\ & ((!\Mux7~525_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux7~524_combout\,
	datad => \Mux7~525_combout\,
	combout => \Mux7~526_combout\);

-- Location: LCCOMB_X22_Y21_N22
\Mux7~528\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~528_combout\ = (\Mux7~526_combout\) # ((\Mux6~8_combout\ & (\Mux4~5_combout\ & \Mux7~527_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux4~5_combout\,
	datac => \Mux7~527_combout\,
	datad => \Mux7~526_combout\,
	combout => \Mux7~528_combout\);

-- Location: LCCOMB_X23_Y21_N4
\Mux7~529\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~529_combout\ = (\Mux5~3_combout\ & ((\Mux4~5_combout\ & ((\Mux2~2_combout\))) # (!\Mux4~5_combout\ & (y_cnt(0))))) # (!\Mux5~3_combout\ & (((\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => y_cnt(0),
	datac => \Mux2~2_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~529_combout\);

-- Location: LCCOMB_X23_Y21_N8
\Mux7~533\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~533_combout\ = (\Mux5~3_combout\ & (!\Mux2~2_combout\ & ((y_cnt(0)) # (!\Mux4~5_combout\)))) # (!\Mux5~3_combout\ & (((\Mux2~2_combout\) # (\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => y_cnt(0),
	datac => \Mux2~2_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~533_combout\);

-- Location: LCCOMB_X23_Y21_N22
\Mux7~530\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~530_combout\ = (y_cnt(0) & ((\Mux2~2_combout\) # ((\Mux5~3_combout\)))) # (!y_cnt(0) & (((\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => y_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~530_combout\);

-- Location: LCCOMB_X23_Y21_N12
\Mux7~531\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~531_combout\ = (\Mux2~2_combout\ & ((y_cnt(0) & (!\Mux5~3_combout\ & \Mux4~5_combout\)) # (!y_cnt(0) & ((!\Mux4~5_combout\))))) # (!\Mux2~2_combout\ & (y_cnt(0) $ (\Mux5~3_combout\ $ (\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => y_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~531_combout\);

-- Location: LCCOMB_X23_Y21_N10
\Mux7~532\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~532_combout\ = (\Mux6~8_combout\ & ((\Mux3~3_combout\) # ((\Mux7~530_combout\)))) # (!\Mux6~8_combout\ & (!\Mux3~3_combout\ & ((!\Mux7~531_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux7~530_combout\,
	datad => \Mux7~531_combout\,
	combout => \Mux7~532_combout\);

-- Location: LCCOMB_X23_Y21_N2
\Mux7~534\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~534_combout\ = (\Mux3~3_combout\ & ((\Mux7~532_combout\ & ((\Mux7~533_combout\))) # (!\Mux7~532_combout\ & (!\Mux7~529_combout\)))) # (!\Mux3~3_combout\ & (((\Mux7~532_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux7~529_combout\,
	datac => \Mux7~533_combout\,
	datad => \Mux7~532_combout\,
	combout => \Mux7~534_combout\);

-- Location: LCCOMB_X22_Y21_N16
\Mux7~535\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~535_combout\ = (y_cnt(2) & ((y_cnt(3)) # ((\Mux7~528_combout\)))) # (!y_cnt(2) & (!y_cnt(3) & ((\Mux7~534_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(3),
	datac => \Mux7~528_combout\,
	datad => \Mux7~534_combout\,
	combout => \Mux7~535_combout\);

-- Location: LCCOMB_X22_Y21_N14
\Mux7~538\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~538_combout\ = (y_cnt(3) & ((\Mux7~535_combout\ & (\Mux7~537_combout\)) # (!\Mux7~535_combout\ & ((\Mux7~523_combout\))))) # (!y_cnt(3) & (((\Mux7~535_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux7~537_combout\,
	datac => \Mux7~523_combout\,
	datad => \Mux7~535_combout\,
	combout => \Mux7~538_combout\);

-- Location: LCCOMB_X23_Y21_N0
\Mux7~485\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~485_combout\ = (\Mux5~3_combout\ & ((\Mux2~2_combout\ & ((\Mux3~3_combout\))) # (!\Mux2~2_combout\ & (!\Mux6~8_combout\ & !\Mux3~3_combout\)))) # (!\Mux5~3_combout\ & (\Mux6~8_combout\ $ (((\Mux2~2_combout\) # (\Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~485_combout\);

-- Location: LCCOMB_X23_Y21_N20
\Mux7~489\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~489_combout\ = (\Mux6~8_combout\ & ((\Mux3~3_combout\ & (!\Mux5~3_combout\)) # (!\Mux3~3_combout\ & ((\Mux2~2_combout\))))) # (!\Mux6~8_combout\ & (\Mux5~3_combout\ & (\Mux2~2_combout\ $ (\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~489_combout\);

-- Location: LCCOMB_X23_Y21_N26
\Mux7~486\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~486_combout\ = (!\Mux6~8_combout\ & (\Mux3~3_combout\ & (\Mux2~2_combout\ $ (!\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~486_combout\);

-- Location: LCCOMB_X23_Y21_N16
\Mux7~487\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~487_combout\ = (\Mux6~8_combout\ & (\Mux2~2_combout\ & (!\Mux5~3_combout\))) # (!\Mux6~8_combout\ & (\Mux3~3_combout\ & ((\Mux2~2_combout\) # (!\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~487_combout\);

-- Location: LCCOMB_X23_Y21_N18
\Mux7~488\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~488_combout\ = (\Mux4~5_combout\ & (y_cnt(0))) # (!\Mux4~5_combout\ & ((y_cnt(0) & (\Mux7~486_combout\)) # (!y_cnt(0) & ((\Mux7~487_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => y_cnt(0),
	datac => \Mux7~486_combout\,
	datad => \Mux7~487_combout\,
	combout => \Mux7~488_combout\);

-- Location: LCCOMB_X23_Y21_N30
\Mux7~490\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~490_combout\ = (\Mux4~5_combout\ & ((\Mux7~488_combout\ & ((\Mux7~489_combout\))) # (!\Mux7~488_combout\ & (!\Mux7~485_combout\)))) # (!\Mux4~5_combout\ & (((\Mux7~488_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux7~485_combout\,
	datac => \Mux7~489_combout\,
	datad => \Mux7~488_combout\,
	combout => \Mux7~490_combout\);

-- Location: LCCOMB_X23_Y19_N20
\Mux7~494\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~494_combout\ = ((\Mux5~3_combout\ & \Mux3~2_combout\)) # (!\Mux6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux7~494_combout\);

-- Location: LCCOMB_X23_Y19_N30
\Mux7~491\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~491_combout\ = (\Mux6~8_combout\ & ((\Mux5~3_combout\ & ((!\Mux3~3_combout\))) # (!\Mux5~3_combout\ & ((\Mux3~3_combout\) # (!y_cnt(0)))))) # (!\Mux6~8_combout\ & (\Mux5~3_combout\ & ((\Mux3~3_combout\) # (!y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~491_combout\);

-- Location: LCCOMB_X23_Y19_N8
\Mux7~492\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~492_combout\ = (\Mux5~3_combout\ & ((\Mux3~3_combout\ & (!\Mux6~8_combout\)) # (!\Mux3~3_combout\ & ((y_cnt(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~492_combout\);

-- Location: LCCOMB_X23_Y19_N18
\Mux7~493\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~493_combout\ = (\Mux2~2_combout\ & ((\Mux4~5_combout\) # ((\Mux6~8_combout\ & \Mux7~492_combout\)))) # (!\Mux2~2_combout\ & (!\Mux6~8_combout\ & (!\Mux7~492_combout\ & !\Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux7~492_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~493_combout\);

-- Location: LCCOMB_X23_Y19_N2
\Mux7~495\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~495_combout\ = (\Mux4~5_combout\ & ((\Mux7~493_combout\ & (!\Mux7~494_combout\)) # (!\Mux7~493_combout\ & ((\Mux7~491_combout\))))) # (!\Mux4~5_combout\ & (((\Mux7~493_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux7~494_combout\,
	datac => \Mux7~491_combout\,
	datad => \Mux7~493_combout\,
	combout => \Mux7~495_combout\);

-- Location: LCCOMB_X23_Y20_N8
\Mux7~496\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~496_combout\ = (y_cnt(2) & (!y_cnt(3) & (\Mux7~490_combout\))) # (!y_cnt(2) & (y_cnt(3) & ((\Mux7~495_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(3),
	datac => \Mux7~490_combout\,
	datad => \Mux7~495_combout\,
	combout => \Mux7~496_combout\);

-- Location: LCCOMB_X22_Y22_N0
\Mux7~497\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~497_combout\ = (\Mux6~8_combout\ & ((\Mux3~3_combout\ & ((\Mux4~5_combout\))) # (!\Mux3~3_combout\ & (!y_cnt(0))))) # (!\Mux6~8_combout\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(0),
	datac => \Mux3~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~497_combout\);

-- Location: LCCOMB_X22_Y22_N8
\Mux7~501\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~501_combout\ = (\Mux4~5_combout\) # ((y_cnt(0) & (\Mux6~8_combout\)) # (!y_cnt(0) & ((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(0),
	datac => \Mux3~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~501_combout\);

-- Location: LCCOMB_X22_Y22_N30
\Mux7~498\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~498_combout\ = (\Mux4~5_combout\ & ((\Mux6~8_combout\ & (y_cnt(0))) # (!\Mux6~8_combout\ & ((!\Mux3~3_combout\))))) # (!\Mux4~5_combout\ & (\Mux6~8_combout\ $ (((y_cnt(0)) # (\Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(0),
	datac => \Mux3~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~498_combout\);

-- Location: LCCOMB_X22_Y22_N12
\Mux7~499\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~499_combout\ = (\Mux6~8_combout\ & ((\Mux3~3_combout\ & ((\Mux4~5_combout\))) # (!\Mux3~3_combout\ & ((y_cnt(0)) # (!\Mux4~5_combout\))))) # (!\Mux6~8_combout\ & ((\Mux3~3_combout\) # (y_cnt(0) $ (\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(0),
	datac => \Mux3~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~499_combout\);

-- Location: LCCOMB_X22_Y22_N10
\Mux7~500\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~500_combout\ = (\Mux2~2_combout\ & (\Mux5~3_combout\)) # (!\Mux2~2_combout\ & ((\Mux5~3_combout\ & (!\Mux7~498_combout\)) # (!\Mux5~3_combout\ & ((\Mux7~499_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux7~498_combout\,
	datad => \Mux7~499_combout\,
	combout => \Mux7~500_combout\);

-- Location: LCCOMB_X22_Y22_N22
\Mux7~502\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~502_combout\ = (\Mux2~2_combout\ & ((\Mux7~500_combout\ & ((!\Mux7~501_combout\))) # (!\Mux7~500_combout\ & (\Mux7~497_combout\)))) # (!\Mux2~2_combout\ & (((\Mux7~500_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux7~497_combout\,
	datac => \Mux7~501_combout\,
	datad => \Mux7~500_combout\,
	combout => \Mux7~502_combout\);

-- Location: LCCOMB_X23_Y20_N26
\Mux7~663\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~663_combout\ = (\Mux7~496_combout\) # ((y_cnt(2) & (y_cnt(3) & \Mux7~502_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(3),
	datac => \Mux7~496_combout\,
	datad => \Mux7~502_combout\,
	combout => \Mux7~663_combout\);

-- Location: LCCOMB_X22_Y22_N4
\Mux7~515\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~515_combout\ = (\Mux6~8_combout\ & (!\Mux2~2_combout\ & (y_cnt(0) & !\Mux5~3_combout\))) # (!\Mux6~8_combout\ & (\Mux2~2_combout\ & ((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux2~2_combout\,
	datac => y_cnt(0),
	datad => \Mux5~3_combout\,
	combout => \Mux7~515_combout\);

-- Location: LCCOMB_X22_Y22_N20
\Mux7~513\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~513_combout\ = (\Mux4~5_combout\ & (((\Mux5~3_combout\)))) # (!\Mux4~5_combout\ & (y_cnt(0) & ((\Mux6~8_combout\) # (!\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux5~3_combout\,
	datac => y_cnt(0),
	datad => \Mux4~5_combout\,
	combout => \Mux7~513_combout\);

-- Location: LCCOMB_X22_Y22_N2
\Mux7~514\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~514_combout\ = (\Mux5~3_combout\ & (\Mux3~3_combout\ & (!\Mux2~2_combout\ & !\Mux7~513_combout\))) # (!\Mux5~3_combout\ & (\Mux7~513_combout\ & (\Mux3~3_combout\ $ (!\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux7~513_combout\,
	combout => \Mux7~514_combout\);

-- Location: LCCOMB_X22_Y22_N18
\Mux7~516\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~516_combout\ = (\Mux7~514_combout\) # ((\Mux3~3_combout\ & (\Mux4~5_combout\ & \Mux7~515_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux4~5_combout\,
	datac => \Mux7~515_combout\,
	datad => \Mux7~514_combout\,
	combout => \Mux7~516_combout\);

-- Location: LCCOMB_X23_Y21_N28
\Mux7~510\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~510_combout\ = (!\Mux6~8_combout\ & ((\Mux2~2_combout\ & (!\Mux5~3_combout\)) # (!\Mux2~2_combout\ & ((!\Mux4~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~510_combout\);

-- Location: LCCOMB_X23_Y21_N14
\Mux7~509\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~509_combout\ = (\Mux2~2_combout\ & (((\Mux5~3_combout\ & !\Mux4~5_combout\)) # (!\Mux6~8_combout\))) # (!\Mux2~2_combout\ & (\Mux6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~509_combout\);

-- Location: LCCOMB_X23_Y21_N24
\Mux7~508\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~508_combout\ = (\Mux4~5_combout\ & (\Mux5~3_combout\ & ((\Mux2~2_combout\) # (!y_cnt(0))))) # (!\Mux4~5_combout\ & ((\Mux2~2_combout\ & ((!y_cnt(0)))) # (!\Mux2~2_combout\ & (!\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => y_cnt(0),
	datac => \Mux2~2_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~508_combout\);

-- Location: LCCOMB_X23_Y21_N6
\Mux7~511\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~511_combout\ = (\Mux3~3_combout\ & (\Mux7~510_combout\ & ((!\Mux7~508_combout\)))) # (!\Mux3~3_combout\ & (((\Mux7~509_combout\ & \Mux7~508_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux7~510_combout\,
	datac => \Mux7~509_combout\,
	datad => \Mux7~508_combout\,
	combout => \Mux7~511_combout\);

-- Location: LCCOMB_X23_Y22_N4
\Mux7~504\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~504_combout\ = (\Mux5~3_combout\ & ((\Mux6~8_combout\ & (\Mux4~5_combout\)) # (!\Mux6~8_combout\ & (!\Mux4~5_combout\ & \Mux3~3_combout\)))) # (!\Mux5~3_combout\ & (((\Mux4~5_combout\ & \Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~504_combout\);

-- Location: LCCOMB_X23_Y22_N6
\Mux7~503\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~503_combout\ = (\Mux5~3_combout\ & ((\Mux6~8_combout\ & ((!\Mux3~3_combout\))) # (!\Mux6~8_combout\ & (\Mux4~5_combout\)))) # (!\Mux5~3_combout\ & (!\Mux4~5_combout\ & ((\Mux6~8_combout\) # (\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~503_combout\);

-- Location: LCCOMB_X23_Y20_N30
\Mux7~505\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~505_combout\ = (\Mux4~5_combout\ & ((\Mux7~504_combout\ & (\Mux2~2_combout\)) # (!\Mux7~504_combout\ & ((\Mux7~503_combout\))))) # (!\Mux4~5_combout\ & (\Mux2~2_combout\ & (\Mux7~504_combout\ $ (!\Mux7~503_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux7~504_combout\,
	datad => \Mux7~503_combout\,
	combout => \Mux7~505_combout\);

-- Location: LCCOMB_X23_Y22_N26
\Mux7~506\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~506_combout\ = (\Mux7~504_combout\ & ((\Mux4~5_combout\ & (\Mux2~2_combout\ & \Mux7~503_combout\)) # (!\Mux4~5_combout\ & (!\Mux2~2_combout\ & !\Mux7~503_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux7~504_combout\,
	datad => \Mux7~503_combout\,
	combout => \Mux7~506_combout\);

-- Location: LCCOMB_X23_Y20_N16
\Mux7~507\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~507_combout\ = \Mux7~506_combout\ $ (((y_cnt(0) & !\Mux7~505_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(0),
	datac => \Mux7~505_combout\,
	datad => \Mux7~506_combout\,
	combout => \Mux7~507_combout\);

-- Location: LCCOMB_X23_Y20_N18
\Mux7~512\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~512_combout\ = (y_cnt(3) & ((y_cnt(2) & ((\Mux7~507_combout\))) # (!y_cnt(2) & (\Mux7~511_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(3),
	datac => \Mux7~511_combout\,
	datad => \Mux7~507_combout\,
	combout => \Mux7~512_combout\);

-- Location: LCCOMB_X23_Y20_N28
\Mux7~517\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~517_combout\ = (\Mux7~512_combout\) # ((y_cnt(2) & (!y_cnt(3) & \Mux7~516_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(3),
	datac => \Mux7~516_combout\,
	datad => \Mux7~512_combout\,
	combout => \Mux7~517_combout\);

-- Location: LCCOMB_X23_Y20_N6
\Mux7~518\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~518_combout\ = (y_cnt(1) & (x_cnt(0))) # (!y_cnt(1) & ((x_cnt(0) & (\Mux7~663_combout\)) # (!x_cnt(0) & ((\Mux7~517_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => x_cnt(0),
	datac => \Mux7~663_combout\,
	datad => \Mux7~517_combout\,
	combout => \Mux7~518_combout\);

-- Location: LCCOMB_X23_Y20_N20
\spi_data[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[4]~4_combout\ = (y_cnt(1) & ((\Mux7~518_combout\ & ((\Mux7~538_combout\))) # (!\Mux7~518_combout\ & (\Mux7~555_combout\)))) # (!y_cnt(1) & (((\Mux7~518_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~555_combout\,
	datab => y_cnt(1),
	datac => \Mux7~538_combout\,
	datad => \Mux7~518_combout\,
	combout => \spi_data[4]~4_combout\);

-- Location: LCCOMB_X23_Y20_N22
\spi_data[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[4]~5_combout\ = (\spi_data[4]~11_combout\ & ((x_cnt(2) & ((\spi_data[4]~4_combout\))) # (!x_cnt(2) & (\spi_data[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_data[4]~11_combout\,
	datab => x_cnt(2),
	datac => \spi_data[4]~3_combout\,
	datad => \spi_data[4]~4_combout\,
	combout => \spi_data[4]~5_combout\);

-- Location: LCCOMB_X21_Y20_N26
\Mux7~645\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~645_combout\ = (\Mux2~2_combout\ & (\Mux3~3_combout\ & ((\Mux5~3_combout\) # (x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => x_cnt(0),
	datac => \Mux2~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~645_combout\);

-- Location: LCCOMB_X21_Y20_N8
\Mux7~642\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~642_combout\ = (\Mux2~2_combout\ & ((\Mux3~3_combout\) # ((!x_cnt(0) & \Mux5~3_combout\)))) # (!\Mux2~2_combout\ & (x_cnt(0) & ((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => x_cnt(0),
	datac => \Mux3~3_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~642_combout\);

-- Location: LCCOMB_X21_Y20_N2
\Mux7~643\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~643_combout\ = (x_cnt(0) & ((\Mux5~3_combout\ & (\Mux2~2_combout\)) # (!\Mux5~3_combout\ & ((\Mux3~3_combout\))))) # (!x_cnt(0) & (\Mux2~2_combout\ & ((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => x_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~643_combout\);

-- Location: LCCOMB_X21_Y20_N28
\Mux7~644\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~644_combout\ = (!y_cnt(1) & ((\Mux6~8_combout\ & ((!\Mux7~643_combout\))) # (!\Mux6~8_combout\ & (!\Mux7~642_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(1),
	datac => \Mux7~642_combout\,
	datad => \Mux7~643_combout\,
	combout => \Mux7~644_combout\);

-- Location: LCCOMB_X21_Y20_N4
\Mux7~646\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~646_combout\ = (\Mux7~644_combout\) # ((\Mux6~8_combout\ & (y_cnt(1) & \Mux7~645_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(1),
	datac => \Mux7~645_combout\,
	datad => \Mux7~644_combout\,
	combout => \Mux7~646_combout\);

-- Location: LCCOMB_X21_Y20_N12
\Mux7~638\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~638_combout\ = (x_cnt(0) & (\Mux2~2_combout\ & ((!\Mux3~3_combout\) # (!\Mux6~8_combout\)))) # (!x_cnt(0) & (\Mux6~8_combout\ & (!\Mux2~2_combout\ & \Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(0),
	datac => \Mux2~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~638_combout\);

-- Location: LCCOMB_X21_Y20_N18
\Mux7~637\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~637_combout\ = (\Mux6~8_combout\ & ((\Mux2~2_combout\) # ((x_cnt(0) & \Mux3~3_combout\)))) # (!\Mux6~8_combout\ & (!x_cnt(0) & ((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux2~2_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~637_combout\);

-- Location: LCCOMB_X21_Y20_N24
\Mux7~667\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~667_combout\ = (\Mux6~8_combout\ & (y_cnt(1) & (!\Mux5~3_combout\ & !\Mux7~637_combout\))) # (!\Mux6~8_combout\ & (\Mux5~3_combout\ & (y_cnt(1) $ (\Mux7~637_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux7~637_combout\,
	combout => \Mux7~667_combout\);

-- Location: LCCOMB_X21_Y20_N14
\Mux7~668\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~668_combout\ = (\Mux7~637_combout\ & (\Mux5~3_combout\ & (\Mux7~638_combout\ $ (\Mux7~667_combout\)))) # (!\Mux7~637_combout\ & ((\Mux7~638_combout\ & (!\Mux5~3_combout\)) # (!\Mux7~638_combout\ & ((\Mux7~667_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~638_combout\,
	datab => \Mux7~637_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux7~667_combout\,
	combout => \Mux7~668_combout\);

-- Location: LCCOMB_X21_Y20_N10
\Mux7~639\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~639_combout\ = (\Mux2~2_combout\ & ((x_cnt(0) & (\Mux5~3_combout\ $ (!\Mux3~3_combout\))) # (!x_cnt(0) & (!\Mux5~3_combout\ & \Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => x_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~639_combout\);

-- Location: LCCOMB_X21_Y20_N20
\Mux7~640\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~640_combout\ = (y_cnt(1) & (!\Mux6~8_combout\ & \Mux7~639_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(1),
	datac => \Mux6~8_combout\,
	datad => \Mux7~639_combout\,
	combout => \Mux7~640_combout\);

-- Location: LCCOMB_X21_Y20_N30
\Mux7~641\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~641_combout\ = (y_cnt(3) & (y_cnt(2))) # (!y_cnt(3) & ((y_cnt(2) & (\Mux7~668_combout\)) # (!y_cnt(2) & ((\Mux7~640_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => \Mux7~668_combout\,
	datad => \Mux7~640_combout\,
	combout => \Mux7~641_combout\);

-- Location: LCCOMB_X21_Y20_N16
\Mux7~634\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~634_combout\ = (\Mux5~3_combout\ & (\Mux6~8_combout\ $ (y_cnt(1) $ (!x_cnt(0))))) # (!\Mux5~3_combout\ & (!\Mux6~8_combout\ & ((x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(1),
	datac => x_cnt(0),
	datad => \Mux5~3_combout\,
	combout => \Mux7~634_combout\);

-- Location: LCCOMB_X21_Y20_N22
\Mux7~635\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~635_combout\ = (!\Mux3~3_combout\ & (\Mux2~2_combout\ & \Mux7~634_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux7~634_combout\,
	combout => \Mux7~635_combout\);

-- Location: LCCOMB_X20_Y20_N20
\Mux7~592\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~592_combout\ = (!\Mux2~2_combout\ & ((\Mux5~3_combout\ & (!y_cnt(1) & !\Mux6~8_combout\)) # (!\Mux5~3_combout\ & ((\Mux6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => y_cnt(1),
	datac => \Mux6~8_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux7~592_combout\);

-- Location: LCCOMB_X21_Y20_N0
\Mux7~636\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~636_combout\ = (\Mux7~635_combout\) # ((\Mux3~3_combout\ & (x_cnt(0) & \Mux7~592_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => x_cnt(0),
	datac => \Mux7~635_combout\,
	datad => \Mux7~592_combout\,
	combout => \Mux7~636_combout\);

-- Location: LCCOMB_X21_Y20_N6
\Mux7~647\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~647_combout\ = (y_cnt(3) & ((\Mux7~641_combout\ & (\Mux7~646_combout\)) # (!\Mux7~641_combout\ & ((\Mux7~636_combout\))))) # (!y_cnt(3) & (((\Mux7~641_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux7~646_combout\,
	datac => \Mux7~641_combout\,
	datad => \Mux7~636_combout\,
	combout => \Mux7~647_combout\);

-- Location: LCCOMB_X19_Y18_N0
\Mux7~355\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~355_combout\ = (x_cnt(0) & ((y_cnt(7)) # ((!y_cnt(6)) # (!\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(7),
	datab => x_cnt(0),
	datac => \Mux5~2_combout\,
	datad => y_cnt(6),
	combout => \Mux7~355_combout\);

-- Location: LCCOMB_X19_Y18_N12
\Mux7~611\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~611_combout\ = (!y_cnt(3) & (!\Mux2~2_combout\ & (!\Mux3~3_combout\ & \Mux7~355_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux2~2_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux7~355_combout\,
	combout => \Mux7~611_combout\);

-- Location: LCCOMB_X22_Y20_N0
\Mux7~612\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~612_combout\ = (x_cnt(0) & (!\Mux5~3_combout\ & ((y_cnt(3)) # (!\Mux2~2_combout\)))) # (!x_cnt(0) & (((\Mux2~2_combout\ & \Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => y_cnt(3),
	datac => \Mux2~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~612_combout\);

-- Location: LCCOMB_X22_Y20_N2
\Mux7~613\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~613_combout\ = (\Mux6~8_combout\ & ((\Mux7~611_combout\) # ((\Mux3~3_combout\ & \Mux7~612_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux7~611_combout\,
	datad => \Mux7~612_combout\,
	combout => \Mux7~613_combout\);

-- Location: LCCOMB_X22_Y20_N10
\Mux7~629\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~629_combout\ = (x_cnt(0) & (((\Mux2~2_combout\) # (!\Mux6~8_combout\)) # (!\Mux3~3_combout\))) # (!x_cnt(0) & (\Mux2~2_combout\ $ (((\Mux3~3_combout\ & !\Mux6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux3~3_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~629_combout\);

-- Location: LCCOMB_X22_Y20_N20
\Mux7~630\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~630_combout\ = (!x_cnt(0) & (\Mux6~8_combout\ & \Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux6~8_combout\,
	datac => \Mux3~3_combout\,
	combout => \Mux7~630_combout\);

-- Location: LCCOMB_X22_Y20_N14
\Mux7~631\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~631_combout\ = (\Mux7~629_combout\ & (\Mux7~630_combout\ & ((\Mux5~3_combout\) # (!y_cnt(3))))) # (!\Mux7~629_combout\ & (!y_cnt(3) & (\Mux5~3_combout\ $ (!\Mux7~630_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~629_combout\,
	datab => \Mux5~3_combout\,
	datac => y_cnt(3),
	datad => \Mux7~630_combout\,
	combout => \Mux7~631_combout\);

-- Location: LCCOMB_X22_Y20_N8
\Mux7~621\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~621_combout\ = (\Mux2~2_combout\ & ((y_cnt(3) & ((\Mux6~8_combout\) # (!\Mux5~3_combout\))) # (!y_cnt(3) & ((\Mux5~3_combout\))))) # (!\Mux2~2_combout\ & (((\Mux6~8_combout\ & !\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux6~8_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~621_combout\);

-- Location: LCCOMB_X22_Y20_N6
\Mux7~622\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~622_combout\ = (y_cnt(3) & ((\Mux5~3_combout\) # ((!\Mux6~8_combout\ & \Mux2~2_combout\)))) # (!y_cnt(3) & (\Mux5~3_combout\ & ((\Mux2~2_combout\) # (!\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux6~8_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~622_combout\);

-- Location: LCCOMB_X22_Y20_N26
\Mux7~665\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~665_combout\ = (\Mux7~622_combout\) # ((y_cnt(6) & (!y_cnt(7) & \Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(6),
	datab => y_cnt(7),
	datac => \Mux3~2_combout\,
	datad => \Mux7~622_combout\,
	combout => \Mux7~665_combout\);

-- Location: LCCOMB_X22_Y20_N12
\Mux7~623\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~623_combout\ = (x_cnt(0) & ((!\Mux7~622_combout\))) # (!x_cnt(0) & (\Mux3~3_combout\ & \Mux7~622_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datac => \Mux3~3_combout\,
	datad => \Mux7~622_combout\,
	combout => \Mux7~623_combout\);

-- Location: LCCOMB_X22_Y20_N30
\Mux7~624\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~624_combout\ = (\Mux7~623_combout\ & ((\Mux7~621_combout\ & ((\Mux7~665_combout\) # (!y_cnt(3)))) # (!\Mux7~621_combout\ & ((!\Mux7~665_combout\))))) # (!\Mux7~623_combout\ & (!y_cnt(3) & ((\Mux7~665_combout\) # (!\Mux7~621_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux7~621_combout\,
	datac => \Mux7~665_combout\,
	datad => \Mux7~623_combout\,
	combout => \Mux7~624_combout\);

-- Location: LCCOMB_X23_Y19_N22
\Mux7~625\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~625_combout\ = (x_cnt(0) & (((!\Mux3~3_combout\)) # (!\Mux6~8_combout\))) # (!x_cnt(0) & (((\Mux5~3_combout\) # (\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~625_combout\);

-- Location: LCCOMB_X23_Y19_N28
\Mux7~626\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~626_combout\ = (\Mux3~3_combout\ & (x_cnt(0) $ (((!\Mux5~3_combout\) # (!\Mux6~8_combout\))))) # (!\Mux3~3_combout\ & (\Mux6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~626_combout\);

-- Location: LCCOMB_X23_Y19_N10
\Mux7~627\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~627_combout\ = (y_cnt(3) & ((\Mux2~2_combout\ & ((!\Mux7~626_combout\))) # (!\Mux2~2_combout\ & (!\Mux7~625_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux2~2_combout\,
	datac => \Mux7~625_combout\,
	datad => \Mux7~626_combout\,
	combout => \Mux7~627_combout\);

-- Location: LCCOMB_X22_Y20_N28
\Mux7~628\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~628_combout\ = (y_cnt(1) & ((y_cnt(2)) # ((\Mux7~624_combout\)))) # (!y_cnt(1) & (!y_cnt(2) & ((\Mux7~627_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => y_cnt(2),
	datac => \Mux7~624_combout\,
	datad => \Mux7~627_combout\,
	combout => \Mux7~628_combout\);

-- Location: LCCOMB_X22_Y20_N16
\Mux7~632\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~632_combout\ = (y_cnt(2) & ((\Mux7~628_combout\ & ((\Mux7~631_combout\))) # (!\Mux7~628_combout\ & (\Mux7~613_combout\)))) # (!y_cnt(2) & (((\Mux7~628_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux7~613_combout\,
	datac => \Mux7~631_combout\,
	datad => \Mux7~628_combout\,
	combout => \Mux7~632_combout\);

-- Location: LCCOMB_X24_Y21_N18
\Mux7~619\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~619_combout\ = (\Mux6~8_combout\ & (\Mux5~3_combout\ $ (((!x_cnt(0) & !\Mux2~2_combout\))))) # (!\Mux6~8_combout\ & (((!\Mux2~2_combout\ & \Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux6~8_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~619_combout\);

-- Location: LCCOMB_X24_Y21_N16
\Mux7~618\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~618_combout\ = (\Mux2~2_combout\ & (x_cnt(0) $ (((\Mux6~8_combout\ & !\Mux5~3_combout\))))) # (!\Mux2~2_combout\ & ((\Mux5~3_combout\ & ((\Mux6~8_combout\))) # (!\Mux5~3_combout\ & (x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux6~8_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~618_combout\);

-- Location: LCCOMB_X24_Y21_N24
\Mux7~669\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~669_combout\ = (!y_cnt(3) & ((\Mux2~2_combout\ & ((\Mux7~618_combout\) # (!\Mux3~3_combout\))) # (!\Mux2~2_combout\ & ((\Mux3~3_combout\) # (!\Mux7~618_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => y_cnt(3),
	datac => \Mux3~3_combout\,
	datad => \Mux7~618_combout\,
	combout => \Mux7~669_combout\);

-- Location: LCCOMB_X24_Y21_N30
\Mux7~670\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~670_combout\ = (\Mux7~619_combout\ & ((\Mux3~3_combout\ & (\Mux2~2_combout\ & !\Mux7~669_combout\)) # (!\Mux3~3_combout\ & ((\Mux7~669_combout\))))) # (!\Mux7~619_combout\ & (\Mux7~669_combout\ & ((\Mux3~3_combout\) # (!\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux7~619_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux7~669_combout\,
	combout => \Mux7~670_combout\);

-- Location: LCCOMB_X24_Y21_N4
\Mux7~609\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~609_combout\ = (\Mux3~3_combout\ & (\Mux6~8_combout\ $ (((!\Mux5~3_combout\))))) # (!\Mux3~3_combout\ & ((\Mux6~8_combout\ & (!\Mux2~2_combout\ & !\Mux5~3_combout\)) # (!\Mux6~8_combout\ & (\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~609_combout\);

-- Location: LCCOMB_X24_Y21_N22
\Mux7~606\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~606_combout\ = (\Mux2~2_combout\ & (\Mux3~3_combout\ & ((\Mux6~8_combout\) # (!\Mux5~3_combout\)))) # (!\Mux2~2_combout\ & (!\Mux5~3_combout\ & (\Mux6~8_combout\ & !\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~606_combout\);

-- Location: LCCOMB_X24_Y21_N28
\Mux7~607\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~607_combout\ = (\Mux2~2_combout\) # ((\Mux6~8_combout\ & ((!\Mux3~3_combout\))) # (!\Mux6~8_combout\ & ((\Mux5~3_combout\) # (\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~607_combout\);

-- Location: LCCOMB_X24_Y21_N10
\Mux7~608\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~608_combout\ = (x_cnt(0) & (!y_cnt(3) & ((!\Mux7~607_combout\)))) # (!x_cnt(0) & ((y_cnt(3)) # ((\Mux7~606_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => y_cnt(3),
	datac => \Mux7~606_combout\,
	datad => \Mux7~607_combout\,
	combout => \Mux7~608_combout\);

-- Location: LCCOMB_X24_Y21_N26
\Mux7~610\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~610_combout\ = (\Mux7~608_combout\) # ((y_cnt(3) & !\Mux7~609_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(3),
	datac => \Mux7~609_combout\,
	datad => \Mux7~608_combout\,
	combout => \Mux7~610_combout\);

-- Location: LCCOMB_X22_Y20_N22
\Mux7~615\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~615_combout\ = (\Mux3~3_combout\ & (x_cnt(0) $ (((!\Mux5~3_combout\) # (!\Mux2~2_combout\))))) # (!\Mux3~3_combout\ & (((\Mux2~2_combout\) # (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux3~3_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~615_combout\);

-- Location: LCCOMB_X22_Y20_N24
\Mux7~614\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~614_combout\ = (\Mux5~3_combout\ & ((x_cnt(0) $ (!\Mux3~3_combout\)) # (!\Mux2~2_combout\))) # (!\Mux5~3_combout\ & ((x_cnt(0)) # (\Mux3~3_combout\ $ (\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux3~3_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~614_combout\);

-- Location: LCCOMB_X22_Y20_N4
\Mux7~616\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~616_combout\ = (y_cnt(3) & ((\Mux6~8_combout\ & (!\Mux7~615_combout\)) # (!\Mux6~8_combout\ & ((!\Mux7~614_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux6~8_combout\,
	datac => \Mux7~615_combout\,
	datad => \Mux7~614_combout\,
	combout => \Mux7~616_combout\);

-- Location: LCCOMB_X22_Y20_N18
\Mux7~617\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~617_combout\ = (y_cnt(1) & ((y_cnt(2)) # ((\Mux7~613_combout\)))) # (!y_cnt(1) & (!y_cnt(2) & (\Mux7~616_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => y_cnt(2),
	datac => \Mux7~616_combout\,
	datad => \Mux7~613_combout\,
	combout => \Mux7~617_combout\);

-- Location: LCCOMB_X23_Y20_N12
\Mux7~620\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~620_combout\ = (y_cnt(2) & ((\Mux7~617_combout\ & (\Mux7~670_combout\)) # (!\Mux7~617_combout\ & ((\Mux7~610_combout\))))) # (!y_cnt(2) & (((\Mux7~617_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux7~670_combout\,
	datac => \Mux7~610_combout\,
	datad => \Mux7~617_combout\,
	combout => \Mux7~620_combout\);

-- Location: LCCOMB_X23_Y20_N14
\Mux7~633\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~633_combout\ = (\Mux4~5_combout\ & (y_cnt(0))) # (!\Mux4~5_combout\ & ((y_cnt(0) & ((\Mux7~620_combout\))) # (!y_cnt(0) & (\Mux7~632_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => y_cnt(0),
	datac => \Mux7~632_combout\,
	datad => \Mux7~620_combout\,
	combout => \Mux7~633_combout\);

-- Location: LCCOMB_X20_Y20_N6
\Mux7~603\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~603_combout\ = (\Mux2~2_combout\ & ((x_cnt(0) & (!\Mux6~8_combout\)) # (!x_cnt(0) & (\Mux6~8_combout\ & \Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux2~2_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~603_combout\);

-- Location: LCCOMB_X20_Y20_N28
\Mux7~604\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~604_combout\ = (!y_cnt(1) & (!\Mux3~3_combout\ & \Mux7~603_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(1),
	datac => \Mux3~3_combout\,
	datad => \Mux7~603_combout\,
	combout => \Mux7~604_combout\);

-- Location: LCCOMB_X20_Y20_N16
\Mux7~590\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~590_combout\ = (\Mux6~8_combout\ & (\Mux5~3_combout\ & (x_cnt(0) $ (y_cnt(1))))) # (!\Mux6~8_combout\ & (x_cnt(0) $ (((\Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => y_cnt(1),
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~590_combout\);

-- Location: LCCOMB_X20_Y20_N14
\Mux7~591\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~591_combout\ = (\Mux2~2_combout\ & (!\Mux3~3_combout\ & \Mux7~590_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~2_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux7~590_combout\,
	combout => \Mux7~591_combout\);

-- Location: LCCOMB_X20_Y20_N26
\Mux7~593\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~593_combout\ = (\Mux7~591_combout\) # ((x_cnt(0) & (\Mux3~3_combout\ & \Mux7~592_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux3~3_combout\,
	datac => \Mux7~591_combout\,
	datad => \Mux7~592_combout\,
	combout => \Mux7~593_combout\);

-- Location: LCCOMB_X20_Y20_N10
\Mux7~599\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~599_combout\ = (x_cnt(0) & (\Mux2~2_combout\ & ((\Mux6~8_combout\) # (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux2~2_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~599_combout\);

-- Location: LCCOMB_X20_Y20_N8
\Mux7~600\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~600_combout\ = (\Mux6~8_combout\ & ((\Mux2~2_combout\ & ((\Mux5~3_combout\) # (!x_cnt(0)))) # (!\Mux2~2_combout\ & ((!\Mux5~3_combout\))))) # (!\Mux6~8_combout\ & ((x_cnt(0) & ((!\Mux5~3_combout\) # (!\Mux2~2_combout\))) # (!x_cnt(0) & 
-- ((\Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux2~2_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~600_combout\);

-- Location: LCCOMB_X20_Y20_N18
\Mux7~601\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~601_combout\ = (y_cnt(1) & ((\Mux3~3_combout\ & ((!\Mux7~600_combout\))) # (!\Mux3~3_combout\ & (!\Mux7~599_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~599_combout\,
	datab => y_cnt(1),
	datac => \Mux7~600_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~601_combout\);

-- Location: LCCOMB_X20_Y20_N30
\Mux7~597\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~597_combout\ = (x_cnt(0) & (\Mux5~3_combout\ & !\Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~597_combout\);

-- Location: LCCOMB_X20_Y20_N4
\Mux7~594\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~594_combout\ = (x_cnt(0) & (!\Mux5~3_combout\ & ((y_cnt(1)) # (!\Mux3~3_combout\)))) # (!x_cnt(0) & (!y_cnt(1) & ((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => y_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~594_combout\);

-- Location: LCCOMB_X20_Y20_N2
\Mux7~595\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~595_combout\ = (\Mux6~8_combout\ & (!x_cnt(0) & (y_cnt(1) & !\Mux5~3_combout\))) # (!\Mux6~8_combout\ & (\Mux5~3_combout\ & (x_cnt(0) $ (!y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => y_cnt(1),
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~595_combout\);

-- Location: LCCOMB_X20_Y20_N12
\Mux7~596\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~596_combout\ = (\Mux2~2_combout\ & (((\Mux6~8_combout\)))) # (!\Mux2~2_combout\ & (\Mux3~3_combout\ & ((\Mux7~595_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux7~595_combout\,
	combout => \Mux7~596_combout\);

-- Location: LCCOMB_X20_Y20_N24
\Mux7~598\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~598_combout\ = (\Mux2~2_combout\ & ((\Mux7~596_combout\ & (\Mux7~597_combout\)) # (!\Mux7~596_combout\ & ((\Mux7~594_combout\))))) # (!\Mux2~2_combout\ & (((\Mux7~596_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~597_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux7~594_combout\,
	datad => \Mux7~596_combout\,
	combout => \Mux7~598_combout\);

-- Location: LCCOMB_X20_Y20_N0
\Mux7~602\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~602_combout\ = (y_cnt(3) & (((y_cnt(2))))) # (!y_cnt(3) & ((y_cnt(2) & ((\Mux7~598_combout\))) # (!y_cnt(2) & (\Mux7~601_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux7~601_combout\,
	datac => y_cnt(2),
	datad => \Mux7~598_combout\,
	combout => \Mux7~602_combout\);

-- Location: LCCOMB_X20_Y20_N22
\Mux7~605\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~605_combout\ = (y_cnt(3) & ((\Mux7~602_combout\ & (\Mux7~604_combout\)) # (!\Mux7~602_combout\ & ((\Mux7~593_combout\))))) # (!y_cnt(3) & (((\Mux7~602_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux7~604_combout\,
	datac => \Mux7~593_combout\,
	datad => \Mux7~602_combout\,
	combout => \Mux7~605_combout\);

-- Location: LCCOMB_X23_Y20_N4
\spi_data[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[4]~6_combout\ = (\Mux4~5_combout\ & ((\Mux7~633_combout\ & (\Mux7~647_combout\)) # (!\Mux7~633_combout\ & ((\Mux7~605_combout\))))) # (!\Mux4~5_combout\ & (((\Mux7~633_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux7~647_combout\,
	datac => \Mux7~633_combout\,
	datad => \Mux7~605_combout\,
	combout => \spi_data[4]~6_combout\);

-- Location: LCCOMB_X19_Y18_N22
\Mux7~664\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~664_combout\ = (y_cnt(6) & (!y_cnt(7) & (\Mux6~8_combout\ & \Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(6),
	datab => y_cnt(7),
	datac => \Mux6~8_combout\,
	datad => \Mux5~2_combout\,
	combout => \Mux7~664_combout\);

-- Location: LCCOMB_X19_Y18_N14
\Mux7~588\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~588_combout\ = (\Mux7~587_combout\ & (\Mux2~2_combout\ & (\Mux7~664_combout\ & \Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~587_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux7~664_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~588_combout\);

-- Location: LCCOMB_X23_Y16_N10
\Mux7~566\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~566_combout\ = (y_cnt(3) & ((y_cnt(0) & (!y_cnt(2) & !y_cnt(1))) # (!y_cnt(0) & ((!y_cnt(1)) # (!y_cnt(2)))))) # (!y_cnt(3) & (((y_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(0),
	datac => y_cnt(2),
	datad => y_cnt(1),
	combout => \Mux7~566_combout\);

-- Location: LCCOMB_X23_Y16_N28
\Mux7~422\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~422_combout\ = (!\Mux4~5_combout\ & !\Mux6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~5_combout\,
	datac => \Mux6~8_combout\,
	combout => \Mux7~422_combout\);

-- Location: LCCOMB_X23_Y16_N20
\Mux7~567\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~567_combout\ = (\Mux7~566_combout\ & (!\Mux5~3_combout\ & (!\Mux2~2_combout\ & \Mux7~422_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~566_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux7~422_combout\,
	combout => \Mux7~567_combout\);

-- Location: LCCOMB_X21_Y16_N26
\Mux7~583\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~583_combout\ = (y_cnt(2) & ((y_cnt(1)) # ((!\Mux6~8_combout\)))) # (!y_cnt(2) & (\Mux6~8_combout\ $ (((y_cnt(1) & y_cnt(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(1),
	datac => \Mux6~8_combout\,
	datad => y_cnt(0),
	combout => \Mux7~583_combout\);

-- Location: LCCOMB_X21_Y16_N20
\Mux7~582\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~582_combout\ = (!y_cnt(2) & (\Mux7~66_combout\ & (\Mux5~3_combout\ & \Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux7~66_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~582_combout\);

-- Location: LCCOMB_X21_Y16_N16
\Mux7~584\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~584_combout\ = (!\Mux2~2_combout\ & ((\Mux7~582_combout\) # ((!\Mux5~3_combout\ & !\Mux7~583_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux7~583_combout\,
	datad => \Mux7~582_combout\,
	combout => \Mux7~584_combout\);

-- Location: LCCOMB_X22_Y16_N16
\Mux7~571\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~571_combout\ = (y_cnt(1) & (y_cnt(0) & (\Mux2~2_combout\ & !\Mux5~3_combout\))) # (!y_cnt(1) & (!\Mux2~2_combout\ & (y_cnt(0) $ (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => y_cnt(0),
	datac => \Mux2~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~571_combout\);

-- Location: LCCOMB_X22_Y16_N28
\Mux7~569\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~569_combout\ = (y_cnt(1) & (\Mux6~8_combout\ $ (((\Mux5~3_combout\) # (!y_cnt(0)))))) # (!y_cnt(1) & (\Mux5~3_combout\ & ((y_cnt(0)) # (\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => y_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~569_combout\);

-- Location: LCCOMB_X22_Y16_N22
\Mux7~570\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~570_combout\ = (y_cnt(2) & (\Mux6~8_combout\)) # (!y_cnt(2) & ((\Mux6~8_combout\ & (\Mux2~2_combout\ & !\Mux7~569_combout\)) # (!\Mux6~8_combout\ & (!\Mux2~2_combout\ & \Mux7~569_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux6~8_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux7~569_combout\,
	combout => \Mux7~570_combout\);

-- Location: LCCOMB_X21_Y16_N30
\Mux7~568\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~568_combout\ = (y_cnt(1)) # ((\Mux2~2_combout\ & ((!y_cnt(0)) # (!\Mux5~3_combout\))) # (!\Mux2~2_combout\ & ((\Mux5~3_combout\) # (y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => y_cnt(1),
	datac => \Mux5~3_combout\,
	datad => y_cnt(0),
	combout => \Mux7~568_combout\);

-- Location: LCCOMB_X22_Y16_N26
\Mux7~572\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~572_combout\ = (y_cnt(2) & ((\Mux7~570_combout\ & (\Mux7~571_combout\)) # (!\Mux7~570_combout\ & ((!\Mux7~568_combout\))))) # (!y_cnt(2) & (((\Mux7~570_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux7~571_combout\,
	datac => \Mux7~570_combout\,
	datad => \Mux7~568_combout\,
	combout => \Mux7~572_combout\);

-- Location: LCCOMB_X21_Y16_N6
\Mux7~574\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~574_combout\ = (y_cnt(1) & ((y_cnt(2) $ (\Mux2~2_combout\)))) # (!y_cnt(1) & (y_cnt(0) & (y_cnt(2) & !\Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => y_cnt(2),
	datad => \Mux2~2_combout\,
	combout => \Mux7~574_combout\);

-- Location: LCCOMB_X21_Y16_N24
\Mux7~573\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~573_combout\ = (y_cnt(1) & (!y_cnt(2) & ((!\Mux2~2_combout\) # (!y_cnt(0))))) # (!y_cnt(1) & (!y_cnt(0) & (y_cnt(2) & !\Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => y_cnt(2),
	datad => \Mux2~2_combout\,
	combout => \Mux7~573_combout\);

-- Location: LCCOMB_X22_Y16_N8
\Mux7~575\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~575_combout\ = (\Mux5~3_combout\ & (\Mux7~573_combout\ & ((\Mux7~574_combout\) # (!\Mux6~8_combout\)))) # (!\Mux5~3_combout\ & ((\Mux6~8_combout\ & ((\Mux7~573_combout\))) # (!\Mux6~8_combout\ & (\Mux7~574_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux7~574_combout\,
	datad => \Mux7~573_combout\,
	combout => \Mux7~575_combout\);

-- Location: LCCOMB_X22_Y16_N30
\Mux7~576\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~576_combout\ = (!y_cnt(1) & ((y_cnt(0) & ((!\Mux6~8_combout\))) # (!y_cnt(0) & (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => y_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~576_combout\);

-- Location: LCCOMB_X22_Y16_N24
\Mux7~579\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~579_combout\ = (\Mux6~8_combout\ & (\Mux5~3_combout\ $ (((!y_cnt(1) & !y_cnt(0)))))) # (!\Mux6~8_combout\ & (y_cnt(1) & (y_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => y_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~579_combout\);

-- Location: LCCOMB_X22_Y16_N20
\Mux7~577\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~577_combout\ = (\Mux6~8_combout\ & (((\Mux5~3_combout\)))) # (!\Mux6~8_combout\ & (y_cnt(0) & (!\Mux2~2_combout\ & !\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => \Mux6~8_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~577_combout\);

-- Location: LCCOMB_X22_Y16_N2
\Mux7~578\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~578_combout\ = (y_cnt(2) & (((\Mux2~2_combout\)))) # (!y_cnt(2) & (y_cnt(1) & ((\Mux7~577_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => y_cnt(2),
	datac => \Mux2~2_combout\,
	datad => \Mux7~577_combout\,
	combout => \Mux7~578_combout\);

-- Location: LCCOMB_X22_Y16_N10
\Mux7~580\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~580_combout\ = (y_cnt(2) & ((\Mux7~578_combout\ & ((!\Mux7~579_combout\))) # (!\Mux7~578_combout\ & (\Mux7~576_combout\)))) # (!y_cnt(2) & (((\Mux7~578_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~576_combout\,
	datab => \Mux7~579_combout\,
	datac => y_cnt(2),
	datad => \Mux7~578_combout\,
	combout => \Mux7~580_combout\);

-- Location: LCCOMB_X22_Y16_N0
\Mux7~581\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~581_combout\ = (y_cnt(3) & (\Mux4~5_combout\)) # (!y_cnt(3) & ((\Mux4~5_combout\ & (\Mux7~575_combout\)) # (!\Mux4~5_combout\ & ((\Mux7~580_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux4~5_combout\,
	datac => \Mux7~575_combout\,
	datad => \Mux7~580_combout\,
	combout => \Mux7~581_combout\);

-- Location: LCCOMB_X22_Y16_N6
\Mux7~585\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~585_combout\ = (y_cnt(3) & ((\Mux7~581_combout\ & (\Mux7~584_combout\)) # (!\Mux7~581_combout\ & ((\Mux7~572_combout\))))) # (!y_cnt(3) & (((\Mux7~581_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~584_combout\,
	datab => y_cnt(3),
	datac => \Mux7~572_combout\,
	datad => \Mux7~581_combout\,
	combout => \Mux7~585_combout\);

-- Location: LCCOMB_X22_Y16_N4
\Mux7~586\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~586_combout\ = (x_cnt(0) & ((\Mux3~3_combout\) # ((\Mux7~567_combout\)))) # (!x_cnt(0) & (!\Mux3~3_combout\ & ((\Mux7~585_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux3~3_combout\,
	datac => \Mux7~567_combout\,
	datad => \Mux7~585_combout\,
	combout => \Mux7~586_combout\);

-- Location: LCCOMB_X23_Y16_N4
\Mux7~556\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~556_combout\ = (!\Mux4~5_combout\ & ((\Mux7~439_combout\) # ((\Mux7~461_combout\ & !\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~461_combout\,
	datab => \Mux4~5_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux7~439_combout\,
	combout => \Mux7~556_combout\);

-- Location: LCCOMB_X21_Y16_N0
\Mux7~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~59_combout\ = (y_cnt(1) & y_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(1),
	datad => y_cnt(0),
	combout => \Mux7~59_combout\);

-- Location: LCCOMB_X26_Y16_N26
\Mux7~563\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~563_combout\ = (\Mux6~8_combout\ & (y_cnt(2) & (\Mux7~59_combout\))) # (!\Mux6~8_combout\ & (!y_cnt(2) & ((\Mux7~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(2),
	datac => \Mux7~59_combout\,
	datad => \Mux7~66_combout\,
	combout => \Mux7~563_combout\);

-- Location: LCCOMB_X26_Y16_N22
\Mux7~561\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~561_combout\ = (y_cnt(2) & (y_cnt(3) & ((!y_cnt(1))))) # (!y_cnt(2) & (y_cnt(1) & ((y_cnt(0)) # (!y_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~561_combout\);

-- Location: LCCOMB_X26_Y16_N12
\Mux7~562\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~562_combout\ = (\Mux7~561_combout\ & (!\Mux6~8_combout\ & !\Mux4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~561_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~562_combout\);

-- Location: LCCOMB_X26_Y16_N24
\Mux7~564\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~564_combout\ = (\Mux7~562_combout\) # ((y_cnt(3) & (\Mux4~5_combout\ & \Mux7~563_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux4~5_combout\,
	datac => \Mux7~563_combout\,
	datad => \Mux7~562_combout\,
	combout => \Mux7~564_combout\);

-- Location: LCCOMB_X22_Y17_N16
\Mux7~557\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~557_combout\ = (\Mux6~8_combout\ & ((\Mux4~5_combout\ & ((\Mux7~467_combout\))) # (!\Mux4~5_combout\ & (\Mux7~461_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~461_combout\,
	datab => \Mux7~467_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~557_combout\);

-- Location: LCCOMB_X22_Y19_N14
\Mux7~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~212_combout\ = (!\Mux6~8_combout\ & \Mux4~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux6~8_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~212_combout\);

-- Location: LCCOMB_X22_Y17_N30
\Mux7~558\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~558_combout\ = (\Mux7~557_combout\) # ((!y_cnt(2) & (\Mux7~178_combout\ & \Mux7~212_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux7~557_combout\,
	datac => \Mux7~178_combout\,
	datad => \Mux7~212_combout\,
	combout => \Mux7~558_combout\);

-- Location: LCCOMB_X23_Y17_N8
\Mux7~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~146_combout\ = \Mux6~8_combout\ $ (\Mux4~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux6~8_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~146_combout\);

-- Location: LCCOMB_X23_Y17_N2
\Mux7~220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~220_combout\ = (!y_cnt(2) & (y_cnt(3) & \Mux4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datac => y_cnt(3),
	datad => \Mux4~5_combout\,
	combout => \Mux7~220_combout\);

-- Location: LCCOMB_X23_Y17_N26
\Mux7~559\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~559_combout\ = (\Mux7~146_combout\ & (\Mux7~59_combout\ & ((\Mux7~220_combout\)))) # (!\Mux7~146_combout\ & (((\Mux7~461_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~59_combout\,
	datab => \Mux7~461_combout\,
	datac => \Mux7~146_combout\,
	datad => \Mux7~220_combout\,
	combout => \Mux7~559_combout\);

-- Location: LCCOMB_X22_Y16_N12
\Mux7~560\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~560_combout\ = (\Mux5~3_combout\ & ((\Mux2~2_combout\) # ((\Mux7~558_combout\)))) # (!\Mux5~3_combout\ & (!\Mux2~2_combout\ & ((\Mux7~559_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux7~558_combout\,
	datad => \Mux7~559_combout\,
	combout => \Mux7~560_combout\);

-- Location: LCCOMB_X22_Y16_N18
\Mux7~565\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~565_combout\ = (\Mux2~2_combout\ & ((\Mux7~560_combout\ & ((\Mux7~564_combout\))) # (!\Mux7~560_combout\ & (\Mux7~556_combout\)))) # (!\Mux2~2_combout\ & (((\Mux7~560_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~556_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux7~564_combout\,
	datad => \Mux7~560_combout\,
	combout => \Mux7~565_combout\);

-- Location: LCCOMB_X22_Y16_N14
\Mux7~589\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~589_combout\ = (\Mux3~3_combout\ & ((\Mux7~586_combout\ & (\Mux7~588_combout\)) # (!\Mux7~586_combout\ & ((\Mux7~565_combout\))))) # (!\Mux3~3_combout\ & (((\Mux7~586_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux7~588_combout\,
	datac => \Mux7~586_combout\,
	datad => \Mux7~565_combout\,
	combout => \Mux7~589_combout\);

-- Location: LCCOMB_X23_Y20_N2
\spi_data[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[4]~7_combout\ = (x_cnt(2) & ((\Mux7~589_combout\))) # (!x_cnt(2) & (\spi_data[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(2),
	datac => \spi_data[4]~6_combout\,
	datad => \Mux7~589_combout\,
	combout => \spi_data[4]~7_combout\);

-- Location: LCCOMB_X23_Y20_N0
\spi_data[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[4]~8_combout\ = (x_cnt(1) & (\spi_data[4]~11_combout\ & ((\spi_data[4]~7_combout\)))) # (!x_cnt(1) & (((\spi_data[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_data[4]~11_combout\,
	datab => x_cnt(1),
	datac => \spi_data[4]~5_combout\,
	datad => \spi_data[4]~7_combout\,
	combout => \spi_data[4]~8_combout\);

-- Location: LCCOMB_X20_Y19_N2
\Mux7~238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~238_combout\ = (y_cnt(0) & (x_cnt(1) & (x_cnt(0) & !x_cnt(2)))) # (!y_cnt(0) & (!x_cnt(1) & (!x_cnt(0) & x_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => x_cnt(1),
	datac => x_cnt(0),
	datad => x_cnt(2),
	combout => \Mux7~238_combout\);

-- Location: LCCOMB_X20_Y19_N24
\Mux7~239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~239_combout\ = (y_cnt(2) & (\Mux7~238_combout\ & \Mux6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux7~238_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~239_combout\);

-- Location: LCCOMB_X20_Y19_N22
\Mux7~246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~246_combout\ = (x_cnt(2) & (!x_cnt(1) & !y_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => y_cnt(0),
	combout => \Mux7~246_combout\);

-- Location: LCCOMB_X20_Y19_N28
\Mux7~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~82_combout\ = (x_cnt(1) & !x_cnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x_cnt(1),
	datad => x_cnt(2),
	combout => \Mux7~82_combout\);

-- Location: LCCOMB_X20_Y19_N20
\Mux7~245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~245_combout\ = (\Mux7~82_combout\ & ((y_cnt(0) & ((!\Mux6~8_combout\))) # (!y_cnt(0) & (x_cnt(0) & \Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => \Mux7~82_combout\,
	datac => x_cnt(0),
	datad => \Mux6~8_combout\,
	combout => \Mux7~245_combout\);

-- Location: LCCOMB_X20_Y19_N8
\Mux7~247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~247_combout\ = (!y_cnt(2) & ((\Mux7~245_combout\) # ((!\Mux6~8_combout\ & \Mux7~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux6~8_combout\,
	datac => \Mux7~246_combout\,
	datad => \Mux7~245_combout\,
	combout => \Mux7~247_combout\);

-- Location: LCCOMB_X20_Y19_N12
\Mux7~243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~243_combout\ = (y_cnt(2) & ((x_cnt(1) & (x_cnt(0) & !x_cnt(2))) # (!x_cnt(1) & (!x_cnt(0) & x_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => x_cnt(1),
	datac => x_cnt(0),
	datad => x_cnt(2),
	combout => \Mux7~243_combout\);

-- Location: LCCOMB_X20_Y19_N14
\Mux7~240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~240_combout\ = (x_cnt(1) & (((!x_cnt(2))))) # (!x_cnt(1) & (x_cnt(0) $ (((!y_cnt(0) & x_cnt(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => x_cnt(1),
	datac => x_cnt(0),
	datad => x_cnt(2),
	combout => \Mux7~240_combout\);

-- Location: LCCOMB_X20_Y19_N4
\Mux7~241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~241_combout\ = (y_cnt(0) & ((x_cnt(1) & ((!x_cnt(2)))) # (!x_cnt(1) & (!x_cnt(0) & x_cnt(2))))) # (!y_cnt(0) & (!x_cnt(1) & (x_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => x_cnt(1),
	datac => x_cnt(0),
	datad => x_cnt(2),
	combout => \Mux7~241_combout\);

-- Location: LCCOMB_X20_Y19_N18
\Mux7~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~242_combout\ = (y_cnt(2) & (\Mux7~241_combout\ & (\Mux7~240_combout\ $ (\Mux6~8_combout\)))) # (!y_cnt(2) & (\Mux7~240_combout\ & (!\Mux7~241_combout\ & \Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux7~240_combout\,
	datac => \Mux7~241_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~242_combout\);

-- Location: LCCOMB_X20_Y19_N6
\Mux7~244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~244_combout\ = (y_cnt(3) & (((\Mux4~5_combout\)))) # (!y_cnt(3) & ((\Mux4~5_combout\ & ((\Mux7~242_combout\))) # (!\Mux4~5_combout\ & (\Mux7~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~243_combout\,
	datab => y_cnt(3),
	datac => \Mux4~5_combout\,
	datad => \Mux7~242_combout\,
	combout => \Mux7~244_combout\);

-- Location: LCCOMB_X20_Y19_N30
\Mux7~248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~248_combout\ = (y_cnt(3) & ((\Mux7~244_combout\ & ((\Mux7~247_combout\))) # (!\Mux7~244_combout\ & (\Mux7~239_combout\)))) # (!y_cnt(3) & (((\Mux7~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux7~239_combout\,
	datac => \Mux7~247_combout\,
	datad => \Mux7~244_combout\,
	combout => \Mux7~248_combout\);

-- Location: LCCOMB_X24_Y19_N8
\Mux7~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~215_combout\ = (x_cnt(0) & (!x_cnt(1) & (x_cnt(2) $ (!\Mux6~8_combout\)))) # (!x_cnt(0) & (x_cnt(1) & (x_cnt(2) & !\Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(1),
	datac => x_cnt(2),
	datad => \Mux6~8_combout\,
	combout => \Mux7~215_combout\);

-- Location: LCCOMB_X27_Y19_N10
\Mux7~654\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~654_combout\ = (\Mux4~5_combout\ & ((\Mux6~8_combout\) # ((!x_cnt(1) & x_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(1),
	datac => x_cnt(2),
	datad => \Mux4~5_combout\,
	combout => \Mux7~654_combout\);

-- Location: LCCOMB_X27_Y19_N6
\Mux7~216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~216_combout\ = (!y_cnt(2) & ((\Mux7~654_combout\) # ((\Mux7~215_combout\ & !\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~215_combout\,
	datab => y_cnt(2),
	datac => \Mux4~5_combout\,
	datad => \Mux7~654_combout\,
	combout => \Mux7~216_combout\);

-- Location: LCCOMB_X27_Y19_N0
\Mux7~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~205_combout\ = (x_cnt(0) & (!x_cnt(2) & (x_cnt(1) $ (!\Mux4~5_combout\)))) # (!x_cnt(0) & (x_cnt(1) & (x_cnt(2) $ (\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => x_cnt(0),
	datad => \Mux4~5_combout\,
	combout => \Mux7~205_combout\);

-- Location: LCCOMB_X27_Y19_N14
\Mux7~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~206_combout\ = (!y_cnt(2) & (\Mux7~205_combout\ & ((x_cnt(2)) # (!\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux6~8_combout\,
	datac => y_cnt(2),
	datad => \Mux7~205_combout\,
	combout => \Mux7~206_combout\);

-- Location: LCCOMB_X22_Y19_N28
\Mux7~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~213_combout\ = (y_cnt(2) & (x_cnt(1) & (x_cnt(2) & !x_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => x_cnt(1),
	datac => x_cnt(2),
	datad => x_cnt(0),
	combout => \Mux7~213_combout\);

-- Location: LCCOMB_X27_Y18_N30
\Mux7~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~210_combout\ = (x_cnt(2) & (!x_cnt(1) & (y_cnt(2) $ (!x_cnt(0))))) # (!x_cnt(2) & (x_cnt(1) & (y_cnt(2) $ (x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => y_cnt(2),
	datad => x_cnt(0),
	combout => \Mux7~210_combout\);

-- Location: LCCOMB_X27_Y18_N8
\Mux7~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~209_combout\ = (x_cnt(2) & (!x_cnt(0) & (x_cnt(1) $ (!y_cnt(2))))) # (!x_cnt(2) & (x_cnt(0) & (x_cnt(1) $ (y_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => y_cnt(2),
	datad => x_cnt(0),
	combout => \Mux7~209_combout\);

-- Location: LCCOMB_X27_Y18_N0
\Mux7~211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~211_combout\ = (!\Mux4~5_combout\ & ((\Mux6~8_combout\ & ((\Mux7~209_combout\))) # (!\Mux6~8_combout\ & (\Mux7~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~210_combout\,
	datab => \Mux7~209_combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~211_combout\);

-- Location: LCCOMB_X27_Y18_N6
\Mux7~653\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~653_combout\ = (\Mux7~211_combout\) # ((!\Mux6~8_combout\ & (\Mux7~213_combout\ & \Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux7~213_combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux7~211_combout\,
	combout => \Mux7~653_combout\);

-- Location: LCCOMB_X27_Y19_N4
\Mux7~652\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~652_combout\ = (\Mux4~5_combout\ & (\Mux6~8_combout\ & ((y_cnt(2))))) # (!\Mux4~5_combout\ & ((x_cnt(0) $ (y_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(0),
	datac => y_cnt(2),
	datad => \Mux4~5_combout\,
	combout => \Mux7~652_combout\);

-- Location: LCCOMB_X27_Y19_N12
\Mux7~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~207_combout\ = (x_cnt(1) & (!\Mux4~5_combout\ & ((!y_cnt(2)) # (!\Mux6~8_combout\)))) # (!x_cnt(1) & (y_cnt(2) & (\Mux6~8_combout\ $ (\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(1),
	datac => y_cnt(2),
	datad => \Mux4~5_combout\,
	combout => \Mux7~207_combout\);

-- Location: LCCOMB_X27_Y19_N30
\Mux7~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~208_combout\ = (\Mux7~652_combout\ & (!\Mux7~207_combout\ & ((x_cnt(2)) # (\Mux4~5_combout\)))) # (!\Mux7~652_combout\ & (\Mux7~207_combout\ & (x_cnt(2) $ (!\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux4~5_combout\,
	datac => \Mux7~652_combout\,
	datad => \Mux7~207_combout\,
	combout => \Mux7~208_combout\);

-- Location: LCCOMB_X27_Y19_N20
\Mux7~214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~214_combout\ = (y_cnt(0) & ((y_cnt(3)) # ((\Mux7~208_combout\)))) # (!y_cnt(0) & (!y_cnt(3) & (\Mux7~653_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(3),
	datac => \Mux7~653_combout\,
	datad => \Mux7~208_combout\,
	combout => \Mux7~214_combout\);

-- Location: LCCOMB_X27_Y19_N8
\Mux7~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~217_combout\ = (y_cnt(3) & ((\Mux7~214_combout\ & (\Mux7~216_combout\)) # (!\Mux7~214_combout\ & ((\Mux7~206_combout\))))) # (!y_cnt(3) & (((\Mux7~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~216_combout\,
	datab => y_cnt(3),
	datac => \Mux7~206_combout\,
	datad => \Mux7~214_combout\,
	combout => \Mux7~217_combout\);

-- Location: LCCOMB_X22_Y19_N22
\Mux7~234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~234_combout\ = (y_cnt(0) & (!x_cnt(1) & x_cnt(0))) # (!y_cnt(0) & (x_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(0),
	datac => x_cnt(1),
	datad => x_cnt(0),
	combout => \Mux7~234_combout\);

-- Location: LCCOMB_X22_Y19_N12
\Mux7~235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~235_combout\ = (\Mux7~234_combout\ & ((y_cnt(2) & (x_cnt(2) & !x_cnt(0))) # (!y_cnt(2) & (!x_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => x_cnt(2),
	datac => \Mux7~234_combout\,
	datad => x_cnt(0),
	combout => \Mux7~235_combout\);

-- Location: LCCOMB_X22_Y19_N30
\Mux7~232\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~232_combout\ = (y_cnt(2) & ((x_cnt(1) & (x_cnt(2) & !x_cnt(0))) # (!x_cnt(1) & (!x_cnt(2) & x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => x_cnt(1),
	datac => x_cnt(2),
	datad => x_cnt(0),
	combout => \Mux7~232_combout\);

-- Location: LCCOMB_X22_Y19_N10
\Mux7~230\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~230_combout\ = (y_cnt(2) & (((x_cnt(2))) # (!y_cnt(0)))) # (!y_cnt(2) & (x_cnt(0) $ (((y_cnt(0) & !x_cnt(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(0),
	datac => x_cnt(2),
	datad => x_cnt(0),
	combout => \Mux7~230_combout\);

-- Location: LCCOMB_X22_Y19_N26
\Mux7~226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~226_combout\ = (y_cnt(2) & ((x_cnt(2)) # (y_cnt(0) $ (x_cnt(0))))) # (!y_cnt(2) & ((x_cnt(0)) # (y_cnt(0) $ (x_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(0),
	datac => x_cnt(2),
	datad => x_cnt(0),
	combout => \Mux7~226_combout\);

-- Location: LCCOMB_X22_Y19_N18
\Mux7~228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~228_combout\ = (y_cnt(2) & (x_cnt(2) & (y_cnt(0) $ (x_cnt(0))))) # (!y_cnt(2) & (x_cnt(0) & (y_cnt(0) $ (x_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(0),
	datac => x_cnt(2),
	datad => x_cnt(0),
	combout => \Mux7~228_combout\);

-- Location: LCCOMB_X22_Y19_N0
\Mux7~227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~227_combout\ = (y_cnt(2) & ((y_cnt(0) & (!x_cnt(2) & x_cnt(0))) # (!y_cnt(0) & (x_cnt(2) & !x_cnt(0))))) # (!y_cnt(2) & (x_cnt(2) & (y_cnt(0) $ (x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(0),
	datac => x_cnt(2),
	datad => x_cnt(0),
	combout => \Mux7~227_combout\);

-- Location: LCCOMB_X22_Y19_N24
\Mux7~229\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~229_combout\ = (x_cnt(1) & (((\Mux6~8_combout\)))) # (!x_cnt(1) & ((\Mux6~8_combout\ & ((\Mux7~227_combout\))) # (!\Mux6~8_combout\ & (\Mux7~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => \Mux7~228_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux7~227_combout\,
	combout => \Mux7~229_combout\);

-- Location: LCCOMB_X22_Y19_N16
\Mux7~231\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~231_combout\ = (x_cnt(1) & ((\Mux7~229_combout\ & (!\Mux7~230_combout\)) # (!\Mux7~229_combout\ & ((!\Mux7~226_combout\))))) # (!x_cnt(1) & (((\Mux7~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~230_combout\,
	datab => x_cnt(1),
	datac => \Mux7~226_combout\,
	datad => \Mux7~229_combout\,
	combout => \Mux7~231_combout\);

-- Location: LCCOMB_X22_Y19_N20
\Mux7~233\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~233_combout\ = (!\Mux4~5_combout\ & ((y_cnt(3) & ((\Mux7~231_combout\))) # (!y_cnt(3) & (\Mux7~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => y_cnt(3),
	datac => \Mux7~232_combout\,
	datad => \Mux7~231_combout\,
	combout => \Mux7~233_combout\);

-- Location: LCCOMB_X22_Y19_N2
\Mux7~236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~236_combout\ = (\Mux7~233_combout\) # ((\Mux7~235_combout\ & (y_cnt(3) & \Mux7~212_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~235_combout\,
	datab => y_cnt(3),
	datac => \Mux7~212_combout\,
	datad => \Mux7~233_combout\,
	combout => \Mux7~236_combout\);

-- Location: LCCOMB_X20_Y19_N10
\Mux7~218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~218_combout\ = (x_cnt(2) & ((x_cnt(0) & (!y_cnt(0) & !\Mux6~8_combout\)) # (!x_cnt(0) & ((!\Mux6~8_combout\) # (!y_cnt(0)))))) # (!x_cnt(2) & (x_cnt(0) & (y_cnt(0) & \Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(0),
	datac => y_cnt(0),
	datad => \Mux6~8_combout\,
	combout => \Mux7~218_combout\);

-- Location: LCCOMB_X20_Y19_N0
\Mux7~219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~219_combout\ = (\Mux7~218_combout\ & (x_cnt(1) $ (!y_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(1),
	datac => y_cnt(0),
	datad => \Mux7~218_combout\,
	combout => \Mux7~219_combout\);

-- Location: LCCOMB_X27_Y19_N26
\Mux7~223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~223_combout\ = (\Mux4~5_combout\ & ((x_cnt(2) & (x_cnt(1) & !x_cnt(0))) # (!x_cnt(2) & (!x_cnt(1) & x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => x_cnt(0),
	datad => \Mux4~5_combout\,
	combout => \Mux7~223_combout\);

-- Location: LCCOMB_X27_Y19_N18
\Mux7~221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~221_combout\ = (\Mux6~8_combout\ & (x_cnt(1) $ (((\Mux4~5_combout\))))) # (!\Mux6~8_combout\ & ((x_cnt(1)) # ((y_cnt(0) & \Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(1),
	datac => y_cnt(0),
	datad => \Mux4~5_combout\,
	combout => \Mux7~221_combout\);

-- Location: LCCOMB_X27_Y19_N28
\Mux7~222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~222_combout\ = (x_cnt(2) & (!x_cnt(0) & (!\Mux4~5_combout\ & !\Mux7~221_combout\))) # (!x_cnt(2) & (x_cnt(0) & (\Mux4~5_combout\ $ (\Mux7~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(0),
	datac => \Mux4~5_combout\,
	datad => \Mux7~221_combout\,
	combout => \Mux7~222_combout\);

-- Location: LCCOMB_X27_Y19_N16
\Mux7~224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~224_combout\ = (y_cnt(3) & (((\Mux7~222_combout\)))) # (!y_cnt(3) & (\Mux6~8_combout\ & (\Mux7~223_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(3),
	datac => \Mux7~223_combout\,
	datad => \Mux7~222_combout\,
	combout => \Mux7~224_combout\);

-- Location: LCCOMB_X27_Y19_N2
\Mux7~225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~225_combout\ = (\Mux7~220_combout\ & ((\Mux7~219_combout\) # ((y_cnt(2) & \Mux7~224_combout\)))) # (!\Mux7~220_combout\ & (y_cnt(2) & ((\Mux7~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~220_combout\,
	datab => y_cnt(2),
	datac => \Mux7~219_combout\,
	datad => \Mux7~224_combout\,
	combout => \Mux7~225_combout\);

-- Location: LCCOMB_X27_Y19_N24
\Mux7~237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~237_combout\ = (\Mux5~3_combout\ & ((y_cnt(1)) # ((\Mux7~225_combout\)))) # (!\Mux5~3_combout\ & (!y_cnt(1) & (\Mux7~236_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => y_cnt(1),
	datac => \Mux7~236_combout\,
	datad => \Mux7~225_combout\,
	combout => \Mux7~237_combout\);

-- Location: LCCOMB_X27_Y19_N22
\Mux7~249\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~249_combout\ = (y_cnt(1) & ((\Mux7~237_combout\ & (\Mux7~248_combout\)) # (!\Mux7~237_combout\ & ((\Mux7~217_combout\))))) # (!y_cnt(1) & (((\Mux7~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~248_combout\,
	datab => y_cnt(1),
	datac => \Mux7~217_combout\,
	datad => \Mux7~237_combout\,
	combout => \Mux7~249_combout\);

-- Location: LCCOMB_X24_Y16_N4
\Mux7~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~94_combout\ = x_cnt(2) $ (x_cnt(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x_cnt(2),
	datad => x_cnt(1),
	combout => \Mux7~94_combout\);

-- Location: LCCOMB_X24_Y16_N2
\Mux7~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~98_combout\ = (x_cnt(1) & (((!y_cnt(0) & y_cnt(1))) # (!x_cnt(0)))) # (!x_cnt(1) & ((x_cnt(0)) # ((y_cnt(0) & y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => x_cnt(1),
	datac => y_cnt(1),
	datad => x_cnt(0),
	combout => \Mux7~98_combout\);

-- Location: LCCOMB_X24_Y16_N8
\Mux7~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~99_combout\ = (y_cnt(2) & (!\Mux7~98_combout\ & ((!\Mux5~3_combout\) # (!y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux7~98_combout\,
	datac => y_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~99_combout\);

-- Location: LCCOMB_X24_Y16_N26
\Mux7~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~96_combout\ = (y_cnt(1) & (!y_cnt(2) & (x_cnt(0) $ (y_cnt(0))))) # (!y_cnt(1) & (x_cnt(0) $ (((y_cnt(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => x_cnt(0),
	datac => y_cnt(0),
	datad => y_cnt(2),
	combout => \Mux7~96_combout\);

-- Location: LCCOMB_X21_Y16_N10
\Mux7~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~95_combout\ = (!y_cnt(0) & (!y_cnt(2) & y_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(0),
	datac => y_cnt(2),
	datad => y_cnt(1),
	combout => \Mux7~95_combout\);

-- Location: LCCOMB_X24_Y16_N16
\Mux7~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~97_combout\ = (\Mux5~3_combout\ & (\Mux7~96_combout\ & (x_cnt(1)))) # (!\Mux5~3_combout\ & (((\Mux7~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~96_combout\,
	datab => x_cnt(1),
	datac => \Mux7~95_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~97_combout\);

-- Location: LCCOMB_X24_Y16_N14
\Mux7~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~100_combout\ = (\Mux7~94_combout\ & ((\Mux6~8_combout\ & ((\Mux7~97_combout\))) # (!\Mux6~8_combout\ & (\Mux7~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux7~94_combout\,
	datac => \Mux7~99_combout\,
	datad => \Mux7~97_combout\,
	combout => \Mux7~100_combout\);

-- Location: LCCOMB_X28_Y17_N10
\Mux7~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~73_combout\ = (x_cnt(1) & (x_cnt(0) & !x_cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(1),
	datac => x_cnt(0),
	datad => x_cnt(2),
	combout => \Mux7~73_combout\);

-- Location: LCCOMB_X29_Y18_N4
\Mux7~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~71_combout\ = (x_cnt(0) & ((y_cnt(1) & (x_cnt(1) & y_cnt(0))) # (!y_cnt(1) & (!x_cnt(1) & !y_cnt(0))))) # (!x_cnt(0) & (!x_cnt(1) & (y_cnt(1) $ (y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => y_cnt(1),
	datac => x_cnt(1),
	datad => y_cnt(0),
	combout => \Mux7~71_combout\);

-- Location: LCCOMB_X29_Y18_N30
\Mux7~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~72_combout\ = (\Mux7~71_combout\ & (x_cnt(2) $ (x_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux7~71_combout\,
	datac => x_cnt(1),
	combout => \Mux7~72_combout\);

-- Location: LCCOMB_X28_Y17_N24
\Mux7~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~74_combout\ = (\Mux5~3_combout\ & (\Mux7~73_combout\ & (!y_cnt(1)))) # (!\Mux5~3_combout\ & (((\Mux7~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~73_combout\,
	datab => y_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux7~72_combout\,
	combout => \Mux7~74_combout\);

-- Location: LCCOMB_X17_Y18_N16
\Mux7~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~60_combout\ = (x_cnt(1) & ((x_cnt(0) & (y_cnt(0) $ (!y_cnt(1)))) # (!x_cnt(0) & ((y_cnt(0)) # (y_cnt(1)))))) # (!x_cnt(1) & (x_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(0),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~60_combout\);

-- Location: LCCOMB_X19_Y18_N8
\Mux7~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~61_combout\ = (!\Mux7~60_combout\ & ((x_cnt(2) & (!x_cnt(1) & \Mux7~59_combout\)) # (!x_cnt(2) & (x_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux7~60_combout\,
	datad => \Mux7~59_combout\,
	combout => \Mux7~61_combout\);

-- Location: LCCOMB_X19_Y18_N18
\Mux7~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~62_combout\ = (\Mux7~61_combout\ & (((y_cnt(7)) # (!\Mux5~2_combout\)) # (!y_cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(6),
	datab => y_cnt(7),
	datac => \Mux7~61_combout\,
	datad => \Mux5~2_combout\,
	combout => \Mux7~62_combout\);

-- Location: LCCOMB_X27_Y17_N30
\Mux7~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~68_combout\ = (x_cnt(0) & ((x_cnt(1)))) # (!x_cnt(0) & (x_cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datac => x_cnt(0),
	datad => x_cnt(1),
	combout => \Mux7~68_combout\);

-- Location: LCCOMB_X27_Y17_N28
\Mux7~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~67_combout\ = (y_cnt(6) & (!y_cnt(7) & \Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(6),
	datac => y_cnt(7),
	datad => \Mux5~2_combout\,
	combout => \Mux7~67_combout\);

-- Location: LCCOMB_X27_Y17_N16
\Mux7~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~69_combout\ = (x_cnt(1) & (((!\Mux7~68_combout\ & !\Mux7~67_combout\)))) # (!x_cnt(1) & (\Mux7~66_combout\ & (\Mux7~68_combout\ & \Mux7~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~66_combout\,
	datab => x_cnt(1),
	datac => \Mux7~68_combout\,
	datad => \Mux7~67_combout\,
	combout => \Mux7~69_combout\);

-- Location: LCCOMB_X28_Y17_N28
\Mux7~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~63_combout\ = (y_cnt(0) & !y_cnt(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~63_combout\);

-- Location: LCCOMB_X28_Y17_N18
\Mux7~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~64_combout\ = (x_cnt(0) & (\Mux5~3_combout\ $ (!x_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datac => \Mux5~3_combout\,
	datad => x_cnt(1),
	combout => \Mux7~64_combout\);

-- Location: LCCOMB_X28_Y17_N16
\Mux7~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~65_combout\ = (\Mux7~64_combout\ & (x_cnt(2) $ (((\Mux5~3_combout\))))) # (!\Mux7~64_combout\ & (((\Mux7~63_combout\ & \Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux7~63_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux7~64_combout\,
	combout => \Mux7~65_combout\);

-- Location: LCCOMB_X27_Y17_N2
\Mux7~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~70_combout\ = (\Mux6~8_combout\ & (((y_cnt(2)) # (\Mux7~65_combout\)))) # (!\Mux6~8_combout\ & (\Mux7~69_combout\ & (!y_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux7~69_combout\,
	datac => y_cnt(2),
	datad => \Mux7~65_combout\,
	combout => \Mux7~70_combout\);

-- Location: LCCOMB_X27_Y17_N8
\Mux7~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~75_combout\ = (y_cnt(2) & ((\Mux7~70_combout\ & (\Mux7~74_combout\)) # (!\Mux7~70_combout\ & ((\Mux7~62_combout\))))) # (!y_cnt(2) & (((\Mux7~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux7~74_combout\,
	datac => \Mux7~62_combout\,
	datad => \Mux7~70_combout\,
	combout => \Mux7~75_combout\);

-- Location: LCCOMB_X19_Y18_N24
\Mux7~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~76_combout\ = (!x_cnt(1) & x_cnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(1),
	datad => x_cnt(2),
	combout => \Mux7~76_combout\);

-- Location: LCCOMB_X28_Y17_N14
\Mux7~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~77_combout\ = (y_cnt(2) & (x_cnt(0) $ (((y_cnt(0)) # (y_cnt(1)))))) # (!y_cnt(2) & (((x_cnt(0) & y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(2),
	datac => x_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~77_combout\);

-- Location: LCCOMB_X27_Y17_N22
\Mux7~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~78_combout\ = (\Mux5~3_combout\ & (\Mux7~76_combout\ & (\Mux7~77_combout\ & \Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux7~76_combout\,
	datac => \Mux7~77_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~78_combout\);

-- Location: LCCOMB_X27_Y17_N14
\Mux7~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~90_combout\ = (y_cnt(1) & ((x_cnt(0) $ (x_cnt(2))))) # (!y_cnt(1) & (x_cnt(0) & ((y_cnt(0)) # (x_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => x_cnt(0),
	datad => x_cnt(2),
	combout => \Mux7~90_combout\);

-- Location: LCCOMB_X27_Y17_N20
\Mux7~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~91_combout\ = (x_cnt(2) & (!x_cnt(1) & (!\Mux7~90_combout\ & !\Mux5~3_combout\))) # (!x_cnt(2) & (x_cnt(1) & (\Mux7~90_combout\ & \Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux7~90_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~91_combout\);

-- Location: LCCOMB_X19_Y18_N4
\Mux7~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~83_combout\ = (\Mux7~82_combout\ & (((y_cnt(7)) # (!\Mux5~2_combout\)) # (!y_cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(6),
	datab => y_cnt(7),
	datac => \Mux7~82_combout\,
	datad => \Mux5~2_combout\,
	combout => \Mux7~83_combout\);

-- Location: LCCOMB_X19_Y18_N6
\Mux7~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~79_combout\ = (x_cnt(2) & (!x_cnt(1) & ((!x_cnt(0)) # (!y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => y_cnt(0),
	datad => x_cnt(0),
	combout => \Mux7~79_combout\);

-- Location: LCCOMB_X19_Y18_N20
\Mux7~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~80_combout\ = (y_cnt(0) & (((y_cnt(1) & !x_cnt(0))))) # (!y_cnt(0) & (!x_cnt(2) & ((x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => y_cnt(1),
	datac => y_cnt(0),
	datad => x_cnt(0),
	combout => \Mux7~80_combout\);

-- Location: LCCOMB_X19_Y18_N10
\Mux7~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~81_combout\ = (\Mux5~3_combout\ & ((\Mux7~79_combout\) # ((\Mux7~80_combout\ & x_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~79_combout\,
	datab => \Mux7~80_combout\,
	datac => x_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~81_combout\);

-- Location: LCCOMB_X19_Y18_N30
\Mux7~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~84_combout\ = (\Mux7~81_combout\) # ((\Mux7~83_combout\ & (y_cnt(1) $ (x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => x_cnt(0),
	datac => \Mux7~83_combout\,
	datad => \Mux7~81_combout\,
	combout => \Mux7~84_combout\);

-- Location: LCCOMB_X27_Y17_N4
\Mux7~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~85_combout\ = (y_cnt(1) & (!x_cnt(2) & (y_cnt(0) $ (!x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => x_cnt(0),
	datad => x_cnt(2),
	combout => \Mux7~85_combout\);

-- Location: LCCOMB_X27_Y17_N6
\Mux7~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~86_combout\ = (x_cnt(1) & (\Mux7~85_combout\ & !\Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(1),
	datac => \Mux7~85_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~86_combout\);

-- Location: LCCOMB_X27_Y17_N12
\Mux7~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~87_combout\ = (y_cnt(0) & (!x_cnt(0) & ((\Mux5~3_combout\) # (!x_cnt(1))))) # (!y_cnt(0) & (!x_cnt(1) & (x_cnt(0) $ (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => x_cnt(1),
	datac => x_cnt(0),
	datad => \Mux5~3_combout\,
	combout => \Mux7~87_combout\);

-- Location: LCCOMB_X27_Y17_N10
\Mux7~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~88_combout\ = (y_cnt(1) & (\Mux7~87_combout\ & ((x_cnt(2)) # (x_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => y_cnt(1),
	datac => x_cnt(1),
	datad => \Mux7~87_combout\,
	combout => \Mux7~88_combout\);

-- Location: LCCOMB_X27_Y17_N24
\Mux7~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~89_combout\ = (\Mux6~8_combout\ & ((\Mux7~86_combout\) # ((y_cnt(2))))) # (!\Mux6~8_combout\ & (((!y_cnt(2) & \Mux7~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~86_combout\,
	datab => \Mux6~8_combout\,
	datac => y_cnt(2),
	datad => \Mux7~88_combout\,
	combout => \Mux7~89_combout\);

-- Location: LCCOMB_X27_Y17_N18
\Mux7~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~92_combout\ = (y_cnt(2) & ((\Mux7~89_combout\ & (\Mux7~91_combout\)) # (!\Mux7~89_combout\ & ((\Mux7~84_combout\))))) # (!y_cnt(2) & (((\Mux7~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux7~91_combout\,
	datac => \Mux7~84_combout\,
	datad => \Mux7~89_combout\,
	combout => \Mux7~92_combout\);

-- Location: LCCOMB_X27_Y17_N0
\Mux7~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~93_combout\ = (y_cnt(3) & (((\Mux4~5_combout\)))) # (!y_cnt(3) & ((\Mux4~5_combout\ & (\Mux7~78_combout\)) # (!\Mux4~5_combout\ & ((\Mux7~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~78_combout\,
	datab => y_cnt(3),
	datac => \Mux4~5_combout\,
	datad => \Mux7~92_combout\,
	combout => \Mux7~93_combout\);

-- Location: LCCOMB_X27_Y17_N26
\Mux7~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~101_combout\ = (y_cnt(3) & ((\Mux7~93_combout\ & (\Mux7~100_combout\)) # (!\Mux7~93_combout\ & ((\Mux7~75_combout\))))) # (!y_cnt(3) & (((\Mux7~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~100_combout\,
	datab => y_cnt(3),
	datac => \Mux7~75_combout\,
	datad => \Mux7~93_combout\,
	combout => \Mux7~101_combout\);

-- Location: LCCOMB_X23_Y16_N14
\Mux7~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~154_combout\ = (y_cnt(3) & (((y_cnt(1))) # (!y_cnt(2)))) # (!y_cnt(3) & (((!y_cnt(0) & y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~154_combout\);

-- Location: LCCOMB_X28_Y16_N28
\Mux7~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~155_combout\ = (y_cnt(3) & ((y_cnt(2)) # ((!y_cnt(1))))) # (!y_cnt(3) & (((y_cnt(0) & y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~155_combout\);

-- Location: LCCOMB_X28_Y16_N12
\Mux7~679\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~679_combout\ = (\Mux7~154_combout\ & ((y_cnt(2) & ((!\Mux7~155_combout\))) # (!y_cnt(2) & (x_cnt(1))))) # (!\Mux7~154_combout\ & ((y_cnt(2) & (!x_cnt(1))) # (!y_cnt(2) & ((\Mux7~155_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~154_combout\,
	datab => y_cnt(2),
	datac => x_cnt(1),
	datad => \Mux7~155_combout\,
	combout => \Mux7~679_combout\);

-- Location: LCCOMB_X28_Y16_N6
\Mux7~680\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~680_combout\ = (\Mux7~679_combout\ & ((x_cnt(0) $ (!\Mux7~155_combout\)))) # (!\Mux7~679_combout\ & (y_cnt(2) & (x_cnt(0) & !\Mux7~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~679_combout\,
	datab => y_cnt(2),
	datac => x_cnt(0),
	datad => \Mux7~155_combout\,
	combout => \Mux7~680_combout\);

-- Location: LCCOMB_X28_Y16_N2
\Mux7~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~169_combout\ = (!y_cnt(3) & (x_cnt(0) & (y_cnt(2) $ (y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => x_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~169_combout\);

-- Location: LCCOMB_X28_Y16_N0
\Mux7~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~170_combout\ = (x_cnt(1) & \Mux7~169_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(1),
	datad => \Mux7~169_combout\,
	combout => \Mux7~170_combout\);

-- Location: LCCOMB_X28_Y16_N22
\Mux7~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~160_combout\ = (y_cnt(3) & (!y_cnt(1) & ((y_cnt(0)) # (!y_cnt(2))))) # (!y_cnt(3) & (((!y_cnt(0) & y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~160_combout\);

-- Location: LCCOMB_X28_Y16_N14
\Mux7~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~158_combout\ = (y_cnt(3) & (y_cnt(2) $ (((y_cnt(1)) # (y_cnt(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(1),
	datac => y_cnt(0),
	datad => y_cnt(2),
	combout => \Mux7~158_combout\);

-- Location: LCCOMB_X28_Y16_N16
\Mux7~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~157_combout\ = (y_cnt(3) & (!y_cnt(1) & (y_cnt(0) $ (!y_cnt(2))))) # (!y_cnt(3) & (y_cnt(2) $ (((y_cnt(1) & y_cnt(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(1),
	datac => y_cnt(0),
	datad => y_cnt(2),
	combout => \Mux7~157_combout\);

-- Location: LCCOMB_X28_Y16_N4
\Mux7~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~159_combout\ = (x_cnt(0) & ((x_cnt(1)) # ((\Mux7~157_combout\)))) # (!x_cnt(0) & (!x_cnt(1) & (\Mux7~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(1),
	datac => \Mux7~158_combout\,
	datad => \Mux7~157_combout\,
	combout => \Mux7~159_combout\);

-- Location: LCCOMB_X28_Y16_N18
\Mux7~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~156_combout\ = (y_cnt(3) & (y_cnt(2) & (y_cnt(0) & !y_cnt(1)))) # (!y_cnt(3) & (y_cnt(1) & (y_cnt(2) $ (!y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~156_combout\);

-- Location: LCCOMB_X28_Y16_N20
\Mux7~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~161_combout\ = (x_cnt(1) & ((\Mux7~159_combout\ & (\Mux7~160_combout\)) # (!\Mux7~159_combout\ & ((\Mux7~156_combout\))))) # (!x_cnt(1) & (((\Mux7~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~160_combout\,
	datab => x_cnt(1),
	datac => \Mux7~159_combout\,
	datad => \Mux7~156_combout\,
	combout => \Mux7~161_combout\);

-- Location: LCCOMB_X28_Y17_N4
\Mux7~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~164_combout\ = (y_cnt(1) & (!y_cnt(2) & ((y_cnt(3)) # (y_cnt(0))))) # (!y_cnt(1) & (!y_cnt(3) & ((y_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(1),
	datac => y_cnt(0),
	datad => y_cnt(2),
	combout => \Mux7~164_combout\);

-- Location: LCCOMB_X28_Y17_N6
\Mux7~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~163_combout\ = (!y_cnt(0) & ((y_cnt(3) & (!y_cnt(1) & y_cnt(2))) # (!y_cnt(3) & (y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(1),
	datac => y_cnt(0),
	datad => y_cnt(2),
	combout => \Mux7~163_combout\);

-- Location: LCCOMB_X28_Y17_N2
\Mux7~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~165_combout\ = (x_cnt(0) & ((x_cnt(1)) # ((\Mux7~163_combout\)))) # (!x_cnt(0) & (!x_cnt(1) & (\Mux7~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(1),
	datac => \Mux7~164_combout\,
	datad => \Mux7~163_combout\,
	combout => \Mux7~165_combout\);

-- Location: LCCOMB_X28_Y17_N8
\Mux7~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~166_combout\ = (y_cnt(3) & (((!y_cnt(1))) # (!y_cnt(2)))) # (!y_cnt(3) & ((y_cnt(2)) # ((y_cnt(0)) # (y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~166_combout\);

-- Location: LCCOMB_X28_Y17_N0
\Mux7~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~162_combout\ = (y_cnt(3) & (y_cnt(2) & (!y_cnt(0) & !y_cnt(1)))) # (!y_cnt(3) & (y_cnt(1) & (y_cnt(2) $ (!y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~162_combout\);

-- Location: LCCOMB_X28_Y17_N30
\Mux7~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~167_combout\ = (x_cnt(1) & ((\Mux7~165_combout\ & (\Mux7~166_combout\)) # (!\Mux7~165_combout\ & ((\Mux7~162_combout\))))) # (!x_cnt(1) & (\Mux7~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => \Mux7~165_combout\,
	datac => \Mux7~166_combout\,
	datad => \Mux7~162_combout\,
	combout => \Mux7~167_combout\);

-- Location: LCCOMB_X27_Y16_N4
\Mux7~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~168_combout\ = (\Mux6~8_combout\ & (((\Mux5~3_combout\)))) # (!\Mux6~8_combout\ & ((\Mux5~3_combout\ & (\Mux7~161_combout\)) # (!\Mux5~3_combout\ & ((\Mux7~167_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~161_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux7~167_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~168_combout\);

-- Location: LCCOMB_X27_Y16_N14
\Mux7~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~171_combout\ = (\Mux7~168_combout\ & (((\Mux7~170_combout\) # (!\Mux6~8_combout\)))) # (!\Mux7~168_combout\ & (\Mux7~680_combout\ & ((\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~680_combout\,
	datab => \Mux7~170_combout\,
	datac => \Mux7~168_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~171_combout\);

-- Location: LCCOMB_X21_Y16_N4
\Mux7~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~187_combout\ = (y_cnt(3) & (!y_cnt(1) & ((!y_cnt(2)) # (!x_cnt(1))))) # (!y_cnt(3) & (!x_cnt(1) & (!y_cnt(2) & y_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => y_cnt(3),
	datac => y_cnt(2),
	datad => y_cnt(1),
	combout => \Mux7~187_combout\);

-- Location: LCCOMB_X21_Y16_N22
\Mux7~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~188_combout\ = (x_cnt(1) & (y_cnt(3) & (!y_cnt(2)))) # (!x_cnt(1) & (!y_cnt(3) & (y_cnt(2) & !y_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => y_cnt(3),
	datac => y_cnt(2),
	datad => y_cnt(1),
	combout => \Mux7~188_combout\);

-- Location: LCCOMB_X26_Y16_N8
\Mux7~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~189_combout\ = (\Mux7~187_combout\ & ((y_cnt(0) & (\Mux6~8_combout\)) # (!y_cnt(0) & (!\Mux6~8_combout\ & !\Mux7~188_combout\)))) # (!\Mux7~187_combout\ & (((\Mux6~8_combout\ & \Mux7~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~187_combout\,
	datab => y_cnt(0),
	datac => \Mux6~8_combout\,
	datad => \Mux7~188_combout\,
	combout => \Mux7~189_combout\);

-- Location: LCCOMB_X21_Y16_N12
\Mux7~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~199_combout\ = (!x_cnt(1) & (y_cnt(3) & (!y_cnt(2) & \Mux7~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => y_cnt(3),
	datac => y_cnt(2),
	datad => \Mux7~59_combout\,
	combout => \Mux7~199_combout\);

-- Location: LCCOMB_X21_Y16_N18
\Mux7~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~200_combout\ = (y_cnt(1) & (((y_cnt(0) & !y_cnt(3))))) # (!y_cnt(1) & (y_cnt(3) & (x_cnt(1) $ (y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => y_cnt(1),
	datac => y_cnt(0),
	datad => y_cnt(3),
	combout => \Mux7~200_combout\);

-- Location: LCCOMB_X21_Y16_N8
\Mux7~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~201_combout\ = (!\Mux6~8_combout\ & ((\Mux7~199_combout\) # ((\Mux7~200_combout\ & y_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~199_combout\,
	datab => \Mux7~200_combout\,
	datac => y_cnt(2),
	datad => \Mux6~8_combout\,
	combout => \Mux7~201_combout\);

-- Location: LCCOMB_X21_Y16_N14
\Mux7~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~191_combout\ = (y_cnt(1) & (y_cnt(0) & (x_cnt(1) $ (!y_cnt(2))))) # (!y_cnt(1) & (!x_cnt(1) & ((y_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => y_cnt(0),
	datac => y_cnt(2),
	datad => y_cnt(1),
	combout => \Mux7~191_combout\);

-- Location: LCCOMB_X21_Y16_N28
\Mux7~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~190_combout\ = (y_cnt(1) & (!y_cnt(2) & ((!y_cnt(0)) # (!x_cnt(1))))) # (!y_cnt(1) & (x_cnt(1) $ (((!y_cnt(0) & y_cnt(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => y_cnt(0),
	datac => y_cnt(2),
	datad => y_cnt(1),
	combout => \Mux7~190_combout\);

-- Location: LCCOMB_X24_Y16_N6
\Mux7~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~192_combout\ = (!\Mux6~8_combout\ & ((y_cnt(3) & ((\Mux7~190_combout\))) # (!y_cnt(3) & (\Mux7~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux7~191_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux7~190_combout\,
	combout => \Mux7~192_combout\);

-- Location: LCCOMB_X27_Y16_N16
\Mux7~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~193_combout\ = (!y_cnt(0) & (y_cnt(3) $ (((!\Mux6~8_combout\ & x_cnt(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(0),
	datac => \Mux6~8_combout\,
	datad => x_cnt(1),
	combout => \Mux7~193_combout\);

-- Location: LCCOMB_X27_Y16_N26
\Mux7~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~196_combout\ = (!y_cnt(3) & (!x_cnt(1) & ((y_cnt(0)) # (\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(0),
	datac => \Mux6~8_combout\,
	datad => x_cnt(1),
	combout => \Mux7~196_combout\);

-- Location: LCCOMB_X27_Y16_N10
\Mux7~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~194_combout\ = (y_cnt(3) & (\Mux6~8_combout\ $ (((y_cnt(0)) # (y_cnt(1)))))) # (!y_cnt(3) & ((y_cnt(0) & (y_cnt(1) $ (\Mux6~8_combout\))) # (!y_cnt(0) & (y_cnt(1) & \Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(0),
	datac => y_cnt(1),
	datad => \Mux6~8_combout\,
	combout => \Mux7~194_combout\);

-- Location: LCCOMB_X27_Y16_N28
\Mux7~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~195_combout\ = (y_cnt(2) & (((y_cnt(1))))) # (!y_cnt(2) & ((x_cnt(1) & ((\Mux7~194_combout\))) # (!x_cnt(1) & (y_cnt(1) & !\Mux7~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => y_cnt(2),
	datac => y_cnt(1),
	datad => \Mux7~194_combout\,
	combout => \Mux7~195_combout\);

-- Location: LCCOMB_X27_Y16_N24
\Mux7~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~197_combout\ = (y_cnt(2) & ((\Mux7~195_combout\ & ((\Mux7~196_combout\))) # (!\Mux7~195_combout\ & (\Mux7~193_combout\)))) # (!y_cnt(2) & (((\Mux7~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => \Mux7~193_combout\,
	datac => \Mux7~196_combout\,
	datad => \Mux7~195_combout\,
	combout => \Mux7~197_combout\);

-- Location: LCCOMB_X27_Y16_N2
\Mux7~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~198_combout\ = (x_cnt(0) & (\Mux5~3_combout\)) # (!x_cnt(0) & ((\Mux5~3_combout\ & (\Mux7~192_combout\)) # (!\Mux5~3_combout\ & ((\Mux7~197_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux5~3_combout\,
	datac => \Mux7~192_combout\,
	datad => \Mux7~197_combout\,
	combout => \Mux7~198_combout\);

-- Location: LCCOMB_X27_Y16_N8
\Mux7~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~202_combout\ = (x_cnt(0) & ((\Mux7~198_combout\ & ((\Mux7~201_combout\))) # (!\Mux7~198_combout\ & (\Mux7~189_combout\)))) # (!x_cnt(0) & (((\Mux7~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~189_combout\,
	datab => \Mux7~201_combout\,
	datac => x_cnt(0),
	datad => \Mux7~198_combout\,
	combout => \Mux7~202_combout\);

-- Location: LCCOMB_X24_Y16_N18
\Mux7~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~176_combout\ = (!y_cnt(3) & (!x_cnt(1) & (\Mux7~175_combout\ & x_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => x_cnt(1),
	datac => \Mux7~175_combout\,
	datad => x_cnt(0),
	combout => \Mux7~176_combout\);

-- Location: LCCOMB_X24_Y17_N30
\Mux7~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~172_combout\ = (x_cnt(0) & (y_cnt(2) & ((!y_cnt(1)) # (!y_cnt(0))))) # (!x_cnt(0) & (((y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(2),
	datac => x_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~172_combout\);

-- Location: LCCOMB_X24_Y16_N10
\Mux7~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~173_combout\ = (y_cnt(0) & ((y_cnt(2)) # ((y_cnt(1) & x_cnt(0))))) # (!y_cnt(0) & ((x_cnt(0)) # ((y_cnt(2) & !y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(2),
	datac => y_cnt(1),
	datad => x_cnt(0),
	combout => \Mux7~173_combout\);

-- Location: LCCOMB_X24_Y16_N24
\Mux7~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~174_combout\ = (y_cnt(3) & (!x_cnt(1) & (!\Mux7~172_combout\ & !\Mux7~173_combout\))) # (!y_cnt(3) & (\Mux7~172_combout\ & ((!\Mux7~173_combout\) # (!x_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => x_cnt(1),
	datac => \Mux7~172_combout\,
	datad => \Mux7~173_combout\,
	combout => \Mux7~174_combout\);

-- Location: LCCOMB_X24_Y16_N0
\Mux7~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~177_combout\ = (\Mux5~3_combout\ & ((\Mux6~8_combout\ & ((\Mux7~174_combout\))) # (!\Mux6~8_combout\ & (\Mux7~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~176_combout\,
	datab => \Mux7~174_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~177_combout\);

-- Location: LCCOMB_X28_Y16_N30
\Mux7~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~179_combout\ = (y_cnt(2) & (((!x_cnt(0) & !y_cnt(1))))) # (!y_cnt(2) & (y_cnt(1) & (y_cnt(3) $ (!x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => x_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~179_combout\);

-- Location: LCCOMB_X28_Y16_N26
\Mux7~651\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~651_combout\ = (y_cnt(2) & (!y_cnt(3) & (!y_cnt(0) & y_cnt(1)))) # (!y_cnt(2) & (((y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~651_combout\);

-- Location: LCCOMB_X28_Y16_N24
\Mux7~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~180_combout\ = (y_cnt(3) & (((x_cnt(0)) # (!y_cnt(1))))) # (!y_cnt(3) & (y_cnt(2) & (x_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => x_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~180_combout\);

-- Location: LCCOMB_X28_Y16_N10
\Mux7~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~181_combout\ = (\Mux7~179_combout\ & (x_cnt(1) $ (((\Mux7~180_combout\))))) # (!\Mux7~179_combout\ & (!x_cnt(1) & (\Mux7~651_combout\ & \Mux7~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~179_combout\,
	datab => x_cnt(1),
	datac => \Mux7~651_combout\,
	datad => \Mux7~180_combout\,
	combout => \Mux7~181_combout\);

-- Location: LCCOMB_X28_Y16_N8
\Mux7~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~182_combout\ = (\Mux7~181_combout\ & (\Mux5~3_combout\ & (x_cnt(1) $ (\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~181_combout\,
	datab => x_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~182_combout\);

-- Location: LCCOMB_X27_Y16_N20
\Mux7~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~183_combout\ = (y_cnt(3) & ((x_cnt(0) $ (\Mux5~3_combout\)))) # (!y_cnt(3) & ((y_cnt(2) & ((\Mux5~3_combout\))) # (!y_cnt(2) & (x_cnt(0) & !\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => x_cnt(0),
	datad => \Mux5~3_combout\,
	combout => \Mux7~183_combout\);

-- Location: LCCOMB_X27_Y16_N30
\Mux7~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~184_combout\ = (x_cnt(0) & ((y_cnt(3) & (!y_cnt(2) & \Mux5~3_combout\)) # (!y_cnt(3) & (y_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => x_cnt(0),
	datad => \Mux5~3_combout\,
	combout => \Mux7~184_combout\);

-- Location: LCCOMB_X27_Y16_N12
\Mux7~677\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~677_combout\ = (y_cnt(1) & ((\Mux7~184_combout\ & ((!\Mux7~183_combout\) # (!y_cnt(0)))) # (!\Mux7~184_combout\ & ((\Mux7~183_combout\))))) # (!y_cnt(1) & (\Mux7~184_combout\ & ((y_cnt(0)) # (\Mux7~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => y_cnt(0),
	datac => \Mux7~184_combout\,
	datad => \Mux7~183_combout\,
	combout => \Mux7~677_combout\);

-- Location: LCCOMB_X27_Y16_N6
\Mux7~678\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~678_combout\ = (\Mux7~183_combout\ & ((y_cnt(3) & (!\Mux7~184_combout\ & !\Mux7~677_combout\)) # (!y_cnt(3) & ((\Mux7~677_combout\))))) # (!\Mux7~183_combout\ & (\Mux7~184_combout\ & ((\Mux7~677_combout\) # (!y_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux7~183_combout\,
	datac => \Mux7~184_combout\,
	datad => \Mux7~677_combout\,
	combout => \Mux7~678_combout\);

-- Location: LCCOMB_X27_Y16_N0
\Mux7~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~185_combout\ = (\Mux7~182_combout\) # ((\Mux6~8_combout\ & (x_cnt(1) & \Mux7~678_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(1),
	datac => \Mux7~182_combout\,
	datad => \Mux7~678_combout\,
	combout => \Mux7~185_combout\);

-- Location: LCCOMB_X27_Y16_N18
\Mux7~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~186_combout\ = (x_cnt(2) & ((\Mux4~5_combout\) # ((\Mux7~177_combout\)))) # (!x_cnt(2) & (!\Mux4~5_combout\ & ((\Mux7~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux4~5_combout\,
	datac => \Mux7~177_combout\,
	datad => \Mux7~185_combout\,
	combout => \Mux7~186_combout\);

-- Location: LCCOMB_X27_Y16_N22
\Mux7~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~203_combout\ = (\Mux4~5_combout\ & ((\Mux7~186_combout\ & ((\Mux7~202_combout\))) # (!\Mux7~186_combout\ & (\Mux7~171_combout\)))) # (!\Mux4~5_combout\ & (((\Mux7~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux7~171_combout\,
	datac => \Mux7~202_combout\,
	datad => \Mux7~186_combout\,
	combout => \Mux7~203_combout\);

-- Location: LCCOMB_X26_Y16_N4
\Mux7~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~102_combout\ = (y_cnt(0) & (!\Mux5~3_combout\ & (x_cnt(0) $ (\Mux6~8_combout\)))) # (!y_cnt(0) & (!x_cnt(0) & (\Mux6~8_combout\ $ (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => x_cnt(0),
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~102_combout\);

-- Location: LCCOMB_X26_Y16_N16
\Mux7~683\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~683_combout\ = (y_cnt(0) & ((\Mux5~3_combout\ & (x_cnt(0))) # (!\Mux5~3_combout\ & ((\Mux6~8_combout\))))) # (!y_cnt(0) & ((x_cnt(0) & (\Mux6~8_combout\ & \Mux5~3_combout\)) # (!x_cnt(0) & (!\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => x_cnt(0),
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~683_combout\);

-- Location: LCCOMB_X26_Y16_N6
\Mux7~684\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~684_combout\ = (\Mux7~683_combout\ & (y_cnt(2) $ (((!\Mux5~3_combout\ & !y_cnt(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => y_cnt(2),
	datac => y_cnt(0),
	datad => \Mux7~683_combout\,
	combout => \Mux7~684_combout\);

-- Location: LCCOMB_X26_Y16_N2
\Mux7~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~103_combout\ = (y_cnt(3) & (((\Mux7~684_combout\)))) # (!y_cnt(3) & (y_cnt(2) & (\Mux7~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => y_cnt(2),
	datac => \Mux7~102_combout\,
	datad => \Mux7~684_combout\,
	combout => \Mux7~103_combout\);

-- Location: LCCOMB_X24_Y16_N22
\Mux7~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~111_combout\ = (y_cnt(3) & ((y_cnt(2) & (x_cnt(0))) # (!y_cnt(2) & ((!\Mux6~8_combout\))))) # (!y_cnt(3) & (y_cnt(2) & ((\Mux6~8_combout\) # (!x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => x_cnt(0),
	datac => \Mux6~8_combout\,
	datad => y_cnt(2),
	combout => \Mux7~111_combout\);

-- Location: LCCOMB_X24_Y16_N12
\Mux7~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~110_combout\ = (y_cnt(3) & ((x_cnt(0) & ((y_cnt(2)))) # (!x_cnt(0) & (!\Mux6~8_combout\ & !y_cnt(2))))) # (!y_cnt(3) & (\Mux6~8_combout\ $ (((x_cnt(0) & y_cnt(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => x_cnt(0),
	datac => \Mux6~8_combout\,
	datad => y_cnt(2),
	combout => \Mux7~110_combout\);

-- Location: LCCOMB_X24_Y16_N30
\Mux7~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~113_combout\ = (\Mux7~111_combout\ & (!\Mux5~3_combout\ & (x_cnt(0) $ (\Mux7~110_combout\)))) # (!\Mux7~111_combout\ & (((\Mux7~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux5~3_combout\,
	datac => \Mux7~111_combout\,
	datad => \Mux7~110_combout\,
	combout => \Mux7~113_combout\);

-- Location: LCCOMB_X24_Y16_N28
\Mux7~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~112_combout\ = \Mux7~111_combout\ $ (((x_cnt(0) & ((\Mux5~3_combout\) # (\Mux7~110_combout\))) # (!x_cnt(0) & (\Mux5~3_combout\ & \Mux7~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux5~3_combout\,
	datac => \Mux7~111_combout\,
	datad => \Mux7~110_combout\,
	combout => \Mux7~112_combout\);

-- Location: LCCOMB_X24_Y16_N20
\Mux7~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~114_combout\ = \Mux7~113_combout\ $ (((y_cnt(0) & \Mux7~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datac => \Mux7~113_combout\,
	datad => \Mux7~112_combout\,
	combout => \Mux7~114_combout\);

-- Location: LCCOMB_X26_Y16_N18
\Mux7~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~108_combout\ = (y_cnt(0) & (!x_cnt(0) & ((!\Mux5~3_combout\)))) # (!y_cnt(0) & ((x_cnt(0)) # ((\Mux6~8_combout\) # (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => x_cnt(0),
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~108_combout\);

-- Location: LCCOMB_X26_Y16_N14
\Mux7~648\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~648_combout\ = (y_cnt(2) & (y_cnt(3) & !\Mux7~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_cnt(2),
	datac => y_cnt(3),
	datad => \Mux7~108_combout\,
	combout => \Mux7~648_combout\);

-- Location: LCCOMB_X26_Y16_N30
\Mux7~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~105_combout\ = (y_cnt(3) & (((\Mux6~8_combout\) # (!\Mux5~3_combout\)))) # (!y_cnt(3) & (\Mux6~8_combout\ & (x_cnt(0) $ (!\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => x_cnt(0),
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~105_combout\);

-- Location: LCCOMB_X26_Y16_N0
\Mux7~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~104_combout\ = (y_cnt(3) & (x_cnt(0) & (!\Mux6~8_combout\ & \Mux5~3_combout\))) # (!y_cnt(3) & ((\Mux5~3_combout\) # ((x_cnt(0) & !\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => x_cnt(0),
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~104_combout\);

-- Location: LCCOMB_X26_Y16_N28
\Mux7~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~106_combout\ = (\Mux7~105_combout\ & (\Mux7~104_combout\ & (y_cnt(0) $ (!y_cnt(2))))) # (!\Mux7~105_combout\ & (!y_cnt(2) & (y_cnt(0) $ (\Mux7~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(2),
	datac => \Mux7~105_combout\,
	datad => \Mux7~104_combout\,
	combout => \Mux7~106_combout\);

-- Location: LCCOMB_X26_Y16_N20
\Mux7~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~109_combout\ = (\Mux4~5_combout\ & (y_cnt(1))) # (!\Mux4~5_combout\ & ((y_cnt(1) & ((\Mux7~106_combout\))) # (!y_cnt(1) & (\Mux7~648_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => y_cnt(1),
	datac => \Mux7~648_combout\,
	datad => \Mux7~106_combout\,
	combout => \Mux7~109_combout\);

-- Location: LCCOMB_X26_Y16_N10
\Mux7~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~115_combout\ = (\Mux4~5_combout\ & ((\Mux7~109_combout\ & ((\Mux7~114_combout\))) # (!\Mux7~109_combout\ & (\Mux7~103_combout\)))) # (!\Mux4~5_combout\ & (((\Mux7~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux7~103_combout\,
	datac => \Mux7~114_combout\,
	datad => \Mux7~109_combout\,
	combout => \Mux7~115_combout\);

-- Location: LCCOMB_X24_Y17_N8
\Mux7~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~150_combout\ = (\Mux5~3_combout\ & (((!y_cnt(1) & !y_cnt(0))) # (!\Mux6~8_combout\))) # (!\Mux5~3_combout\ & (((\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => y_cnt(1),
	datac => y_cnt(0),
	datad => \Mux6~8_combout\,
	combout => \Mux7~150_combout\);

-- Location: LCCOMB_X24_Y17_N14
\Mux7~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~147_combout\ = (\Mux5~3_combout\ & (((!\Mux6~8_combout\)))) # (!\Mux5~3_combout\ & ((\Mux6~8_combout\) # ((!y_cnt(0) & y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~147_combout\);

-- Location: LCCOMB_X24_Y17_N24
\Mux7~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~148_combout\ = (y_cnt(1) & ((y_cnt(0) & (\Mux5~3_combout\ & \Mux6~8_combout\)) # (!y_cnt(0) & ((\Mux5~3_combout\) # (\Mux6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~148_combout\);

-- Location: LCCOMB_X24_Y17_N2
\Mux7~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~149_combout\ = (\Mux4~5_combout\ & ((y_cnt(3) & (\Mux7~147_combout\)) # (!y_cnt(3) & ((\Mux7~148_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux7~147_combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux7~148_combout\,
	combout => \Mux7~149_combout\);

-- Location: LCCOMB_X24_Y17_N26
\Mux7~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~151_combout\ = (\Mux7~149_combout\) # ((y_cnt(3) & (!\Mux4~5_combout\ & !\Mux7~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux4~5_combout\,
	datac => \Mux7~150_combout\,
	datad => \Mux7~149_combout\,
	combout => \Mux7~151_combout\);

-- Location: LCCOMB_X24_Y17_N18
\Mux7~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~144_combout\ = (y_cnt(3)) # ((y_cnt(0) & \Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datac => \Mux5~3_combout\,
	datad => y_cnt(3),
	combout => \Mux7~144_combout\);

-- Location: LCCOMB_X24_Y17_N0
\Mux7~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~145_combout\ = (\Mux6~8_combout\ & (!y_cnt(1) & (\Mux5~3_combout\ & !\Mux7~144_combout\))) # (!\Mux6~8_combout\ & (((!y_cnt(1) & \Mux5~3_combout\)) # (!\Mux7~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => \Mux6~8_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux7~144_combout\,
	combout => \Mux7~145_combout\);

-- Location: LCCOMB_X24_Y17_N10
\Mux7~650\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~650_combout\ = (y_cnt(2) & (\Mux7~145_combout\ & (\Mux6~8_combout\ $ (!\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(2),
	datac => \Mux4~5_combout\,
	datad => \Mux7~145_combout\,
	combout => \Mux7~650_combout\);

-- Location: LCCOMB_X24_Y17_N4
\Mux7~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~152_combout\ = (!x_cnt(0) & ((\Mux7~650_combout\) # ((!y_cnt(2) & \Mux7~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => x_cnt(0),
	datac => \Mux7~151_combout\,
	datad => \Mux7~650_combout\,
	combout => \Mux7~152_combout\);

-- Location: LCCOMB_X24_Y20_N22
\Mux7~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~128_combout\ = (x_cnt(0) & (\Mux4~5_combout\ $ (((\Mux6~8_combout\) # (!y_cnt(2)))))) # (!x_cnt(0) & (\Mux6~8_combout\ & (\Mux4~5_combout\ & !y_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(0),
	datac => \Mux4~5_combout\,
	datad => y_cnt(2),
	combout => \Mux7~128_combout\);

-- Location: LCCOMB_X24_Y20_N16
\Mux7~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~129_combout\ = (\Mux6~8_combout\ & ((\Mux4~5_combout\) # ((!y_cnt(2) & !x_cnt(0))))) # (!\Mux6~8_combout\ & (!y_cnt(2) & (\Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => y_cnt(2),
	datac => \Mux4~5_combout\,
	datad => x_cnt(0),
	combout => \Mux7~129_combout\);

-- Location: LCCOMB_X24_Y20_N14
\Mux7~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~130_combout\ = (y_cnt(0) & (!y_cnt(1) & (\Mux7~128_combout\ $ (!\Mux7~129_combout\)))) # (!y_cnt(0) & (\Mux7~128_combout\ & ((\Mux7~129_combout\) # (!y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux7~128_combout\,
	datad => \Mux7~129_combout\,
	combout => \Mux7~130_combout\);

-- Location: LCCOMB_X23_Y19_N4
\Mux7~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~116_combout\ = (\Mux6~8_combout\ & ((x_cnt(0) & (y_cnt(0) $ (\Mux4~5_combout\))) # (!x_cnt(0) & ((y_cnt(0)) # (!\Mux4~5_combout\))))) # (!\Mux6~8_combout\ & (x_cnt(0) $ (((y_cnt(0) & !\Mux4~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(0),
	datac => y_cnt(0),
	datad => \Mux4~5_combout\,
	combout => \Mux7~116_combout\);

-- Location: LCCOMB_X23_Y19_N6
\Mux7~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~117_combout\ = (\Mux6~8_combout\ & (!x_cnt(0) & ((!\Mux4~5_combout\)))) # (!\Mux6~8_combout\ & (\Mux4~5_combout\ & ((x_cnt(0)) # (!y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(0),
	datac => y_cnt(0),
	datad => \Mux4~5_combout\,
	combout => \Mux7~117_combout\);

-- Location: LCCOMB_X23_Y19_N24
\Mux7~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~118_combout\ = (y_cnt(1) & (!y_cnt(2) & ((\Mux7~117_combout\)))) # (!y_cnt(1) & (\Mux7~116_combout\ & ((y_cnt(2)) # (\Mux7~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => y_cnt(2),
	datac => \Mux7~116_combout\,
	datad => \Mux7~117_combout\,
	combout => \Mux7~118_combout\);

-- Location: LCCOMB_X23_Y16_N22
\Mux7~649\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~649_combout\ = ((y_cnt(1) & (x_cnt(0) $ (!y_cnt(0))))) # (!y_cnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(1),
	datac => x_cnt(0),
	datad => y_cnt(0),
	combout => \Mux7~649_combout\);

-- Location: LCCOMB_X24_Y20_N20
\Mux7~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~119_combout\ = (y_cnt(2) & (x_cnt(0) $ (((y_cnt(1)))))) # (!y_cnt(2) & (y_cnt(1) & (x_cnt(0) $ (!y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => y_cnt(2),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~119_combout\);

-- Location: LCCOMB_X24_Y20_N6
\Mux7~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~120_combout\ = (y_cnt(2) & (x_cnt(0) & ((y_cnt(0)) # (y_cnt(1))))) # (!y_cnt(2) & (((!y_cnt(0) & y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => y_cnt(2),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~120_combout\);

-- Location: LCCOMB_X24_Y20_N26
\Mux7~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~122_combout\ = ((\Mux4~5_combout\ & ((\Mux7~120_combout\))) # (!\Mux4~5_combout\ & (\Mux7~119_combout\))) # (!\Mux6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux7~119_combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux7~120_combout\,
	combout => \Mux7~122_combout\);

-- Location: LCCOMB_X24_Y20_N24
\Mux7~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~121_combout\ = (\Mux4~5_combout\ & ((\Mux7~120_combout\) # ((y_cnt(2))))) # (!\Mux4~5_combout\ & ((y_cnt(2) & (\Mux7~120_combout\)) # (!y_cnt(2) & ((\Mux7~119_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~120_combout\,
	datab => \Mux7~119_combout\,
	datac => \Mux4~5_combout\,
	datad => y_cnt(2),
	combout => \Mux7~121_combout\);

-- Location: LCCOMB_X24_Y20_N8
\Mux7~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~123_combout\ = (\Mux6~8_combout\ & (((\Mux7~122_combout\)))) # (!\Mux6~8_combout\ & (\Mux7~649_combout\ & ((\Mux7~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux7~649_combout\,
	datac => \Mux7~122_combout\,
	datad => \Mux7~121_combout\,
	combout => \Mux7~123_combout\);

-- Location: LCCOMB_X24_Y20_N30
\Mux7~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~124_combout\ = (y_cnt(2) & (!\Mux6~8_combout\ & ((x_cnt(0)) # (!y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(2),
	datac => \Mux6~8_combout\,
	datad => x_cnt(0),
	combout => \Mux7~124_combout\);

-- Location: LCCOMB_X24_Y20_N28
\Mux7~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~125_combout\ = (\Mux6~8_combout\ & (y_cnt(0) $ (((!x_cnt(0)) # (!y_cnt(2)))))) # (!\Mux6~8_combout\ & ((x_cnt(0)) # ((y_cnt(0) & !y_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(2),
	datac => \Mux6~8_combout\,
	datad => x_cnt(0),
	combout => \Mux7~125_combout\);

-- Location: LCCOMB_X24_Y20_N0
\Mux7~681\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~681_combout\ = (\Mux6~8_combout\ & (((!x_cnt(0))))) # (!\Mux6~8_combout\ & (!y_cnt(2) & (y_cnt(0) $ (!x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => x_cnt(0),
	datac => \Mux6~8_combout\,
	datad => y_cnt(2),
	combout => \Mux7~681_combout\);

-- Location: LCCOMB_X24_Y20_N18
\Mux7~682\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~682_combout\ = (\Mux4~5_combout\ & (((y_cnt(1))))) # (!\Mux4~5_combout\ & (\Mux7~681_combout\ & ((y_cnt(2)) # (y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(1),
	datac => \Mux4~5_combout\,
	datad => \Mux7~681_combout\,
	combout => \Mux7~682_combout\);

-- Location: LCCOMB_X24_Y20_N2
\Mux7~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~126_combout\ = (\Mux4~5_combout\ & ((\Mux7~682_combout\ & ((\Mux7~125_combout\))) # (!\Mux7~682_combout\ & (\Mux7~124_combout\)))) # (!\Mux4~5_combout\ & (((\Mux7~682_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~124_combout\,
	datab => \Mux7~125_combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux7~682_combout\,
	combout => \Mux7~126_combout\);

-- Location: LCCOMB_X24_Y20_N12
\Mux7~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~127_combout\ = (y_cnt(3) & (\Mux5~3_combout\)) # (!y_cnt(3) & ((\Mux5~3_combout\ & (\Mux7~123_combout\)) # (!\Mux5~3_combout\ & ((\Mux7~126_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux5~3_combout\,
	datac => \Mux7~123_combout\,
	datad => \Mux7~126_combout\,
	combout => \Mux7~127_combout\);

-- Location: LCCOMB_X24_Y20_N4
\Mux7~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~131_combout\ = (y_cnt(3) & ((\Mux7~127_combout\ & (\Mux7~130_combout\)) # (!\Mux7~127_combout\ & ((\Mux7~118_combout\))))) # (!y_cnt(3) & (((\Mux7~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux7~130_combout\,
	datac => \Mux7~118_combout\,
	datad => \Mux7~127_combout\,
	combout => \Mux7~131_combout\);

-- Location: LCCOMB_X23_Y17_N28
\Mux7~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~135_combout\ = (y_cnt(0) & ((y_cnt(2) & (!y_cnt(1) & y_cnt(3))) # (!y_cnt(2) & (y_cnt(1) & !y_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(0),
	datac => y_cnt(1),
	datad => y_cnt(3),
	combout => \Mux7~135_combout\);

-- Location: LCCOMB_X23_Y17_N10
\Mux7~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~134_combout\ = (\Mux4~5_combout\ & ((\Mux5~3_combout\ & ((\Mux7~132_combout\))) # (!\Mux5~3_combout\ & (\Mux7~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~133_combout\,
	datab => \Mux7~132_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~134_combout\);

-- Location: LCCOMB_X23_Y17_N14
\Mux7~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~136_combout\ = (\Mux7~134_combout\) # ((\Mux5~3_combout\ & (\Mux7~135_combout\ & !\Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux7~135_combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux7~134_combout\,
	combout => \Mux7~136_combout\);

-- Location: LCCOMB_X23_Y17_N4
\Mux7~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~137_combout\ = (y_cnt(2) & (!y_cnt(1) & \Mux5~3_combout\)) # (!y_cnt(2) & ((!\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datac => y_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~137_combout\);

-- Location: LCCOMB_X23_Y17_N30
\Mux7~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~140_combout\ = (!y_cnt(2) & ((\Mux5~3_combout\) # (y_cnt(0) $ (y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(0),
	datac => y_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~140_combout\);

-- Location: LCCOMB_X23_Y17_N6
\Mux7~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~138_combout\ = (\Mux5~3_combout\ & ((y_cnt(2) & ((y_cnt(0)) # (y_cnt(1)))) # (!y_cnt(2) & (y_cnt(0) & y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(0),
	datac => y_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~138_combout\);

-- Location: LCCOMB_X23_Y17_N20
\Mux7~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~139_combout\ = (y_cnt(3) & (((\Mux4~5_combout\)))) # (!y_cnt(3) & ((y_cnt(2) & (\Mux4~5_combout\ $ (!\Mux7~138_combout\))) # (!y_cnt(2) & (!\Mux4~5_combout\ & \Mux7~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(3),
	datac => \Mux4~5_combout\,
	datad => \Mux7~138_combout\,
	combout => \Mux7~139_combout\);

-- Location: LCCOMB_X23_Y17_N12
\Mux7~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~141_combout\ = (y_cnt(3) & ((\Mux7~139_combout\ & ((\Mux7~140_combout\))) # (!\Mux7~139_combout\ & (\Mux7~137_combout\)))) # (!y_cnt(3) & (((\Mux7~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(3),
	datab => \Mux7~137_combout\,
	datac => \Mux7~140_combout\,
	datad => \Mux7~139_combout\,
	combout => \Mux7~141_combout\);

-- Location: LCCOMB_X23_Y17_N22
\Mux7~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~142_combout\ = (x_cnt(0) & ((\Mux6~8_combout\ & (\Mux7~136_combout\)) # (!\Mux6~8_combout\ & ((\Mux7~141_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux6~8_combout\,
	datac => \Mux7~136_combout\,
	datad => \Mux7~141_combout\,
	combout => \Mux7~142_combout\);

-- Location: LCCOMB_X24_Y20_N10
\Mux7~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~143_combout\ = (x_cnt(2) & ((x_cnt(1)) # ((\Mux7~131_combout\)))) # (!x_cnt(2) & (!x_cnt(1) & ((\Mux7~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux7~131_combout\,
	datad => \Mux7~142_combout\,
	combout => \Mux7~143_combout\);

-- Location: LCCOMB_X27_Y20_N10
\Mux7~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~153_combout\ = (x_cnt(1) & ((\Mux7~143_combout\ & ((\Mux7~152_combout\))) # (!\Mux7~143_combout\ & (\Mux7~115_combout\)))) # (!x_cnt(1) & (((\Mux7~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~115_combout\,
	datab => x_cnt(1),
	datac => \Mux7~152_combout\,
	datad => \Mux7~143_combout\,
	combout => \Mux7~153_combout\);

-- Location: LCCOMB_X27_Y20_N12
\Mux7~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~204_combout\ = (\Mux3~3_combout\ & (\Mux2~2_combout\)) # (!\Mux3~3_combout\ & ((\Mux2~2_combout\ & ((\Mux7~153_combout\))) # (!\Mux2~2_combout\ & (\Mux7~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux7~203_combout\,
	datad => \Mux7~153_combout\,
	combout => \Mux7~204_combout\);

-- Location: LCCOMB_X27_Y20_N26
\Mux7~250\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~250_combout\ = (\Mux3~3_combout\ & ((\Mux7~204_combout\ & (\Mux7~249_combout\)) # (!\Mux7~204_combout\ & ((\Mux7~101_combout\))))) # (!\Mux3~3_combout\ & (((\Mux7~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux7~249_combout\,
	datac => \Mux7~101_combout\,
	datad => \Mux7~204_combout\,
	combout => \Mux7~250_combout\);

-- Location: LCCOMB_X21_Y19_N24
\Mux7~251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~251_combout\ = (x_cnt(1) & ((x_cnt(2)) # ((!\Mux2~2_combout\)))) # (!x_cnt(1) & (((\Mux3~3_combout\) # (\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux3~3_combout\,
	datac => x_cnt(1),
	datad => \Mux2~2_combout\,
	combout => \Mux7~251_combout\);

-- Location: LCCOMB_X21_Y19_N12
\Mux7~253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~253_combout\ = (x_cnt(1) & (!y_cnt(1) & !y_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(1),
	datac => y_cnt(1),
	datad => y_cnt(0),
	combout => \Mux7~253_combout\);

-- Location: LCCOMB_X21_Y19_N10
\Mux7~252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~252_combout\ = (x_cnt(1) & (!y_cnt(0) & (x_cnt(2) $ (!y_cnt(1))))) # (!x_cnt(1) & ((y_cnt(1) $ (y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => y_cnt(1),
	datad => y_cnt(0),
	combout => \Mux7~252_combout\);

-- Location: LCCOMB_X21_Y19_N14
\Mux7~655\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~655_combout\ = (\Mux2~2_combout\ & (\Mux7~252_combout\)) # (!\Mux2~2_combout\ & (((x_cnt(1) & !x_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~252_combout\,
	datab => x_cnt(1),
	datac => x_cnt(2),
	datad => \Mux2~2_combout\,
	combout => \Mux7~655_combout\);

-- Location: LCCOMB_X21_Y19_N26
\Mux7~254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~254_combout\ = (\Mux3~3_combout\ & (((\Mux7~655_combout\)))) # (!\Mux3~3_combout\ & (\Mux7~253_combout\ & ((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~253_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux7~655_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux7~254_combout\);

-- Location: LCCOMB_X24_Y18_N0
\Mux7~255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~255_combout\ = (!x_cnt(1) & (x_cnt(2) & (!\Mux2~2_combout\ & \Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(2),
	datac => \Mux2~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~255_combout\);

-- Location: LCCOMB_X21_Y19_N4
\Mux7~256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~256_combout\ = (x_cnt(0) & (\Mux5~3_combout\)) # (!x_cnt(0) & ((\Mux5~3_combout\ & (\Mux7~254_combout\)) # (!\Mux5~3_combout\ & ((\Mux7~255_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux5~3_combout\,
	datac => \Mux7~254_combout\,
	datad => \Mux7~255_combout\,
	combout => \Mux7~256_combout\);

-- Location: LCCOMB_X21_Y19_N6
\Mux7~261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~261_combout\ = (\Mux3~3_combout\ & (((!y_cnt(1))))) # (!\Mux3~3_combout\ & (!x_cnt(2) & ((y_cnt(0)) # (y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux3~3_combout\,
	datad => x_cnt(2),
	combout => \Mux7~261_combout\);

-- Location: LCCOMB_X21_Y19_N22
\Mux7~257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~257_combout\ = (!x_cnt(2) & (((y_cnt(7)) # (!y_cnt(6))) # (!\Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => x_cnt(2),
	datac => y_cnt(6),
	datad => y_cnt(7),
	combout => \Mux7~257_combout\);

-- Location: LCCOMB_X21_Y19_N8
\Mux7~258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~258_combout\ = (y_cnt(0) & (((!\Mux3~3_combout\ & x_cnt(2))))) # (!y_cnt(0) & ((y_cnt(1) & ((x_cnt(2)))) # (!y_cnt(1) & (\Mux3~3_combout\ & !x_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux3~3_combout\,
	datad => x_cnt(2),
	combout => \Mux7~258_combout\);

-- Location: LCCOMB_X21_Y19_N18
\Mux7~259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~259_combout\ = (!y_cnt(7) & (x_cnt(2) & (y_cnt(6) & \Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(7),
	datab => x_cnt(2),
	datac => y_cnt(6),
	datad => \Mux3~2_combout\,
	combout => \Mux7~259_combout\);

-- Location: LCCOMB_X21_Y19_N16
\Mux7~260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~260_combout\ = (x_cnt(1) & (\Mux2~2_combout\)) # (!x_cnt(1) & ((\Mux2~2_combout\ & (\Mux7~258_combout\)) # (!\Mux2~2_combout\ & ((\Mux7~259_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => \Mux2~2_combout\,
	datac => \Mux7~258_combout\,
	datad => \Mux7~259_combout\,
	combout => \Mux7~260_combout\);

-- Location: LCCOMB_X21_Y19_N28
\Mux7~262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~262_combout\ = (x_cnt(1) & ((\Mux7~260_combout\ & (\Mux7~261_combout\)) # (!\Mux7~260_combout\ & ((\Mux7~257_combout\))))) # (!x_cnt(1) & (((\Mux7~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~261_combout\,
	datab => x_cnt(1),
	datac => \Mux7~257_combout\,
	datad => \Mux7~260_combout\,
	combout => \Mux7~262_combout\);

-- Location: LCCOMB_X21_Y19_N2
\Mux7~263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~263_combout\ = (x_cnt(0) & ((\Mux7~256_combout\ & ((\Mux7~262_combout\))) # (!\Mux7~256_combout\ & (!\Mux7~251_combout\)))) # (!x_cnt(0) & (((\Mux7~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux7~251_combout\,
	datac => \Mux7~256_combout\,
	datad => \Mux7~262_combout\,
	combout => \Mux7~263_combout\);

-- Location: LCCOMB_X28_Y17_N12
\Mux7~293\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~293_combout\ = (x_cnt(2) & (x_cnt(0) $ (((y_cnt(1)) # (!y_cnt(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(0),
	datac => y_cnt(0),
	datad => y_cnt(1),
	combout => \Mux7~293_combout\);

-- Location: LCCOMB_X28_Y17_N22
\Mux7~294\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~294_combout\ = (!x_cnt(1) & (!\Mux5~3_combout\ & \Mux7~293_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux7~293_combout\,
	combout => \Mux7~294_combout\);

-- Location: LCCOMB_X28_Y19_N4
\Mux7~289\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~289_combout\ = (x_cnt(0) & (!x_cnt(2) & (\Mux5~3_combout\ & !x_cnt(1)))) # (!x_cnt(0) & ((x_cnt(2) & ((x_cnt(1)) # (!\Mux5~3_combout\))) # (!x_cnt(2) & (!\Mux5~3_combout\ & x_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(2),
	datac => \Mux5~3_combout\,
	datad => x_cnt(1),
	combout => \Mux7~289_combout\);

-- Location: LCCOMB_X29_Y18_N10
\Mux7~673\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~673_combout\ = (\Mux5~3_combout\ & (x_cnt(2) $ (((!y_cnt(1)) # (!y_cnt(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => y_cnt(0),
	datac => y_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~673_combout\);

-- Location: LCCOMB_X29_Y18_N8
\Mux7~674\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~674_combout\ = (x_cnt(2) & (!x_cnt(1) & (x_cnt(0) $ (\Mux7~673_combout\)))) # (!x_cnt(2) & ((x_cnt(0) & ((\Mux7~673_combout\))) # (!x_cnt(0) & (x_cnt(1) & !\Mux7~673_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => x_cnt(0),
	datad => \Mux7~673_combout\,
	combout => \Mux7~674_combout\);

-- Location: LCCOMB_X29_Y18_N22
\Mux7~291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~291_combout\ = (x_cnt(2) & ((x_cnt(0) & (!x_cnt(1) & !\Mux5~3_combout\)) # (!x_cnt(0) & ((!\Mux5~3_combout\) # (!x_cnt(1)))))) # (!x_cnt(2) & (((x_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(0),
	datac => x_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~291_combout\);

-- Location: LCCOMB_X29_Y18_N16
\Mux7~290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~290_combout\ = (x_cnt(0) & (!x_cnt(1) & ((\Mux5~3_combout\) # (!x_cnt(2))))) # (!x_cnt(0) & (x_cnt(1) & (x_cnt(2) $ (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(0),
	datac => x_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~290_combout\);

-- Location: LCCOMB_X29_Y18_N2
\Mux7~671\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~671_combout\ = (\Mux7~290_combout\) # ((\Mux7~291_combout\ & (y_cnt(0) $ (y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux7~291_combout\,
	datad => \Mux7~290_combout\,
	combout => \Mux7~671_combout\);

-- Location: LCCOMB_X29_Y18_N20
\Mux7~672\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~672_combout\ = (\Mux7~671_combout\ & ((\Mux5~3_combout\ & (y_cnt(1) $ (!\Mux7~291_combout\))) # (!\Mux5~3_combout\ & ((!\Mux7~291_combout\) # (!y_cnt(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => y_cnt(1),
	datac => \Mux7~291_combout\,
	datad => \Mux7~671_combout\,
	combout => \Mux7~672_combout\);

-- Location: LCCOMB_X29_Y18_N12
\Mux7~292\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~292_combout\ = (\Mux3~3_combout\ & (\Mux2~2_combout\)) # (!\Mux3~3_combout\ & ((\Mux2~2_combout\ & (\Mux7~674_combout\)) # (!\Mux2~2_combout\ & ((\Mux7~672_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux7~674_combout\,
	datad => \Mux7~672_combout\,
	combout => \Mux7~292_combout\);

-- Location: LCCOMB_X28_Y19_N22
\Mux7~295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~295_combout\ = (\Mux3~3_combout\ & ((\Mux7~292_combout\ & (\Mux7~294_combout\)) # (!\Mux7~292_combout\ & ((\Mux7~289_combout\))))) # (!\Mux3~3_combout\ & (((\Mux7~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~294_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux7~289_combout\,
	datad => \Mux7~292_combout\,
	combout => \Mux7~295_combout\);

-- Location: LCCOMB_X24_Y19_N14
\Mux7~282\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~282_combout\ = (\Mux2~2_combout\ & ((y_cnt(0) & (!y_cnt(1))) # (!y_cnt(0) & ((y_cnt(1)) # (\Mux5~3_combout\))))) # (!\Mux2~2_combout\ & (((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux2~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~282_combout\);

-- Location: LCCOMB_X24_Y19_N0
\Mux7~281\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~281_combout\ = (!\Mux3~3_combout\ & (\Mux5~3_combout\ $ (\Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~3_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~281_combout\);

-- Location: LCCOMB_X24_Y19_N16
\Mux7~283\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~283_combout\ = (\Mux7~281_combout\) # ((\Mux3~3_combout\ & (!x_cnt(2) & !\Mux7~282_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => x_cnt(2),
	datac => \Mux7~282_combout\,
	datad => \Mux7~281_combout\,
	combout => \Mux7~283_combout\);

-- Location: LCCOMB_X24_Y19_N12
\Mux7~285\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~285_combout\ = (\Mux3~3_combout\ & ((y_cnt(0) & (!y_cnt(1) & !\Mux5~3_combout\)) # (!y_cnt(0) & (y_cnt(1))))) # (!\Mux3~3_combout\ & (((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~285_combout\);

-- Location: LCCOMB_X24_Y19_N30
\Mux7~286\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~286_combout\ = (!x_cnt(2) & (\Mux2~2_combout\ & \Mux7~285_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datac => \Mux2~2_combout\,
	datad => \Mux7~285_combout\,
	combout => \Mux7~286_combout\);

-- Location: LCCOMB_X24_Y19_N24
\Mux7~675\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~675_combout\ = (y_cnt(1) & ((\Mux5~3_combout\ & (x_cnt(0))) # (!\Mux5~3_combout\ & ((!y_cnt(0)))))) # (!y_cnt(1) & (((y_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => y_cnt(1),
	datac => y_cnt(0),
	datad => \Mux5~3_combout\,
	combout => \Mux7~675_combout\);

-- Location: LCCOMB_X24_Y19_N2
\Mux7~676\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~676_combout\ = (\Mux2~2_combout\ & ((\Mux7~675_combout\))) # (!\Mux2~2_combout\ & (\Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~3_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux7~675_combout\,
	combout => \Mux7~676_combout\);

-- Location: LCCOMB_X24_Y19_N10
\Mux7~284\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~284_combout\ = (x_cnt(1) & (x_cnt(0))) # (!x_cnt(1) & (\Mux7~259_combout\ & (x_cnt(0) $ (\Mux7~676_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(1),
	datac => \Mux7~259_combout\,
	datad => \Mux7~676_combout\,
	combout => \Mux7~284_combout\);

-- Location: LCCOMB_X24_Y19_N28
\Mux7~287\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~287_combout\ = (x_cnt(1) & ((\Mux7~284_combout\ & ((\Mux7~286_combout\))) # (!\Mux7~284_combout\ & (\Mux7~283_combout\)))) # (!x_cnt(1) & (((\Mux7~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => \Mux7~283_combout\,
	datac => \Mux7~286_combout\,
	datad => \Mux7~284_combout\,
	combout => \Mux7~287_combout\);

-- Location: LCCOMB_X21_Y19_N30
\Mux7~278\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~278_combout\ = (y_cnt(0) & (!y_cnt(1) & (\Mux5~3_combout\ $ (!\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux7~278_combout\);

-- Location: LCCOMB_X21_Y19_N20
\Mux7~277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~277_combout\ = (\Mux5~3_combout\ & ((y_cnt(0) & (y_cnt(1) $ (!\Mux2~2_combout\))) # (!y_cnt(0) & ((y_cnt(1)) # (\Mux2~2_combout\))))) # (!\Mux5~3_combout\ & (\Mux2~2_combout\ & (y_cnt(0) $ (y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux7~277_combout\);

-- Location: LCCOMB_X21_Y19_N0
\Mux7~279\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~279_combout\ = (!x_cnt(2) & ((\Mux3~3_combout\ & ((\Mux7~277_combout\))) # (!\Mux3~3_combout\ & (\Mux7~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux3~3_combout\,
	datac => \Mux7~278_combout\,
	datad => \Mux7~277_combout\,
	combout => \Mux7~279_combout\);

-- Location: LCCOMB_X28_Y19_N30
\Mux7~267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~267_combout\ = (!\Mux3~3_combout\ & (\Mux2~2_combout\ & (y_cnt(0) $ (!y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux3~3_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux7~267_combout\);

-- Location: LCCOMB_X28_Y19_N26
\Mux7~656\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~656_combout\ = (!y_cnt(0) & (!y_cnt(1) & (\Mux3~3_combout\ & \Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux3~3_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux7~656_combout\);

-- Location: LCCOMB_X28_Y19_N14
\Mux7~265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~265_combout\ = (!y_cnt(0) & ((y_cnt(1) & (!\Mux2~2_combout\ & !\Mux3~3_combout\)) # (!y_cnt(1) & (\Mux2~2_combout\ & \Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux2~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~265_combout\);

-- Location: LCCOMB_X28_Y19_N24
\Mux7~264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~264_combout\ = (\Mux2~2_combout\ & (y_cnt(0) & (!y_cnt(1)))) # (!\Mux2~2_combout\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux2~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~264_combout\);

-- Location: LCCOMB_X28_Y19_N12
\Mux7~266\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~266_combout\ = (x_cnt(2) & (\Mux5~3_combout\)) # (!x_cnt(2) & ((\Mux5~3_combout\ & ((\Mux7~264_combout\))) # (!\Mux5~3_combout\ & (\Mux7~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux5~3_combout\,
	datac => \Mux7~265_combout\,
	datad => \Mux7~264_combout\,
	combout => \Mux7~266_combout\);

-- Location: LCCOMB_X28_Y19_N8
\Mux7~268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~268_combout\ = (x_cnt(2) & ((\Mux7~266_combout\ & (\Mux7~267_combout\)) # (!\Mux7~266_combout\ & ((\Mux7~656_combout\))))) # (!x_cnt(2) & (((\Mux7~266_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~267_combout\,
	datab => x_cnt(2),
	datac => \Mux7~656_combout\,
	datad => \Mux7~266_combout\,
	combout => \Mux7~268_combout\);

-- Location: LCCOMB_X24_Y19_N26
\Mux7~273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~273_combout\ = (y_cnt(1) & ((y_cnt(0) & (!\Mux5~3_combout\ & \Mux3~3_combout\)) # (!y_cnt(0) & (\Mux5~3_combout\ & !\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~273_combout\);

-- Location: LCCOMB_X24_Y19_N20
\Mux7~274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~274_combout\ = (y_cnt(0) & ((y_cnt(1) & ((\Mux3~3_combout\))) # (!y_cnt(1) & (!\Mux5~3_combout\)))) # (!y_cnt(0) & (\Mux3~3_combout\ & ((!\Mux5~3_combout\) # (!y_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => y_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~274_combout\);

-- Location: LCCOMB_X24_Y19_N18
\Mux7~275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~275_combout\ = (x_cnt(2) & ((\Mux2~2_combout\ & (\Mux7~273_combout\)) # (!\Mux2~2_combout\ & ((\Mux7~274_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => x_cnt(2),
	datac => \Mux7~273_combout\,
	datad => \Mux7~274_combout\,
	combout => \Mux7~275_combout\);

-- Location: LCCOMB_X28_Y19_N6
\Mux7~271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~271_combout\ = (y_cnt(0) & ((x_cnt(2)) # ((!y_cnt(1) & \Mux2~2_combout\)))) # (!y_cnt(0) & (x_cnt(2) $ (((y_cnt(1) & \Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => x_cnt(2),
	datac => y_cnt(1),
	datad => \Mux2~2_combout\,
	combout => \Mux7~271_combout\);

-- Location: LCCOMB_X28_Y19_N18
\Mux7~269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~269_combout\ = (y_cnt(0) & (!y_cnt(1) & (x_cnt(2) $ (!\Mux2~2_combout\)))) # (!y_cnt(0) & (y_cnt(1) & (x_cnt(2) $ (!\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => x_cnt(2),
	datac => y_cnt(1),
	datad => \Mux2~2_combout\,
	combout => \Mux7~269_combout\);

-- Location: LCCOMB_X28_Y19_N20
\Mux7~270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~270_combout\ = (!\Mux5~3_combout\ & ((\Mux7~269_combout\ & (x_cnt(2))) # (!\Mux7~269_combout\ & ((!\Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux5~3_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux7~269_combout\,
	combout => \Mux7~270_combout\);

-- Location: LCCOMB_X28_Y19_N16
\Mux7~272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~272_combout\ = (\Mux7~270_combout\) # ((!\Mux7~271_combout\ & (!\Mux3~3_combout\ & \Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~271_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux7~270_combout\,
	combout => \Mux7~272_combout\);

-- Location: LCCOMB_X28_Y19_N10
\Mux7~276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~276_combout\ = (x_cnt(0) & ((x_cnt(1)) # ((\Mux7~272_combout\)))) # (!x_cnt(0) & (!x_cnt(1) & (\Mux7~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(1),
	datac => \Mux7~275_combout\,
	datad => \Mux7~272_combout\,
	combout => \Mux7~276_combout\);

-- Location: LCCOMB_X28_Y19_N28
\Mux7~280\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~280_combout\ = (x_cnt(1) & ((\Mux7~276_combout\ & (\Mux7~279_combout\)) # (!\Mux7~276_combout\ & ((\Mux7~268_combout\))))) # (!x_cnt(1) & (((\Mux7~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~279_combout\,
	datab => x_cnt(1),
	datac => \Mux7~268_combout\,
	datad => \Mux7~276_combout\,
	combout => \Mux7~280_combout\);

-- Location: LCCOMB_X28_Y19_N2
\Mux7~288\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~288_combout\ = (\Mux4~5_combout\ & (\Mux6~8_combout\)) # (!\Mux4~5_combout\ & ((\Mux6~8_combout\ & ((\Mux7~280_combout\))) # (!\Mux6~8_combout\ & (\Mux7~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux7~287_combout\,
	datad => \Mux7~280_combout\,
	combout => \Mux7~288_combout\);

-- Location: LCCOMB_X28_Y19_N0
\Mux7~296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~296_combout\ = (\Mux4~5_combout\ & ((\Mux7~288_combout\ & ((\Mux7~295_combout\))) # (!\Mux7~288_combout\ & (\Mux7~263_combout\)))) # (!\Mux4~5_combout\ & (((\Mux7~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux7~263_combout\,
	datac => \Mux7~295_combout\,
	datad => \Mux7~288_combout\,
	combout => \Mux7~296_combout\);

-- Location: LCCOMB_X26_Y19_N12
\Mux7~357\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~357_combout\ = (\Mux2~2_combout\ & (\Mux3~3_combout\ & ((y_cnt(0)) # (!\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => y_cnt(0),
	datac => \Mux3~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~357_combout\);

-- Location: LCCOMB_X23_Y22_N12
\Mux7~321\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~321_combout\ = (!x_cnt(0) & (!x_cnt(1) & x_cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(0),
	datac => x_cnt(1),
	datad => x_cnt(2),
	combout => \Mux7~321_combout\);

-- Location: LCCOMB_X26_Y19_N22
\Mux7~358\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~358_combout\ = (\Mux7~321_combout\ & (\Mux5~3_combout\ & \Mux6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~321_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~358_combout\);

-- Location: LCCOMB_X26_Y19_N6
\Mux7~356\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~356_combout\ = (!x_cnt(2) & (\Mux7~355_combout\ & x_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datac => \Mux7~355_combout\,
	datad => x_cnt(1),
	combout => \Mux7~356_combout\);

-- Location: LCCOMB_X26_Y19_N4
\Mux7~359\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~359_combout\ = (\Mux7~357_combout\ & ((\Mux4~5_combout\ & ((\Mux7~356_combout\))) # (!\Mux4~5_combout\ & (\Mux7~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~357_combout\,
	datab => \Mux4~5_combout\,
	datac => \Mux7~358_combout\,
	datad => \Mux7~356_combout\,
	combout => \Mux7~359_combout\);

-- Location: LCCOMB_X24_Y19_N4
\Mux7~361\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~361_combout\ = (y_cnt(0) & (((\Mux5~3_combout\ & !\Mux3~3_combout\)))) # (!y_cnt(0) & (x_cnt(0) & (!\Mux5~3_combout\ & \Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => y_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~361_combout\);

-- Location: LCCOMB_X24_Y19_N6
\Mux7~360\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~360_combout\ = (\Mux3~3_combout\ & ((x_cnt(0)) # ((\Mux5~3_combout\)))) # (!\Mux3~3_combout\ & (y_cnt(0) & (x_cnt(0) $ (!\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => y_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~360_combout\);

-- Location: LCCOMB_X24_Y19_N22
\Mux7~362\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~362_combout\ = (x_cnt(2) & (!\Mux7~360_combout\ & (x_cnt(1) $ (!\Mux7~361_combout\)))) # (!x_cnt(2) & (x_cnt(1) & (\Mux7~361_combout\ & \Mux7~360_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux7~361_combout\,
	datad => \Mux7~360_combout\,
	combout => \Mux7~362_combout\);

-- Location: LCCOMB_X26_Y19_N30
\Mux7~363\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~363_combout\ = (!x_cnt(2) & ((x_cnt(1) & ((!x_cnt(0)))) # (!x_cnt(1) & (!y_cnt(0) & x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => y_cnt(0),
	datad => x_cnt(0),
	combout => \Mux7~363_combout\);

-- Location: LCCOMB_X26_Y19_N8
\Mux7~364\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~364_combout\ = (\Mux5~3_combout\ & (\Mux7~363_combout\)) # (!\Mux5~3_combout\ & ((\Mux7~321_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~363_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux7~321_combout\,
	combout => \Mux7~364_combout\);

-- Location: LCCOMB_X26_Y19_N14
\Mux7~367\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~367_combout\ = (x_cnt(1) & (((!\Mux5~3_combout\ & !\Mux3~3_combout\)))) # (!x_cnt(1) & (!y_cnt(0) & (\Mux5~3_combout\ $ (\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datab => x_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~367_combout\);

-- Location: LCCOMB_X26_Y19_N18
\Mux7~365\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~365_combout\ = (\Mux3~3_combout\ & ((\Mux5~3_combout\))) # (!\Mux3~3_combout\ & (y_cnt(0) & !\Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(0),
	datac => \Mux3~3_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~365_combout\);

-- Location: LCCOMB_X26_Y19_N16
\Mux7~366\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~366_combout\ = (!x_cnt(0) & ((x_cnt(1) & (!x_cnt(2) & !\Mux7~365_combout\)) # (!x_cnt(1) & (x_cnt(2) & \Mux7~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(1),
	datac => x_cnt(2),
	datad => \Mux7~365_combout\,
	combout => \Mux7~366_combout\);

-- Location: LCCOMB_X26_Y19_N20
\Mux7~368\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~368_combout\ = (\Mux7~366_combout\) # ((x_cnt(0) & (!x_cnt(2) & \Mux7~367_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(2),
	datac => \Mux7~367_combout\,
	datad => \Mux7~366_combout\,
	combout => \Mux7~368_combout\);

-- Location: LCCOMB_X26_Y19_N2
\Mux7~369\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~369_combout\ = (\Mux6~8_combout\ & (\Mux3~3_combout\ & (\Mux7~364_combout\))) # (!\Mux6~8_combout\ & (((\Mux7~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux7~364_combout\,
	datad => \Mux7~368_combout\,
	combout => \Mux7~369_combout\);

-- Location: LCCOMB_X26_Y19_N10
\Mux7~660\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~660_combout\ = (\Mux4~5_combout\ & (!\Mux6~8_combout\ & (\Mux7~362_combout\))) # (!\Mux4~5_combout\ & (((\Mux7~369_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux4~5_combout\,
	datac => \Mux7~362_combout\,
	datad => \Mux7~369_combout\,
	combout => \Mux7~660_combout\);

-- Location: LCCOMB_X26_Y19_N0
\Mux7~370\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~370_combout\ = (y_cnt(1) & ((\Mux7~359_combout\) # ((!\Mux2~2_combout\ & \Mux7~660_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => y_cnt(1),
	datac => \Mux7~359_combout\,
	datad => \Mux7~660_combout\,
	combout => \Mux7~370_combout\);

-- Location: LCCOMB_X26_Y18_N30
\Mux7~335\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~335_combout\ = (x_cnt(1)) # ((!x_cnt(2) & !\Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datac => x_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~335_combout\);

-- Location: LCCOMB_X26_Y18_N26
\Mux7~333\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~333_combout\ = (x_cnt(1) & ((\Mux2~2_combout\ & ((\Mux5~3_combout\))) # (!\Mux2~2_combout\ & (!x_cnt(2) & !\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux2~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~333_combout\);

-- Location: LCCOMB_X26_Y18_N0
\Mux7~332\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~332_combout\ = (x_cnt(2) & (!x_cnt(1) & (!\Mux2~2_combout\ & !\Mux5~3_combout\))) # (!x_cnt(2) & (x_cnt(1) & (\Mux2~2_combout\ $ (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux2~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~332_combout\);

-- Location: LCCOMB_X26_Y18_N28
\Mux7~334\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~334_combout\ = (x_cnt(0) & ((\Mux6~8_combout\) # ((\Mux7~332_combout\)))) # (!x_cnt(0) & (!\Mux6~8_combout\ & (\Mux7~333_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux6~8_combout\,
	datac => \Mux7~333_combout\,
	datad => \Mux7~332_combout\,
	combout => \Mux7~334_combout\);

-- Location: LCCOMB_X26_Y18_N8
\Mux7~336\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~336_combout\ = (\Mux6~8_combout\ & ((\Mux7~334_combout\ & (!\Mux7~335_combout\)) # (!\Mux7~334_combout\ & ((\Mux7~83_combout\))))) # (!\Mux6~8_combout\ & (((\Mux7~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~335_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux7~83_combout\,
	datad => \Mux7~334_combout\,
	combout => \Mux7~336_combout\);

-- Location: LCCOMB_X26_Y18_N6
\Mux7~658\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~658_combout\ = (x_cnt(2) & (!x_cnt(1) & (\Mux6~8_combout\ & !\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~658_combout\);

-- Location: LCCOMB_X29_Y18_N24
\Mux7~659\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~659_combout\ = (!x_cnt(2) & (x_cnt(1) & (!\Mux6~8_combout\ & !\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~659_combout\);

-- Location: LCCOMB_X23_Y18_N8
\Mux7~349\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~349_combout\ = (!y_cnt(7) & (\Mux7~76_combout\ & (\Mux5~2_combout\ & y_cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(7),
	datab => \Mux7~76_combout\,
	datac => \Mux5~2_combout\,
	datad => y_cnt(6),
	combout => \Mux7~349_combout\);

-- Location: LCCOMB_X26_Y18_N10
\Mux7~350\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~350_combout\ = (x_cnt(1) & ((\Mux5~3_combout\ & (!x_cnt(2))) # (!\Mux5~3_combout\ & ((\Mux6~8_combout\))))) # (!x_cnt(1) & (x_cnt(2) & ((!\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~350_combout\);

-- Location: LCCOMB_X26_Y18_N12
\Mux7~351\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~351_combout\ = (x_cnt(0) & ((\Mux2~2_combout\) # ((\Mux7~349_combout\)))) # (!x_cnt(0) & (!\Mux2~2_combout\ & ((\Mux7~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux2~2_combout\,
	datac => \Mux7~349_combout\,
	datad => \Mux7~350_combout\,
	combout => \Mux7~351_combout\);

-- Location: LCCOMB_X26_Y18_N22
\Mux7~352\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~352_combout\ = (\Mux2~2_combout\ & ((\Mux7~351_combout\ & ((\Mux7~659_combout\))) # (!\Mux7~351_combout\ & (\Mux7~658_combout\)))) # (!\Mux2~2_combout\ & (((\Mux7~351_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~658_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux7~659_combout\,
	datad => \Mux7~351_combout\,
	combout => \Mux7~352_combout\);

-- Location: LCCOMB_X27_Y18_N18
\Mux7~342\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~342_combout\ = (x_cnt(1) & (!x_cnt(2) & (!x_cnt(0) & \Mux2~2_combout\))) # (!x_cnt(1) & (x_cnt(0) & ((x_cnt(2)) # (!\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => x_cnt(0),
	datad => \Mux2~2_combout\,
	combout => \Mux7~342_combout\);

-- Location: LCCOMB_X27_Y18_N14
\Mux7~346\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~346_combout\ = (x_cnt(1) & (!x_cnt(0) & ((x_cnt(2)) # (!\Mux2~2_combout\)))) # (!x_cnt(1) & (((x_cnt(0) & \Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => x_cnt(0),
	datad => \Mux2~2_combout\,
	combout => \Mux7~346_combout\);

-- Location: LCCOMB_X27_Y18_N4
\Mux7~343\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~343_combout\ = (x_cnt(2) & (!x_cnt(1) & (x_cnt(0) $ (\Mux2~2_combout\)))) # (!x_cnt(2) & (x_cnt(1) & (x_cnt(0) $ (!\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(0),
	datac => x_cnt(1),
	datad => \Mux2~2_combout\,
	combout => \Mux7~343_combout\);

-- Location: LCCOMB_X27_Y18_N2
\Mux7~344\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~344_combout\ = (\Mux2~2_combout\ & ((x_cnt(2) & (x_cnt(0) & !x_cnt(1))) # (!x_cnt(2) & (!x_cnt(0) & x_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(0),
	datac => x_cnt(1),
	datad => \Mux2~2_combout\,
	combout => \Mux7~344_combout\);

-- Location: LCCOMB_X27_Y18_N28
\Mux7~345\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~345_combout\ = (\Mux5~3_combout\ & ((\Mux6~8_combout\) # ((\Mux7~343_combout\)))) # (!\Mux5~3_combout\ & (!\Mux6~8_combout\ & ((\Mux7~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux7~343_combout\,
	datad => \Mux7~344_combout\,
	combout => \Mux7~345_combout\);

-- Location: LCCOMB_X27_Y18_N12
\Mux7~347\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~347_combout\ = (\Mux6~8_combout\ & ((\Mux7~345_combout\ & ((\Mux7~346_combout\))) # (!\Mux7~345_combout\ & (\Mux7~342_combout\)))) # (!\Mux6~8_combout\ & (((\Mux7~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux7~342_combout\,
	datac => \Mux7~346_combout\,
	datad => \Mux7~345_combout\,
	combout => \Mux7~347_combout\);

-- Location: LCCOMB_X26_Y18_N14
\Mux7~337\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~337_combout\ = (x_cnt(0) & (\Mux6~8_combout\ $ (((!x_cnt(2) & \Mux2~2_combout\))))) # (!x_cnt(0) & (x_cnt(2) & ((!\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(2),
	datac => \Mux6~8_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux7~337_combout\);

-- Location: LCCOMB_X26_Y18_N24
\Mux7~338\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~338_combout\ = (\Mux6~8_combout\ & (\Mux2~2_combout\ $ (((!x_cnt(2)) # (!x_cnt(0)))))) # (!\Mux6~8_combout\ & (x_cnt(2) & ((x_cnt(0)) # (\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(2),
	datac => \Mux6~8_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux7~338_combout\);

-- Location: LCCOMB_X26_Y18_N4
\Mux7~340\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~340_combout\ = (x_cnt(1) & (!\Mux7~337_combout\ & (x_cnt(0) $ (\Mux7~338_combout\)))) # (!x_cnt(1) & (((\Mux7~337_combout\ & !\Mux7~338_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(1),
	datac => \Mux7~337_combout\,
	datad => \Mux7~338_combout\,
	combout => \Mux7~340_combout\);

-- Location: LCCOMB_X26_Y18_N18
\Mux7~339\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~339_combout\ = (x_cnt(1) & (!x_cnt(0) & (!\Mux7~337_combout\ & !\Mux7~338_combout\))) # (!x_cnt(1) & (\Mux7~338_combout\ & (x_cnt(0) $ (\Mux7~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(1),
	datac => \Mux7~337_combout\,
	datad => \Mux7~338_combout\,
	combout => \Mux7~339_combout\);

-- Location: LCCOMB_X26_Y18_N2
\Mux7~341\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~341_combout\ = (\Mux5~3_combout\ & (\Mux7~340_combout\ & !\Mux7~339_combout\)) # (!\Mux5~3_combout\ & (!\Mux7~340_combout\ & \Mux7~339_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~3_combout\,
	datac => \Mux7~340_combout\,
	datad => \Mux7~339_combout\,
	combout => \Mux7~341_combout\);

-- Location: LCCOMB_X26_Y18_N20
\Mux7~348\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~348_combout\ = (\Mux4~5_combout\ & (\Mux3~3_combout\)) # (!\Mux4~5_combout\ & ((\Mux3~3_combout\ & ((\Mux7~341_combout\))) # (!\Mux3~3_combout\ & (\Mux7~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux7~347_combout\,
	datad => \Mux7~341_combout\,
	combout => \Mux7~348_combout\);

-- Location: LCCOMB_X26_Y18_N16
\Mux7~353\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~353_combout\ = (\Mux4~5_combout\ & ((\Mux7~348_combout\ & ((\Mux7~352_combout\))) # (!\Mux7~348_combout\ & (\Mux7~336_combout\)))) # (!\Mux4~5_combout\ & (((\Mux7~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux7~336_combout\,
	datac => \Mux7~352_combout\,
	datad => \Mux7~348_combout\,
	combout => \Mux7~353_combout\);

-- Location: LCCOMB_X21_Y18_N28
\Mux7~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~45_combout\ = (!y_cnt(4) & !y_cnt(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => y_cnt(4),
	datad => y_cnt(7),
	combout => \Mux7~45_combout\);

-- Location: LCCOMB_X21_Y18_N2
\Mux7~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~42_combout\ = (!x_cnt(3) & (\Mux7~45_combout\ & (!x_cnt(6) & !x_cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(3),
	datab => \Mux7~45_combout\,
	datac => x_cnt(6),
	datad => x_cnt(4),
	combout => \Mux7~42_combout\);

-- Location: LCCOMB_X21_Y18_N0
\Mux7~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~39_combout\ = (x_cnt(5) & (y_cnt(5) & (y_cnt(6) & \Mux7~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(5),
	datab => y_cnt(5),
	datac => y_cnt(6),
	datad => \Mux7~42_combout\,
	combout => \Mux7~39_combout\);

-- Location: LCCOMB_X21_Y18_N26
\Mux7~666\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~666_combout\ = (x_cnt(2) & (\Mux7~39_combout\ & (!x_cnt(0) & !x_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux7~39_combout\,
	datac => x_cnt(0),
	datad => x_cnt(1),
	combout => \Mux7~666_combout\);

-- Location: LCCOMB_X24_Y18_N14
\Mux7~320\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~320_combout\ = (x_cnt(1) & (!x_cnt(2) & (x_cnt(0) $ (!\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(0),
	datac => x_cnt(2),
	datad => \Mux2~2_combout\,
	combout => \Mux7~320_combout\);

-- Location: LCCOMB_X24_Y18_N28
\Mux7~322\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~322_combout\ = (\Mux5~3_combout\ & (((\Mux7~320_combout\ & !\Mux4~5_combout\)))) # (!\Mux5~3_combout\ & (\Mux7~321_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~321_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux7~320_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~322_combout\);

-- Location: LCCOMB_X24_Y18_N22
\Mux7~323\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~323_combout\ = (\Mux3~3_combout\ & (\Mux7~322_combout\ & ((\Mux2~2_combout\) # (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux7~322_combout\,
	combout => \Mux7~323_combout\);

-- Location: LCCOMB_X24_Y18_N20
\Mux7~327\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~327_combout\ = (x_cnt(2)) # ((\Mux5~3_combout\ & \Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~327_combout\);

-- Location: LCCOMB_X24_Y18_N26
\Mux7~328\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~328_combout\ = (x_cnt(1) & (!\Mux7~327_combout\ & (\Mux5~3_combout\ $ (\Mux2~2_combout\)))) # (!x_cnt(1) & (!\Mux5~3_combout\ & (!\Mux2~2_combout\ & \Mux7~327_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => \Mux5~3_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux7~327_combout\,
	combout => \Mux7~328_combout\);

-- Location: LCCOMB_X24_Y18_N2
\Mux7~326\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~326_combout\ = (\Mux4~5_combout\ & ((\Mux5~3_combout\) # (!\Mux7~255_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux4~5_combout\,
	datad => \Mux7~255_combout\,
	combout => \Mux7~326_combout\);

-- Location: LCCOMB_X24_Y18_N4
\Mux7~329\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~329_combout\ = (\Mux5~3_combout\ & (\Mux7~328_combout\ & (x_cnt(0) $ (!\Mux7~326_combout\)))) # (!\Mux5~3_combout\ & ((x_cnt(0) & (\Mux7~328_combout\)) # (!x_cnt(0) & ((!\Mux7~326_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => x_cnt(0),
	datac => \Mux7~328_combout\,
	datad => \Mux7~326_combout\,
	combout => \Mux7~329_combout\);

-- Location: LCCOMB_X23_Y18_N14
\Mux7~324\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~324_combout\ = (x_cnt(2) & (((x_cnt(0) & !\Mux3~3_combout\)))) # (!x_cnt(2) & (x_cnt(1) & ((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(2),
	datac => x_cnt(0),
	datad => \Mux3~3_combout\,
	combout => \Mux7~324_combout\);

-- Location: LCCOMB_X24_Y18_N12
\Mux7~325\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~325_combout\ = (\Mux2~2_combout\ & (\Mux4~5_combout\)) # (!\Mux2~2_combout\ & ((\Mux7~324_combout\) # ((\Mux4~5_combout\ & !x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux4~5_combout\,
	datac => x_cnt(0),
	datad => \Mux7~324_combout\,
	combout => \Mux7~325_combout\);

-- Location: LCCOMB_X24_Y18_N6
\Mux7~657\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~657_combout\ = (\Mux7~325_combout\) # ((y_cnt(6) & (!y_cnt(7) & \Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(6),
	datab => y_cnt(7),
	datac => \Mux5~2_combout\,
	datad => \Mux7~325_combout\,
	combout => \Mux7~657_combout\);

-- Location: LCCOMB_X24_Y18_N10
\Mux7~330\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~330_combout\ = (\Mux7~657_combout\ & ((\Mux6~8_combout\ & (\Mux7~323_combout\)) # (!\Mux6~8_combout\ & ((\Mux7~329_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~323_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux7~329_combout\,
	datad => \Mux7~657_combout\,
	combout => \Mux7~330_combout\);

-- Location: LCCOMB_X24_Y18_N8
\Mux7~331\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~331_combout\ = (y_cnt(1) & (y_cnt(0))) # (!y_cnt(1) & ((y_cnt(0) & (\Mux7~666_combout\)) # (!y_cnt(0) & ((\Mux7~330_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => y_cnt(0),
	datac => \Mux7~666_combout\,
	datad => \Mux7~330_combout\,
	combout => \Mux7~331_combout\);

-- Location: LCCOMB_X28_Y18_N24
\Mux7~315\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~315_combout\ = (x_cnt(0) & ((x_cnt(1) & (!x_cnt(2))) # (!x_cnt(1) & ((!\Mux6~8_combout\))))) # (!x_cnt(0) & (!\Mux6~8_combout\ & ((x_cnt(2)) # (x_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(0),
	datac => x_cnt(1),
	datad => \Mux6~8_combout\,
	combout => \Mux7~315_combout\);

-- Location: LCCOMB_X28_Y18_N14
\Mux7~314\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~314_combout\ = (!\Mux5~3_combout\ & ((x_cnt(1) & ((\Mux6~8_combout\) # (!x_cnt(0)))) # (!x_cnt(1) & (x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~314_combout\);

-- Location: LCCOMB_X28_Y18_N6
\Mux7~316\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~316_combout\ = (!\Mux4~5_combout\ & ((\Mux7~314_combout\) # ((\Mux5~3_combout\ & \Mux7~315_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux7~315_combout\,
	datac => \Mux7~314_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~316_combout\);

-- Location: LCCOMB_X29_Y18_N18
\Mux7~317\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~317_combout\ = (x_cnt(2) & (!x_cnt(0) & (!x_cnt(1) & \Mux6~8_combout\))) # (!x_cnt(2) & (x_cnt(0) & (x_cnt(1) & !\Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(0),
	datac => x_cnt(1),
	datad => \Mux6~8_combout\,
	combout => \Mux7~317_combout\);

-- Location: LCCOMB_X28_Y18_N0
\Mux7~318\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~318_combout\ = (\Mux7~316_combout\) # ((\Mux4~5_combout\ & (!\Mux5~3_combout\ & \Mux7~317_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux7~316_combout\,
	datad => \Mux7~317_combout\,
	combout => \Mux7~318_combout\);

-- Location: LCCOMB_X28_Y18_N26
\Mux7~298\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~298_combout\ = (\Mux6~8_combout\ & ((x_cnt(1)) # (\Mux5~3_combout\ $ (\Mux4~5_combout\)))) # (!\Mux6~8_combout\ & (x_cnt(1) & (\Mux5~3_combout\ & \Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~298_combout\);

-- Location: LCCOMB_X28_Y18_N28
\Mux7~297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~297_combout\ = (\Mux5~3_combout\ & (\Mux4~5_combout\ $ (((\Mux6~8_combout\) # (x_cnt(1)))))) # (!\Mux5~3_combout\ & (!\Mux6~8_combout\ & (x_cnt(1) & \Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~297_combout\);

-- Location: LCCOMB_X28_Y18_N30
\Mux7~300\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~300_combout\ = (x_cnt(2) & (!x_cnt(1) & (\Mux7~298_combout\))) # (!x_cnt(2) & (\Mux7~297_combout\ $ (((x_cnt(1)) # (\Mux7~298_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux7~298_combout\,
	datad => \Mux7~297_combout\,
	combout => \Mux7~300_combout\);

-- Location: LCCOMB_X28_Y18_N16
\Mux7~299\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~299_combout\ = (\Mux7~297_combout\ & ((x_cnt(1) $ (!\Mux7~298_combout\)))) # (!\Mux7~297_combout\ & ((x_cnt(2) & (!x_cnt(1))) # (!x_cnt(2) & ((\Mux7~298_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux7~298_combout\,
	datad => \Mux7~297_combout\,
	combout => \Mux7~299_combout\);

-- Location: LCCOMB_X28_Y18_N8
\Mux7~301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~301_combout\ = \Mux7~300_combout\ $ (((!x_cnt(0) & \Mux7~299_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(0),
	datac => \Mux7~300_combout\,
	datad => \Mux7~299_combout\,
	combout => \Mux7~301_combout\);

-- Location: LCCOMB_X27_Y18_N10
\Mux7~306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~306_combout\ = (x_cnt(0) & (x_cnt(1) & \Mux6~8_combout\)) # (!x_cnt(0) & (!x_cnt(1) & !\Mux6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datac => x_cnt(1),
	datad => \Mux6~8_combout\,
	combout => \Mux7~306_combout\);

-- Location: LCCOMB_X27_Y18_N26
\Mux7~302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~302_combout\ = (x_cnt(2) & (!x_cnt(1))) # (!x_cnt(2) & ((x_cnt(1) & ((!\Mux6~8_combout\) # (!x_cnt(0)))) # (!x_cnt(1) & (x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => x_cnt(0),
	datad => \Mux6~8_combout\,
	combout => \Mux7~302_combout\);

-- Location: LCCOMB_X27_Y18_N22
\Mux7~304\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~304_combout\ = (x_cnt(2) & (!x_cnt(0) & ((\Mux6~8_combout\) # (!x_cnt(1))))) # (!x_cnt(2) & (x_cnt(0) & ((x_cnt(1)) # (!\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => x_cnt(0),
	datad => \Mux6~8_combout\,
	combout => \Mux7~304_combout\);

-- Location: LCCOMB_X27_Y18_N24
\Mux7~303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~303_combout\ = (x_cnt(2) & (x_cnt(0) $ (((x_cnt(1)) # (\Mux6~8_combout\))))) # (!x_cnt(2) & (((x_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(0),
	datac => x_cnt(1),
	datad => \Mux6~8_combout\,
	combout => \Mux7~303_combout\);

-- Location: LCCOMB_X27_Y18_N20
\Mux7~305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~305_combout\ = (\Mux5~3_combout\ & (((\Mux4~5_combout\) # (\Mux7~303_combout\)))) # (!\Mux5~3_combout\ & (\Mux7~304_combout\ & (!\Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~304_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux7~303_combout\,
	combout => \Mux7~305_combout\);

-- Location: LCCOMB_X27_Y18_N16
\Mux7~307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~307_combout\ = (\Mux4~5_combout\ & ((\Mux7~305_combout\ & (!\Mux7~306_combout\)) # (!\Mux7~305_combout\ & ((\Mux7~302_combout\))))) # (!\Mux4~5_combout\ & (((\Mux7~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~306_combout\,
	datab => \Mux7~302_combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux7~305_combout\,
	combout => \Mux7~307_combout\);

-- Location: LCCOMB_X28_Y18_N4
\Mux7~309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~309_combout\ = (\Mux6~8_combout\ & ((\Mux4~5_combout\ & (!x_cnt(0))) # (!\Mux4~5_combout\ & ((\Mux5~3_combout\))))) # (!\Mux6~8_combout\ & (\Mux4~5_combout\ & ((x_cnt(0)) # (!\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~309_combout\);

-- Location: LCCOMB_X28_Y18_N2
\Mux7~308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~308_combout\ = (\Mux6~8_combout\ & ((\Mux5~3_combout\ & ((\Mux4~5_combout\))) # (!\Mux5~3_combout\ & ((x_cnt(0)) # (!\Mux4~5_combout\))))) # (!\Mux6~8_combout\ & (((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => x_cnt(0),
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~308_combout\);

-- Location: LCCOMB_X28_Y18_N22
\Mux7~310\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~310_combout\ = (x_cnt(1) & (!x_cnt(0) & (\Mux7~309_combout\ & \Mux7~308_combout\))) # (!x_cnt(1) & ((\Mux7~309_combout\) # ((!x_cnt(0) & \Mux7~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(0),
	datac => \Mux7~309_combout\,
	datad => \Mux7~308_combout\,
	combout => \Mux7~310_combout\);

-- Location: LCCOMB_X28_Y18_N20
\Mux7~311\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~311_combout\ = (x_cnt(1) & ((\Mux7~308_combout\) # ((x_cnt(0) & \Mux7~309_combout\)))) # (!x_cnt(1) & (x_cnt(0) & (\Mux7~309_combout\ & \Mux7~308_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(0),
	datac => \Mux7~309_combout\,
	datad => \Mux7~308_combout\,
	combout => \Mux7~311_combout\);

-- Location: LCCOMB_X28_Y18_N10
\Mux7~312\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~312_combout\ = (x_cnt(2) & (\Mux7~310_combout\)) # (!x_cnt(2) & ((\Mux7~311_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datac => \Mux7~310_combout\,
	datad => \Mux7~311_combout\,
	combout => \Mux7~312_combout\);

-- Location: LCCOMB_X28_Y18_N12
\Mux7~313\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~313_combout\ = (\Mux2~2_combout\ & ((\Mux3~3_combout\) # ((\Mux7~307_combout\)))) # (!\Mux2~2_combout\ & (!\Mux3~3_combout\ & ((\Mux7~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux7~307_combout\,
	datad => \Mux7~312_combout\,
	combout => \Mux7~313_combout\);

-- Location: LCCOMB_X28_Y18_N18
\Mux7~319\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~319_combout\ = (\Mux3~3_combout\ & ((\Mux7~313_combout\ & (\Mux7~318_combout\)) # (!\Mux7~313_combout\ & ((\Mux7~301_combout\))))) # (!\Mux3~3_combout\ & (((\Mux7~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux7~318_combout\,
	datac => \Mux7~301_combout\,
	datad => \Mux7~313_combout\,
	combout => \Mux7~319_combout\);

-- Location: LCCOMB_X27_Y20_N20
\Mux7~354\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~354_combout\ = (y_cnt(1) & ((\Mux7~331_combout\ & (\Mux7~353_combout\)) # (!\Mux7~331_combout\ & ((\Mux7~319_combout\))))) # (!y_cnt(1) & (((\Mux7~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~353_combout\,
	datab => y_cnt(1),
	datac => \Mux7~331_combout\,
	datad => \Mux7~319_combout\,
	combout => \Mux7~354_combout\);

-- Location: LCCOMB_X27_Y20_N22
\Mux7~371\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~371_combout\ = (y_cnt(2) & ((y_cnt(3)) # ((\Mux7~354_combout\)))) # (!y_cnt(2) & (!y_cnt(3) & (\Mux7~370_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(2),
	datab => y_cnt(3),
	datac => \Mux7~370_combout\,
	datad => \Mux7~354_combout\,
	combout => \Mux7~371_combout\);

-- Location: LCCOMB_X23_Y22_N20
\Mux7~661\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~661_combout\ = (\Mux2~2_combout\ & (!x_cnt(2) & (!x_cnt(0) & x_cnt(1)))) # (!\Mux2~2_combout\ & (x_cnt(2) $ ((x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(0),
	datac => x_cnt(1),
	datad => \Mux2~2_combout\,
	combout => \Mux7~661_combout\);

-- Location: LCCOMB_X23_Y22_N2
\Mux7~378\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~378_combout\ = (\Mux7~661_combout\ & ((\Mux5~3_combout\ & (!\Mux2~2_combout\ & !x_cnt(1))) # (!\Mux5~3_combout\ & (\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux2~2_combout\,
	datac => x_cnt(1),
	datad => \Mux7~661_combout\,
	combout => \Mux7~378_combout\);

-- Location: LCCOMB_X23_Y22_N0
\Mux7~379\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~379_combout\ = (\Mux7~378_combout\ & (!\Mux6~8_combout\ & (\Mux5~3_combout\ $ (!\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux7~378_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux7~379_combout\);

-- Location: LCCOMB_X23_Y22_N18
\Mux7~376\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~376_combout\ = (x_cnt(2) & (!x_cnt(1) & (!\Mux5~3_combout\ & !\Mux3~3_combout\))) # (!x_cnt(2) & (x_cnt(1) & ((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux7~376_combout\);

-- Location: LCCOMB_X23_Y22_N24
\Mux7~377\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~377_combout\ = (\Mux6~8_combout\ & (\Mux2~2_combout\ & (x_cnt(0) & \Mux7~376_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux2~2_combout\,
	datac => x_cnt(0),
	datad => \Mux7~376_combout\,
	combout => \Mux7~377_combout\);

-- Location: LCCOMB_X23_Y22_N14
\Mux7~372\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~372_combout\ = (!\Mux2~2_combout\ & ((x_cnt(2) & (!x_cnt(0) & x_cnt(1))) # (!x_cnt(2) & (x_cnt(0) & !x_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(0),
	datac => x_cnt(1),
	datad => \Mux2~2_combout\,
	combout => \Mux7~372_combout\);

-- Location: LCCOMB_X23_Y22_N8
\Mux7~373\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~373_combout\ = (\Mux5~3_combout\ & (((\Mux7~372_combout\)))) # (!\Mux5~3_combout\ & (\Mux7~321_combout\ & ((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux7~321_combout\,
	datac => \Mux7~372_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux7~373_combout\);

-- Location: LCCOMB_X23_Y22_N10
\Mux7~374\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~374_combout\ = (\Mux6~8_combout\ & (\Mux4~5_combout\ & (\Mux5~3_combout\ $ (\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~374_combout\);

-- Location: LCCOMB_X23_Y22_N28
\Mux7~375\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~375_combout\ = (\Mux7~373_combout\ & \Mux7~374_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux7~373_combout\,
	datad => \Mux7~374_combout\,
	combout => \Mux7~375_combout\);

-- Location: LCCOMB_X23_Y22_N30
\Mux7~380\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~380_combout\ = (\Mux7~375_combout\) # ((!\Mux4~5_combout\ & ((\Mux7~379_combout\) # (\Mux7~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux7~379_combout\,
	datac => \Mux7~377_combout\,
	datad => \Mux7~375_combout\,
	combout => \Mux7~380_combout\);

-- Location: LCCOMB_X22_Y19_N8
\Mux7~423\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~423_combout\ = (x_cnt(1) & (x_cnt(2))) # (!x_cnt(1) & (!x_cnt(2) & x_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(1),
	datac => x_cnt(2),
	datad => x_cnt(0),
	combout => \Mux7~423_combout\);

-- Location: LCCOMB_X23_Y16_N18
\Mux7~424\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~424_combout\ = (x_cnt(1) & (!\Mux7~423_combout\ & (\Mux3~3_combout\ $ (!\Mux5~3_combout\)))) # (!x_cnt(1) & (!\Mux3~3_combout\ & (\Mux7~423_combout\ & !\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => \Mux3~3_combout\,
	datac => \Mux7~423_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~424_combout\);

-- Location: LCCOMB_X23_Y16_N12
\Mux7~425\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~425_combout\ = (\Mux7~424_combout\ & (\Mux7~422_combout\ & (\Mux3~3_combout\ $ (\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux7~424_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux7~422_combout\,
	combout => \Mux7~425_combout\);

-- Location: LCCOMB_X23_Y16_N24
\Mux7~429\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~429_combout\ = (x_cnt(2) & (!\Mux3~3_combout\ & ((!x_cnt(0)) # (!x_cnt(1))))) # (!x_cnt(2) & (\Mux3~3_combout\ & (x_cnt(1) $ (x_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(2),
	datac => x_cnt(0),
	datad => \Mux3~3_combout\,
	combout => \Mux7~429_combout\);

-- Location: LCCOMB_X23_Y16_N30
\Mux7~430\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~430_combout\ = (\Mux5~3_combout\ & (\Mux3~3_combout\ & (\Mux7~321_combout\))) # (!\Mux5~3_combout\ & (((\Mux7~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux7~321_combout\,
	datad => \Mux7~429_combout\,
	combout => \Mux7~430_combout\);

-- Location: LCCOMB_X23_Y16_N8
\Mux7~431\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~431_combout\ = (\Mux2~2_combout\ & (\Mux7~430_combout\ & !\Mux4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~2_combout\,
	datac => \Mux7~430_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~431_combout\);

-- Location: LCCOMB_X23_Y16_N26
\Mux7~426\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~426_combout\ = (\Mux5~3_combout\ & (x_cnt(2) $ (x_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_cnt(2),
	datac => x_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~426_combout\);

-- Location: LCCOMB_X23_Y16_N16
\Mux7~427\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~427_combout\ = (\Mux2~2_combout\ & (((\Mux7~82_combout\ & \Mux7~355_combout\)))) # (!\Mux2~2_combout\ & (\Mux7~426_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~426_combout\,
	datab => \Mux7~82_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux7~355_combout\,
	combout => \Mux7~427_combout\);

-- Location: LCCOMB_X23_Y16_N6
\Mux7~428\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~428_combout\ = (\Mux4~5_combout\ & (\Mux7~427_combout\ & (\Mux3~3_combout\ $ (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux4~5_combout\,
	datad => \Mux7~427_combout\,
	combout => \Mux7~428_combout\);

-- Location: LCCOMB_X23_Y16_N2
\Mux7~432\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~432_combout\ = (\Mux7~425_combout\) # ((\Mux6~8_combout\ & ((\Mux7~431_combout\) # (\Mux7~428_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~425_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux7~431_combout\,
	datad => \Mux7~428_combout\,
	combout => \Mux7~432_combout\);

-- Location: LCCOMB_X26_Y22_N12
\Mux7~408\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~408_combout\ = (!\Mux2~2_combout\ & ((\Mux5~3_combout\ & (!x_cnt(2))) # (!\Mux5~3_combout\ & ((\Mux4~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux5~3_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~408_combout\);

-- Location: LCCOMB_X24_Y22_N8
\Mux7~404\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~404_combout\ = (x_cnt(2) & (((y_cnt(7)) # (!\Mux5~2_combout\)) # (!y_cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(6),
	datab => x_cnt(2),
	datac => y_cnt(7),
	datad => \Mux5~2_combout\,
	combout => \Mux7~404_combout\);

-- Location: LCCOMB_X26_Y22_N8
\Mux7~405\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~405_combout\ = (\Mux2~2_combout\ & (((\Mux5~3_combout\ & !\Mux4~5_combout\)) # (!x_cnt(2)))) # (!\Mux2~2_combout\ & ((\Mux5~3_combout\ $ (\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux2~2_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~405_combout\);

-- Location: LCCOMB_X23_Y22_N16
\Mux7~406\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~406_combout\ = (x_cnt(2) & ((\Mux2~2_combout\ & (\Mux5~3_combout\ & \Mux4~5_combout\)) # (!\Mux2~2_combout\ & (!\Mux5~3_combout\ & !\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux2~2_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~406_combout\);

-- Location: LCCOMB_X26_Y22_N2
\Mux7~407\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~407_combout\ = (x_cnt(1) & ((\Mux3~3_combout\) # ((\Mux7~405_combout\)))) # (!x_cnt(1) & (!\Mux3~3_combout\ & ((\Mux7~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => \Mux3~3_combout\,
	datac => \Mux7~405_combout\,
	datad => \Mux7~406_combout\,
	combout => \Mux7~407_combout\);

-- Location: LCCOMB_X26_Y22_N6
\Mux7~409\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~409_combout\ = (\Mux3~3_combout\ & ((\Mux7~407_combout\ & (\Mux7~408_combout\)) # (!\Mux7~407_combout\ & ((\Mux7~404_combout\))))) # (!\Mux3~3_combout\ & (((\Mux7~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~408_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux7~404_combout\,
	datad => \Mux7~407_combout\,
	combout => \Mux7~409_combout\);

-- Location: LCCOMB_X26_Y22_N30
\Mux7~413\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~413_combout\ = (\Mux2~2_combout\ & ((\Mux3~3_combout\ & ((!\Mux4~5_combout\))) # (!\Mux3~3_combout\ & (!\Mux5~3_combout\)))) # (!\Mux2~2_combout\ & (\Mux5~3_combout\ $ (\Mux3~3_combout\ $ (\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~413_combout\);

-- Location: LCCOMB_X26_Y22_N20
\Mux7~414\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~414_combout\ = (\Mux3~3_combout\ & ((\Mux5~3_combout\ & ((!\Mux4~5_combout\))) # (!\Mux5~3_combout\ & (!\Mux2~2_combout\ & \Mux4~5_combout\)))) # (!\Mux3~3_combout\ & (\Mux2~2_combout\ & ((\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~414_combout\);

-- Location: LCCOMB_X26_Y22_N26
\Mux7~415\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~415_combout\ = (x_cnt(2) & (\Mux7~414_combout\ & (x_cnt(1) $ (!\Mux7~413_combout\)))) # (!x_cnt(2) & (x_cnt(1) & (\Mux7~413_combout\ & !\Mux7~414_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux7~413_combout\,
	datad => \Mux7~414_combout\,
	combout => \Mux7~415_combout\);

-- Location: LCCOMB_X26_Y22_N14
\Mux7~411\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~411_combout\ = (\Mux2~2_combout\ & ((\Mux5~3_combout\ $ (\Mux4~5_combout\)))) # (!\Mux2~2_combout\ & (!\Mux3~3_combout\ & (\Mux5~3_combout\ & \Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~411_combout\);

-- Location: LCCOMB_X26_Y22_N24
\Mux7~410\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~410_combout\ = (\Mux2~2_combout\ & (!\Mux4~5_combout\ & ((\Mux3~3_combout\) # (!\Mux5~3_combout\)))) # (!\Mux2~2_combout\ & (\Mux3~3_combout\ $ (\Mux5~3_combout\ $ (\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~410_combout\);

-- Location: LCCOMB_X26_Y22_N16
\Mux7~412\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~412_combout\ = (x_cnt(2) & (!x_cnt(1) & (!\Mux7~411_combout\ & \Mux7~410_combout\))) # (!x_cnt(2) & (\Mux7~411_combout\ & (x_cnt(1) $ (\Mux7~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux7~411_combout\,
	datad => \Mux7~410_combout\,
	combout => \Mux7~412_combout\);

-- Location: LCCOMB_X26_Y22_N4
\Mux7~416\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~416_combout\ = (x_cnt(0) & ((\Mux6~8_combout\) # ((\Mux7~412_combout\)))) # (!x_cnt(0) & (!\Mux6~8_combout\ & (\Mux7~415_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => \Mux6~8_combout\,
	datac => \Mux7~415_combout\,
	datad => \Mux7~412_combout\,
	combout => \Mux7~416_combout\);

-- Location: LCCOMB_X26_Y22_N18
\Mux7~662\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~662_combout\ = (\Mux3~3_combout\ & (!x_cnt(2) & (x_cnt(1) & !\Mux4~5_combout\))) # (!\Mux3~3_combout\ & (((\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => x_cnt(1),
	datac => \Mux3~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux7~662_combout\);

-- Location: LCCOMB_X26_Y22_N22
\Mux7~417\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~417_combout\ = (\Mux5~3_combout\ & (\Mux2~2_combout\ $ (((!x_cnt(2) & !\Mux7~662_combout\))))) # (!\Mux5~3_combout\ & ((\Mux2~2_combout\ & (!x_cnt(2))) # (!\Mux2~2_combout\ & ((\Mux7~662_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux5~3_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux7~662_combout\,
	combout => \Mux7~417_combout\);

-- Location: LCCOMB_X26_Y22_N0
\Mux7~418\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~418_combout\ = (\Mux5~3_combout\ & ((\Mux2~2_combout\ & ((\Mux7~662_combout\))) # (!\Mux2~2_combout\ & (x_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux5~3_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux7~662_combout\,
	combout => \Mux7~418_combout\);

-- Location: LCCOMB_X26_Y22_N10
\Mux7~419\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~419_combout\ = (\Mux7~417_combout\ & (((\Mux3~3_combout\ & \Mux7~418_combout\)))) # (!\Mux7~417_combout\ & (!x_cnt(1) & (\Mux3~3_combout\ $ (!\Mux7~418_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => \Mux3~3_combout\,
	datac => \Mux7~417_combout\,
	datad => \Mux7~418_combout\,
	combout => \Mux7~419_combout\);

-- Location: LCCOMB_X26_Y22_N28
\Mux7~420\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~420_combout\ = (\Mux6~8_combout\ & ((\Mux7~416_combout\ & ((\Mux7~419_combout\))) # (!\Mux7~416_combout\ & (\Mux7~409_combout\)))) # (!\Mux6~8_combout\ & (((\Mux7~416_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~409_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux7~416_combout\,
	datad => \Mux7~419_combout\,
	combout => \Mux7~420_combout\);

-- Location: LCCOMB_X24_Y21_N0
\Mux7~400\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~400_combout\ = (x_cnt(1) & (\Mux6~8_combout\ & (x_cnt(2) $ (\Mux5~3_combout\)))) # (!x_cnt(1) & (x_cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(2),
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~400_combout\);

-- Location: LCCOMB_X26_Y21_N28
\Mux7~399\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~399_combout\ = (!\Mux5~3_combout\ & ((x_cnt(1) & (!x_cnt(2) & \Mux6~8_combout\)) # (!x_cnt(1) & (x_cnt(2) & !\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(2),
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~399_combout\);

-- Location: LCCOMB_X26_Y21_N22
\Mux7~401\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~401_combout\ = (\Mux3~3_combout\ & (x_cnt(0))) # (!\Mux3~3_combout\ & ((x_cnt(0) & ((\Mux7~399_combout\))) # (!x_cnt(0) & (\Mux7~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => x_cnt(0),
	datac => \Mux7~400_combout\,
	datad => \Mux7~399_combout\,
	combout => \Mux7~401_combout\);

-- Location: LCCOMB_X26_Y21_N16
\Mux7~402\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~402_combout\ = (\Mux3~3_combout\ & ((\Mux7~401_combout\ & ((\Mux7~659_combout\))) # (!\Mux7~401_combout\ & (\Mux7~658_combout\)))) # (!\Mux3~3_combout\ & (((\Mux7~401_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux7~658_combout\,
	datac => \Mux7~401_combout\,
	datad => \Mux7~659_combout\,
	combout => \Mux7~402_combout\);

-- Location: LCCOMB_X26_Y21_N12
\Mux7~385\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~385_combout\ = (\Mux3~3_combout\ & ((x_cnt(1) & ((\Mux5~3_combout\))) # (!x_cnt(1) & (x_cnt(0))))) # (!\Mux3~3_combout\ & (((x_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => x_cnt(0),
	datac => x_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~385_combout\);

-- Location: LCCOMB_X26_Y21_N0
\Mux7~381\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~381_combout\ = (\Mux3~3_combout\ & (x_cnt(1) $ (((!x_cnt(0) & \Mux5~3_combout\))))) # (!\Mux3~3_combout\ & ((x_cnt(0)) # ((x_cnt(1) & \Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => x_cnt(0),
	datac => x_cnt(1),
	datad => \Mux5~3_combout\,
	combout => \Mux7~381_combout\);

-- Location: LCCOMB_X26_Y21_N2
\Mux7~382\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~382_combout\ = (x_cnt(0) & (x_cnt(1) $ (((\Mux3~3_combout\ & !\Mux5~3_combout\))))) # (!x_cnt(0) & (x_cnt(1) & (\Mux3~3_combout\ $ (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(0),
	datac => \Mux3~3_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~382_combout\);

-- Location: LCCOMB_X26_Y21_N20
\Mux7~383\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~383_combout\ = (x_cnt(0) & (x_cnt(1) $ (((\Mux3~3_combout\ & \Mux5~3_combout\))))) # (!x_cnt(0) & (x_cnt(1) & ((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(0),
	datac => \Mux3~3_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~383_combout\);

-- Location: LCCOMB_X26_Y21_N18
\Mux7~384\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~384_combout\ = (x_cnt(2) & (((\Mux6~8_combout\)))) # (!x_cnt(2) & ((\Mux6~8_combout\ & (\Mux7~382_combout\)) # (!\Mux6~8_combout\ & ((\Mux7~383_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datab => \Mux7~382_combout\,
	datac => \Mux6~8_combout\,
	datad => \Mux7~383_combout\,
	combout => \Mux7~384_combout\);

-- Location: LCCOMB_X26_Y21_N26
\Mux7~386\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~386_combout\ = (x_cnt(2) & ((\Mux7~384_combout\ & (!\Mux7~385_combout\)) # (!\Mux7~384_combout\ & ((!\Mux7~381_combout\))))) # (!x_cnt(2) & (((\Mux7~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~385_combout\,
	datab => \Mux7~381_combout\,
	datac => x_cnt(2),
	datad => \Mux7~384_combout\,
	combout => \Mux7~386_combout\);

-- Location: LCCOMB_X26_Y21_N14
\Mux7~388\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~388_combout\ = (x_cnt(0) & (\Mux5~3_combout\ & ((x_cnt(1)) # (\Mux6~8_combout\)))) # (!x_cnt(0) & (\Mux6~8_combout\ $ (((!x_cnt(1) & \Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(0),
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~388_combout\);

-- Location: LCCOMB_X26_Y21_N24
\Mux7~387\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~387_combout\ = (x_cnt(0) & ((x_cnt(1)) # ((\Mux5~3_combout\) # (!\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(0),
	datac => \Mux6~8_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux7~387_combout\);

-- Location: LCCOMB_X26_Y21_N8
\Mux7~389\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~389_combout\ = (\Mux7~388_combout\ & (x_cnt(1) $ (((\Mux7~387_combout\))))) # (!\Mux7~388_combout\ & ((\Mux3~3_combout\) # ((!x_cnt(1) & \Mux7~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => \Mux3~3_combout\,
	datac => \Mux7~388_combout\,
	datad => \Mux7~387_combout\,
	combout => \Mux7~389_combout\);

-- Location: LCCOMB_X26_Y21_N10
\Mux7~390\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~390_combout\ = (\Mux7~388_combout\ & (\Mux7~387_combout\ & ((x_cnt(1)) # (!\Mux3~3_combout\)))) # (!\Mux7~388_combout\ & (x_cnt(1) $ (((\Mux3~3_combout\ & \Mux7~387_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => \Mux3~3_combout\,
	datac => \Mux7~388_combout\,
	datad => \Mux7~387_combout\,
	combout => \Mux7~390_combout\);

-- Location: LCCOMB_X26_Y21_N4
\Mux7~391\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~391_combout\ = \Mux7~390_combout\ $ (((x_cnt(2) & !\Mux7~389_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(2),
	datac => \Mux7~389_combout\,
	datad => \Mux7~390_combout\,
	combout => \Mux7~391_combout\);

-- Location: LCCOMB_X24_Y21_N20
\Mux7~396\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~396_combout\ = (x_cnt(1) & ((x_cnt(0) & (!x_cnt(2))) # (!x_cnt(0) & ((\Mux5~3_combout\))))) # (!x_cnt(1) & ((\Mux5~3_combout\ & (x_cnt(0))) # (!\Mux5~3_combout\ & ((x_cnt(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(1),
	datac => x_cnt(2),
	datad => \Mux5~3_combout\,
	combout => \Mux7~396_combout\);

-- Location: LCCOMB_X24_Y21_N8
\Mux7~392\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~392_combout\ = (\Mux5~3_combout\ & (!x_cnt(0) & (!x_cnt(1) & x_cnt(2)))) # (!\Mux5~3_combout\ & (x_cnt(0) $ ((x_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(0),
	datab => x_cnt(1),
	datac => x_cnt(2),
	datad => \Mux5~3_combout\,
	combout => \Mux7~392_combout\);

-- Location: LCCOMB_X24_Y21_N14
\Mux7~393\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~393_combout\ = (x_cnt(1) & ((x_cnt(0) & (!x_cnt(2))) # (!x_cnt(0) & ((!\Mux5~3_combout\))))) # (!x_cnt(1) & (x_cnt(2) & ((x_cnt(0)) # (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(0),
	datac => x_cnt(2),
	datad => \Mux5~3_combout\,
	combout => \Mux7~393_combout\);

-- Location: LCCOMB_X24_Y21_N12
\Mux7~394\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~394_combout\ = (\Mux5~3_combout\ & ((x_cnt(1) & (x_cnt(0) & !x_cnt(2))) # (!x_cnt(1) & (!x_cnt(0) & x_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_cnt(1),
	datab => x_cnt(0),
	datac => x_cnt(2),
	datad => \Mux5~3_combout\,
	combout => \Mux7~394_combout\);

-- Location: LCCOMB_X24_Y21_N2
\Mux7~395\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~395_combout\ = (\Mux3~3_combout\ & (\Mux6~8_combout\)) # (!\Mux3~3_combout\ & ((\Mux6~8_combout\ & (\Mux7~393_combout\)) # (!\Mux6~8_combout\ & ((\Mux7~394_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux6~8_combout\,
	datac => \Mux7~393_combout\,
	datad => \Mux7~394_combout\,
	combout => \Mux7~395_combout\);

-- Location: LCCOMB_X24_Y21_N6
\Mux7~397\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~397_combout\ = (\Mux3~3_combout\ & ((\Mux7~395_combout\ & (\Mux7~396_combout\)) # (!\Mux7~395_combout\ & ((\Mux7~392_combout\))))) # (!\Mux3~3_combout\ & (((\Mux7~395_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux7~396_combout\,
	datac => \Mux7~392_combout\,
	datad => \Mux7~395_combout\,
	combout => \Mux7~397_combout\);

-- Location: LCCOMB_X26_Y21_N6
\Mux7~398\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~398_combout\ = (\Mux2~2_combout\ & ((\Mux4~5_combout\) # ((\Mux7~391_combout\)))) # (!\Mux2~2_combout\ & (!\Mux4~5_combout\ & ((\Mux7~397_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux4~5_combout\,
	datac => \Mux7~391_combout\,
	datad => \Mux7~397_combout\,
	combout => \Mux7~398_combout\);

-- Location: LCCOMB_X26_Y21_N30
\Mux7~403\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~403_combout\ = (\Mux4~5_combout\ & ((\Mux7~398_combout\ & (\Mux7~402_combout\)) # (!\Mux7~398_combout\ & ((\Mux7~386_combout\))))) # (!\Mux4~5_combout\ & (((\Mux7~398_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux7~402_combout\,
	datac => \Mux7~386_combout\,
	datad => \Mux7~398_combout\,
	combout => \Mux7~403_combout\);

-- Location: LCCOMB_X27_Y20_N16
\Mux7~421\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~421_combout\ = (y_cnt(1) & (y_cnt(0))) # (!y_cnt(1) & ((y_cnt(0) & ((\Mux7~403_combout\))) # (!y_cnt(0) & (\Mux7~420_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => y_cnt(0),
	datac => \Mux7~420_combout\,
	datad => \Mux7~403_combout\,
	combout => \Mux7~421_combout\);

-- Location: LCCOMB_X27_Y20_N6
\Mux7~433\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~433_combout\ = (y_cnt(1) & ((\Mux7~421_combout\ & ((\Mux7~432_combout\))) # (!\Mux7~421_combout\ & (\Mux7~380_combout\)))) # (!y_cnt(1) & (((\Mux7~421_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_cnt(1),
	datab => \Mux7~380_combout\,
	datac => \Mux7~432_combout\,
	datad => \Mux7~421_combout\,
	combout => \Mux7~433_combout\);

-- Location: LCCOMB_X27_Y20_N28
\Mux7~434\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~434_combout\ = (y_cnt(3) & ((\Mux7~371_combout\ & ((\Mux7~433_combout\))) # (!\Mux7~371_combout\ & (\Mux7~296_combout\)))) # (!y_cnt(3) & (((\Mux7~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~296_combout\,
	datab => y_cnt(3),
	datac => \Mux7~371_combout\,
	datad => \Mux7~433_combout\,
	combout => \Mux7~434_combout\);

-- Location: LCCOMB_X27_Y20_N0
\spi_data[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[4]~12_combout\ = (\state.STATE_SCAN_DRAW~q\ & ((\Mux0~2_combout\ & ((\Mux7~434_combout\))) # (!\Mux0~2_combout\ & (\Mux7~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SCAN_DRAW~q\,
	datab => \Mux0~2_combout\,
	datac => \Mux7~250_combout\,
	datad => \Mux7~434_combout\,
	combout => \spi_data[4]~12_combout\);

-- Location: LCCOMB_X27_Y20_N18
\spi_data[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[4]~13_combout\ = (\spi_data[4]~12_combout\ & ((!\Equal0~0_combout\) # (!\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \spi_data[4]~12_combout\,
	combout => \spi_data[4]~13_combout\);

-- Location: LCCOMB_X28_Y20_N22
\Selector95~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~4_combout\ = (\spi_data[4]~8_combout\ & (((\state.STATE_SCAN_DRAW~q\)))) # (!\spi_data[4]~8_combout\ & ((\spi_data[4]~13_combout\ & ((\state.STATE_SCAN_DRAW~q\))) # (!\spi_data[4]~13_combout\ & (\Selector95~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector95~3_combout\,
	datab => \state.STATE_SCAN_DRAW~q\,
	datac => \spi_data[4]~8_combout\,
	datad => \spi_data[4]~13_combout\,
	combout => \Selector95~4_combout\);

-- Location: LCCOMB_X27_Y20_N30
\spi_data[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[4]~9_combout\ = (\spi_data[4]~8_combout\) # ((\spi_data[4]~13_combout\) # ((!\state.STATE_SCAN_DRAW~q\ & \state.STATE_SET_AXIS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SCAN_DRAW~q\,
	datab => \state.STATE_SET_AXIS~q\,
	datac => \spi_data[4]~8_combout\,
	datad => \spi_data[4]~13_combout\,
	combout => \spi_data[4]~9_combout\);

-- Location: LCCOMB_X28_Y20_N28
\Selector95~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector95~5_combout\ = (\Selector95~4_combout\ & (((!\spi_data[4]~9_combout\)) # (!\p_idx~q\))) # (!\Selector95~4_combout\ & (((\Selector18~1_combout\ & \spi_data[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_idx~q\,
	datab => \Selector18~1_combout\,
	datac => \Selector95~4_combout\,
	datad => \spi_data[4]~9_combout\,
	combout => \Selector95~5_combout\);

-- Location: LCCOMB_X26_Y20_N14
\spi_data[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \spi_data[6]~10_combout\ = (\rst_n~input_o\ & (!\LessThan1~0_combout\ & (\DC~0_combout\ & !\LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \LessThan1~0_combout\,
	datac => \DC~0_combout\,
	datad => \LessThan0~10_combout\,
	combout => \spi_data[6]~10_combout\);

-- Location: FF_X28_Y20_N29
\spi_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector95~5_combout\,
	ena => \spi_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(5));

-- Location: LCCOMB_X20_Y17_N6
\DC~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DC~1_combout\ = (\cmd_idx.00010010~q\) # (((\cmd_idx.00000101~q\) # (!\Selector7~0_combout\)) # (!\Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00010010~q\,
	datab => \Selector6~0_combout\,
	datac => \cmd_idx.00000101~q\,
	datad => \Selector7~0_combout\,
	combout => \DC~1_combout\);

-- Location: LCCOMB_X28_Y20_N6
\Selector19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\cmd_idx.00001011~q\) # ((\cmd_idx.00010000~q\) # ((spi_data(4) & \DC~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(4),
	datab => \cmd_idx.00001011~q\,
	datac => \cmd_idx.00010000~q\,
	datad => \DC~1_combout\,
	combout => \Selector19~2_combout\);

-- Location: LCCOMB_X26_Y17_N8
\Selector96~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\cmd_idx.00000001~q\) # (((spi_data(4) & \WideNor1~0_combout\)) # (!\Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00000001~q\,
	datab => spi_data(4),
	datac => \Selector6~0_combout\,
	datad => \WideNor1~0_combout\,
	combout => \Selector96~0_combout\);

-- Location: M9K_X25_Y13_N0
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

-- Location: M9K_X25_Y14_N0
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

-- Location: LCCOMB_X26_Y17_N16
\Selector96~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector96~1_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a28~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
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
	combout => \Selector96~1_combout\);

-- Location: M9K_X25_Y24_N0
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

-- Location: M9K_X25_Y22_N0
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

-- Location: M9K_X25_Y20_N0
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

-- Location: LCCOMB_X26_Y17_N18
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

-- Location: LCCOMB_X26_Y17_N6
\Selector96~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector96~2_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (((\image_rom_rtl_0|auto_generated|ram_block1a36~portadataout\)))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (\Selector96~1_combout\ & 
-- ((\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs486w[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datab => \Selector96~1_combout\,
	datac => \image_rom_rtl_0|auto_generated|ram_block1a36~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs486w[0]~0_combout\,
	combout => \Selector96~2_combout\);

-- Location: LCCOMB_X26_Y17_N24
\Selector96~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector96~3_combout\ = (\state.STATE_SCAN_DRAW~q\ & (((\Selector96~2_combout\)))) # (!\state.STATE_SCAN_DRAW~q\ & (!\state.STATE_SET_AXIS~q\ & (\Selector96~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \state.STATE_SCAN_DRAW~q\,
	datac => \Selector96~0_combout\,
	datad => \Selector96~2_combout\,
	combout => \Selector96~3_combout\);

-- Location: LCCOMB_X28_Y20_N4
\Selector96~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector96~4_combout\ = (\spi_data[4]~8_combout\ & (((\state.STATE_SCAN_DRAW~q\)))) # (!\spi_data[4]~8_combout\ & ((\spi_data[4]~13_combout\ & ((\state.STATE_SCAN_DRAW~q\))) # (!\spi_data[4]~13_combout\ & (\Selector96~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector96~3_combout\,
	datab => \state.STATE_SCAN_DRAW~q\,
	datac => \spi_data[4]~8_combout\,
	datad => \spi_data[4]~13_combout\,
	combout => \Selector96~4_combout\);

-- Location: LCCOMB_X28_Y20_N18
\Selector96~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector96~5_combout\ = (\Selector96~4_combout\ & (((!\spi_data[4]~9_combout\) # (!\p_idx~q\)))) # (!\Selector96~4_combout\ & (\Selector19~2_combout\ & ((\spi_data[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~2_combout\,
	datab => \p_idx~q\,
	datac => \Selector96~4_combout\,
	datad => \spi_data[4]~9_combout\,
	combout => \Selector96~5_combout\);

-- Location: FF_X28_Y20_N19
\spi_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector96~5_combout\,
	ena => \spi_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(4));

-- Location: LCCOMB_X26_Y19_N24
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = bit_cnt(1) $ (bit_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(1),
	datac => bit_cnt(0),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X28_Y20_N8
\Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\cmd_idx.00001011~q\) # ((spi_data(6) & ((\cmd_idx.00010010~q\) # (!\WideNor1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00001011~q\,
	datab => \WideNor1~0_combout\,
	datac => \cmd_idx.00010010~q\,
	datad => spi_data(6),
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X26_Y17_N12
\Selector94~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\cmd_idx.00000101~q\) # ((\Selector6~0_combout\ & (spi_data(6) & \Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \cmd_idx.00000101~q\,
	datac => spi_data(6),
	datad => \Selector7~0_combout\,
	combout => \Selector94~0_combout\);

-- Location: M9K_X25_Y10_N0
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

-- Location: M9K_X25_Y21_N0
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

-- Location: M9K_X25_Y19_N0
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

-- Location: LCCOMB_X26_Y17_N22
\Selector94~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector94~1_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(1)) # ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a14~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- (\image_rom_rtl_0|auto_generated|ram_block1a6~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a6~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a14~portadataout\,
	combout => \Selector94~1_combout\);

-- Location: M9K_X25_Y15_N0
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

-- Location: M9K_X25_Y11_N0
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

-- Location: LCCOMB_X26_Y15_N2
\image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~0_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a30~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- (\image_rom_rtl_0|auto_generated|ram_block1a22~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a22~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a30~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~0_combout\);

-- Location: LCCOMB_X26_Y17_N20
\Selector94~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector94~2_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (\image_rom_rtl_0|auto_generated|ram_block1a38~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (((\Selector94~1_combout\ & 
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datab => \image_rom_rtl_0|auto_generated|ram_block1a38~portadataout\,
	datac => \Selector94~1_combout\,
	datad => \image_rom_rtl_0|auto_generated|mux2|muxlut_result6w~0_combout\,
	combout => \Selector94~2_combout\);

-- Location: LCCOMB_X26_Y17_N2
\Selector94~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector94~3_combout\ = (\state.STATE_SCAN_DRAW~q\ & (((\Selector94~2_combout\)))) # (!\state.STATE_SCAN_DRAW~q\ & (\Selector94~0_combout\ & (!\state.STATE_SET_AXIS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector94~0_combout\,
	datab => \state.STATE_SCAN_DRAW~q\,
	datac => \state.STATE_SET_AXIS~q\,
	datad => \Selector94~2_combout\,
	combout => \Selector94~3_combout\);

-- Location: LCCOMB_X28_Y20_N30
\Selector94~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector94~4_combout\ = (\spi_data[4]~8_combout\ & (((\state.STATE_SCAN_DRAW~q\)))) # (!\spi_data[4]~8_combout\ & ((\spi_data[4]~13_combout\ & ((\state.STATE_SCAN_DRAW~q\))) # (!\spi_data[4]~13_combout\ & (\Selector94~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector94~3_combout\,
	datab => \state.STATE_SCAN_DRAW~q\,
	datac => \spi_data[4]~8_combout\,
	datad => \spi_data[4]~13_combout\,
	combout => \Selector94~4_combout\);

-- Location: LCCOMB_X28_Y20_N16
\Selector94~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector94~5_combout\ = (\Selector94~4_combout\ & (((!\spi_data[4]~9_combout\) # (!\p_idx~q\)))) # (!\Selector94~4_combout\ & (\Selector17~0_combout\ & ((\spi_data[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~0_combout\,
	datab => \p_idx~q\,
	datac => \Selector94~4_combout\,
	datad => \spi_data[4]~9_combout\,
	combout => \Selector94~5_combout\);

-- Location: FF_X28_Y20_N17
\spi_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector94~5_combout\,
	ena => \spi_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(6));

-- Location: LCCOMB_X28_Y20_N20
\Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\cmd_idx.00010000~q\) # ((spi_data(7) & ((\cmd_idx.00010010~q\) # (!\WideNor1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00010000~q\,
	datab => \cmd_idx.00010010~q\,
	datac => spi_data(7),
	datad => \WideNor1~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X20_Y17_N22
\Selector93~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\cmd_idx.00000101~q\) # ((\Selector7~0_combout\ & (\Selector6~0_combout\ & spi_data(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \Selector6~0_combout\,
	datac => \cmd_idx.00000101~q\,
	datad => spi_data(7),
	combout => \Selector93~0_combout\);

-- Location: M9K_X13_Y14_N0
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

-- Location: M9K_X13_Y20_N0
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

-- Location: LCCOMB_X14_Y17_N30
\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs630w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs630w[0]~0_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(1)) # ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a15~portadataout\))) # 
-- (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a7~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a7~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a15~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs630w[0]~0_combout\);

-- Location: M9K_X13_Y23_N0
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

-- Location: M9K_X13_Y17_N0
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

-- Location: M9K_X13_Y18_N0
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

-- Location: LCCOMB_X14_Y17_N0
\Selector93~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector93~1_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a31~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- ((\image_rom_rtl_0|auto_generated|ram_block1a23~portadataout\)))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a31~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a23~portadataout\,
	combout => \Selector93~1_combout\);

-- Location: LCCOMB_X14_Y17_N18
\Selector93~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector93~2_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (((\image_rom_rtl_0|auto_generated|ram_block1a39~portadataout\)))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & 
-- (\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs630w[0]~0_combout\ & ((\Selector93~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs630w[0]~0_combout\,
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a39~portadataout\,
	datad => \Selector93~1_combout\,
	combout => \Selector93~2_combout\);

-- Location: LCCOMB_X14_Y17_N24
\Selector93~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector93~3_combout\ = (\state.STATE_SCAN_DRAW~q\ & (((\Selector93~2_combout\)))) # (!\state.STATE_SCAN_DRAW~q\ & (!\state.STATE_SET_AXIS~q\ & (\Selector93~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SCAN_DRAW~q\,
	datab => \state.STATE_SET_AXIS~q\,
	datac => \Selector93~0_combout\,
	datad => \Selector93~2_combout\,
	combout => \Selector93~3_combout\);

-- Location: LCCOMB_X28_Y20_N14
\Selector93~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector93~4_combout\ = (\spi_data[4]~8_combout\ & (((\state.STATE_SCAN_DRAW~q\)))) # (!\spi_data[4]~8_combout\ & ((\spi_data[4]~13_combout\ & ((\state.STATE_SCAN_DRAW~q\))) # (!\spi_data[4]~13_combout\ & (\Selector93~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector93~3_combout\,
	datab => \state.STATE_SCAN_DRAW~q\,
	datac => \spi_data[4]~8_combout\,
	datad => \spi_data[4]~13_combout\,
	combout => \Selector93~4_combout\);

-- Location: LCCOMB_X28_Y20_N26
\Selector93~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector93~5_combout\ = (\Selector93~4_combout\ & (((!\spi_data[4]~9_combout\)) # (!\p_idx~q\))) # (!\Selector93~4_combout\ & (((\Selector16~0_combout\ & \spi_data[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_idx~q\,
	datab => \Selector16~0_combout\,
	datac => \Selector93~4_combout\,
	datad => \spi_data[4]~9_combout\,
	combout => \Selector93~5_combout\);

-- Location: FF_X28_Y20_N27
\spi_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector93~5_combout\,
	ena => \spi_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(7));

-- Location: LCCOMB_X26_Y19_N28
\Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (bit_cnt(1) & (spi_data(6) & (bit_cnt(0)))) # (!bit_cnt(1) & (((bit_cnt(0)) # (spi_data(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(1),
	datab => spi_data(6),
	datac => bit_cnt(0),
	datad => spi_data(7),
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X26_Y17_N4
\Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Add3~0_combout\ & ((\Mux8~2_combout\ & ((spi_data(4)))) # (!\Mux8~2_combout\ & (spi_data(5))))) # (!\Add3~0_combout\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(5),
	datab => spi_data(4),
	datac => \Add3~0_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X28_Y20_N12
\Selector22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (!\cmd_idx.00010000~q\ & !\cmd_idx.00001011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_idx.00010000~q\,
	datad => \cmd_idx.00001011~q\,
	combout => \Selector22~2_combout\);

-- Location: LCCOMB_X26_Y20_N20
\Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\cmd_idx.00001100~q\) # (((\DC~1_combout\ & spi_data(0))) # (!\Selector22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00001100~q\,
	datab => \DC~1_combout\,
	datac => \Selector22~2_combout\,
	datad => spi_data(0),
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X26_Y17_N30
\Selector100~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = ((\Selector6~0_combout\ & (!\cmd_idx.00000101~q\ & spi_data(0)))) # (!\Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \cmd_idx.00000101~q\,
	datac => spi_data(0),
	datad => \Selector7~0_combout\,
	combout => \Selector100~0_combout\);

-- Location: M9K_X13_Y5_N0
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

-- Location: M9K_X13_Y8_N0
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

-- Location: M9K_X13_Y11_N0
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

-- Location: LCCOMB_X14_Y16_N22
\Selector100~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector100~1_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(1)) # ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a8~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- ((\image_rom_rtl_0|auto_generated|ram_block1a0~portadataout\))))

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
	combout => \Selector100~1_combout\);

-- Location: M9K_X13_Y12_N0
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

-- Location: M9K_X13_Y9_N0
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

-- Location: LCCOMB_X14_Y16_N0
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

-- Location: LCCOMB_X14_Y16_N4
\Selector100~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector100~2_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (\image_rom_rtl_0|auto_generated|ram_block1a32~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (((\Selector100~1_combout\ & 
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result0w~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datab => \image_rom_rtl_0|auto_generated|ram_block1a32~portadataout\,
	datac => \Selector100~1_combout\,
	datad => \image_rom_rtl_0|auto_generated|mux2|muxlut_result0w~0_combout\,
	combout => \Selector100~2_combout\);

-- Location: LCCOMB_X26_Y20_N26
\Selector100~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector100~3_combout\ = (\state.STATE_SCAN_DRAW~q\ & (((\Selector100~2_combout\)))) # (!\state.STATE_SCAN_DRAW~q\ & (!\state.STATE_SET_AXIS~q\ & (\Selector100~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \state.STATE_SCAN_DRAW~q\,
	datac => \Selector100~0_combout\,
	datad => \Selector100~2_combout\,
	combout => \Selector100~3_combout\);

-- Location: LCCOMB_X26_Y20_N16
\Selector100~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector100~4_combout\ = (\spi_data[4]~8_combout\ & (((\state.STATE_SCAN_DRAW~q\)))) # (!\spi_data[4]~8_combout\ & ((\spi_data[4]~13_combout\ & ((\state.STATE_SCAN_DRAW~q\))) # (!\spi_data[4]~13_combout\ & (\Selector100~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector100~3_combout\,
	datab => \state.STATE_SCAN_DRAW~q\,
	datac => \spi_data[4]~8_combout\,
	datad => \spi_data[4]~13_combout\,
	combout => \Selector100~4_combout\);

-- Location: LCCOMB_X26_Y20_N0
\Selector100~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector100~5_combout\ = (\spi_data[4]~9_combout\ & ((\Selector100~4_combout\ & ((\p_idx~q\))) # (!\Selector100~4_combout\ & (\Selector23~0_combout\)))) # (!\spi_data[4]~9_combout\ & (((\Selector100~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \p_idx~q\,
	datac => \spi_data[4]~9_combout\,
	datad => \Selector100~4_combout\,
	combout => \Selector100~5_combout\);

-- Location: FF_X26_Y20_N1
\spi_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector100~5_combout\,
	ena => \spi_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(0));

-- Location: LCCOMB_X28_Y20_N24
\Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\cmd_idx.00010000~q\ & (!\cmd_idx.00001011~q\ & (!\cmd_idx.00001100~q\ & !\cmd_idx.00000111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00010000~q\,
	datab => \cmd_idx.00001011~q\,
	datac => \cmd_idx.00001100~q\,
	datad => \cmd_idx.00000111~q\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X26_Y20_N12
\Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\cmd_idx.00010001~q\) # (((\DC~1_combout\ & spi_data(3))) # (!\Selector22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00010001~q\,
	datab => \Selector22~0_combout\,
	datac => \DC~1_combout\,
	datad => spi_data(3),
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X20_Y17_N16
\Selector97~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\cmd_idx.00000010~q\) # ((\cmd_idx.00000110~q\) # ((spi_data(3) & \WideNor1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(3),
	datab => \WideNor1~0_combout\,
	datac => \cmd_idx.00000010~q\,
	datad => \cmd_idx.00000110~q\,
	combout => \Selector97~0_combout\);

-- Location: M9K_X25_Y18_N0
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

-- Location: M9K_X25_Y9_N0
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

-- Location: LCCOMB_X19_Y17_N12
\image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~0_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a27~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- (\image_rom_rtl_0|auto_generated|ram_block1a19~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a19~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a27~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~0_combout\);

-- Location: M9K_X25_Y6_N0
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

-- Location: M9K_X13_Y19_N0
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

-- Location: M9K_X13_Y6_N0
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

-- Location: LCCOMB_X14_Y17_N20
\Selector97~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector97~1_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(1)) # ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a11~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- (\image_rom_rtl_0|auto_generated|ram_block1a3~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a3~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a11~portadataout\,
	combout => \Selector97~1_combout\);

-- Location: LCCOMB_X19_Y17_N2
\Selector97~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector97~2_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (((\image_rom_rtl_0|auto_generated|ram_block1a35~portadataout\)))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & 
-- (\image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~0_combout\ & ((\Selector97~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|mux2|muxlut_result3w~0_combout\,
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a35~portadataout\,
	datad => \Selector97~1_combout\,
	combout => \Selector97~2_combout\);

-- Location: LCCOMB_X19_Y17_N4
\Selector97~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector97~3_combout\ = (\state.STATE_SCAN_DRAW~q\ & (((\Selector97~2_combout\)))) # (!\state.STATE_SCAN_DRAW~q\ & (\Selector97~0_combout\ & (!\state.STATE_SET_AXIS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SCAN_DRAW~q\,
	datab => \Selector97~0_combout\,
	datac => \state.STATE_SET_AXIS~q\,
	datad => \Selector97~2_combout\,
	combout => \Selector97~3_combout\);

-- Location: LCCOMB_X26_Y20_N2
\Selector97~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector97~4_combout\ = (\spi_data[4]~8_combout\ & (\state.STATE_SCAN_DRAW~q\)) # (!\spi_data[4]~8_combout\ & ((\spi_data[4]~13_combout\ & (\state.STATE_SCAN_DRAW~q\)) # (!\spi_data[4]~13_combout\ & ((\Selector97~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SCAN_DRAW~q\,
	datab => \spi_data[4]~8_combout\,
	datac => \Selector97~3_combout\,
	datad => \spi_data[4]~13_combout\,
	combout => \Selector97~4_combout\);

-- Location: LCCOMB_X26_Y20_N28
\Selector97~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector97~5_combout\ = (\spi_data[4]~9_combout\ & ((\Selector97~4_combout\ & ((\p_idx~q\))) # (!\Selector97~4_combout\ & (\Selector20~0_combout\)))) # (!\spi_data[4]~9_combout\ & (((\Selector97~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~0_combout\,
	datab => \p_idx~q\,
	datac => \spi_data[4]~9_combout\,
	datad => \Selector97~4_combout\,
	combout => \Selector97~5_combout\);

-- Location: FF_X26_Y20_N29
\spi_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector97~5_combout\,
	ena => \spi_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(3));

-- Location: LCCOMB_X26_Y20_N4
\Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ((\cmd_idx.00010001~q\) # ((\DC~1_combout\ & spi_data(2)))) # (!\Selector22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~2_combout\,
	datab => \DC~1_combout\,
	datac => spi_data(2),
	datad => \cmd_idx.00010001~q\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X20_Y17_N26
\Selector98~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\cmd_idx.00000011~q\) # ((\cmd_idx.00000100~q\) # ((\WideNor1~0_combout\ & spi_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00000011~q\,
	datab => \WideNor1~0_combout\,
	datac => spi_data(2),
	datad => \cmd_idx.00000100~q\,
	combout => \Selector98~0_combout\);

-- Location: M9K_X13_Y4_N0
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

-- Location: M9K_X13_Y16_N0
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

-- Location: M9K_X25_Y17_N0
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

-- Location: LCCOMB_X14_Y17_N4
\Selector98~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector98~1_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a26~portadataout\))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
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
	combout => \Selector98~1_combout\);

-- Location: M9K_X13_Y22_N0
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

-- Location: M9K_X13_Y7_N0
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

-- Location: LCCOMB_X14_Y17_N2
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

-- Location: LCCOMB_X14_Y17_N10
\Selector98~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector98~2_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (\image_rom_rtl_0|auto_generated|ram_block1a34~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (((\Selector98~1_combout\ & 
-- \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs390w[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|ram_block1a34~portadataout\,
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datac => \Selector98~1_combout\,
	datad => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs390w[0]~0_combout\,
	combout => \Selector98~2_combout\);

-- Location: LCCOMB_X14_Y17_N28
\Selector98~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector98~3_combout\ = (\state.STATE_SCAN_DRAW~q\ & (((\Selector98~2_combout\)))) # (!\state.STATE_SCAN_DRAW~q\ & (!\state.STATE_SET_AXIS~q\ & (\Selector98~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SCAN_DRAW~q\,
	datab => \state.STATE_SET_AXIS~q\,
	datac => \Selector98~0_combout\,
	datad => \Selector98~2_combout\,
	combout => \Selector98~3_combout\);

-- Location: LCCOMB_X26_Y20_N18
\Selector98~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector98~4_combout\ = (\spi_data[4]~8_combout\ & (((\state.STATE_SCAN_DRAW~q\)))) # (!\spi_data[4]~8_combout\ & ((\spi_data[4]~13_combout\ & ((\state.STATE_SCAN_DRAW~q\))) # (!\spi_data[4]~13_combout\ & (\Selector98~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector98~3_combout\,
	datab => \state.STATE_SCAN_DRAW~q\,
	datac => \spi_data[4]~8_combout\,
	datad => \spi_data[4]~13_combout\,
	combout => \Selector98~4_combout\);

-- Location: LCCOMB_X26_Y20_N22
\Selector98~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector98~5_combout\ = (\spi_data[4]~9_combout\ & ((\Selector98~4_combout\ & (\p_idx~q\)) # (!\Selector98~4_combout\ & ((\Selector21~0_combout\))))) # (!\spi_data[4]~9_combout\ & (((\Selector98~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_idx~q\,
	datab => \Selector21~0_combout\,
	datac => \spi_data[4]~9_combout\,
	datad => \Selector98~4_combout\,
	combout => \Selector98~5_combout\);

-- Location: FF_X26_Y20_N23
\spi_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector98~5_combout\,
	ena => \spi_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(2));

-- Location: LCCOMB_X26_Y19_N26
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (bit_cnt(0) & (((spi_data(2)) # (!bit_cnt(1))))) # (!bit_cnt(0) & (spi_data(3) & ((!bit_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(3),
	datab => bit_cnt(0),
	datac => spi_data(2),
	datad => bit_cnt(1),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X28_Y20_N10
\Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = ((spi_data(1) & ((\cmd_idx.00010010~q\) # (!\WideNor1~0_combout\)))) # (!\Selector22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_data(1),
	datab => \WideNor1~0_combout\,
	datac => \cmd_idx.00010010~q\,
	datad => \Selector22~0_combout\,
	combout => \Selector22~1_combout\);

-- Location: LCCOMB_X26_Y17_N14
\Selector99~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = ((!\cmd_idx.00000101~q\ & (\Selector7~0_combout\ & spi_data(1)))) # (!\Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \cmd_idx.00000101~q\,
	datac => \Selector7~0_combout\,
	datad => spi_data(1),
	combout => \Selector99~0_combout\);

-- Location: M9K_X25_Y23_N0
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

-- Location: M9K_X25_Y12_N0
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

-- Location: M9K_X25_Y7_N0
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

-- Location: LCCOMB_X26_Y15_N20
\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs342w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs342w[0]~0_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(1)) # ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & ((\image_rom_rtl_0|auto_generated|ram_block1a9~portadataout\))) # 
-- (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a1~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a1~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a9~portadataout\,
	combout => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs342w[0]~0_combout\);

-- Location: M9K_X25_Y8_N0
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

-- Location: M9K_X25_Y16_N0
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

-- Location: LCCOMB_X26_Y17_N28
\Selector99~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector99~1_combout\ = ((\image_rom_rtl_0|auto_generated|address_reg_a\(0) & (\image_rom_rtl_0|auto_generated|ram_block1a25~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(0) & 
-- ((\image_rom_rtl_0|auto_generated|ram_block1a17~portadataout\)))) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|address_reg_a\(0),
	datab => \image_rom_rtl_0|auto_generated|address_reg_a\(1),
	datac => \image_rom_rtl_0|auto_generated|ram_block1a25~portadataout\,
	datad => \image_rom_rtl_0|auto_generated|ram_block1a17~portadataout\,
	combout => \Selector99~1_combout\);

-- Location: LCCOMB_X26_Y17_N10
\Selector99~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector99~2_combout\ = (\image_rom_rtl_0|auto_generated|address_reg_a\(2) & (\image_rom_rtl_0|auto_generated|ram_block1a33~portadataout\)) # (!\image_rom_rtl_0|auto_generated|address_reg_a\(2) & 
-- (((\image_rom_rtl_0|auto_generated|mux2|w_mux_outputs342w[0]~0_combout\ & \Selector99~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \image_rom_rtl_0|auto_generated|ram_block1a33~portadataout\,
	datab => \image_rom_rtl_0|auto_generated|mux2|w_mux_outputs342w[0]~0_combout\,
	datac => \image_rom_rtl_0|auto_generated|address_reg_a\(2),
	datad => \Selector99~1_combout\,
	combout => \Selector99~2_combout\);

-- Location: LCCOMB_X26_Y17_N0
\Selector99~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector99~3_combout\ = (\state.STATE_SCAN_DRAW~q\ & (((\Selector99~2_combout\)))) # (!\state.STATE_SCAN_DRAW~q\ & (!\state.STATE_SET_AXIS~q\ & (\Selector99~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SET_AXIS~q\,
	datab => \state.STATE_SCAN_DRAW~q\,
	datac => \Selector99~0_combout\,
	datad => \Selector99~2_combout\,
	combout => \Selector99~3_combout\);

-- Location: LCCOMB_X27_Y20_N4
\Selector99~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector99~4_combout\ = (\spi_data[4]~8_combout\ & (((\state.STATE_SCAN_DRAW~q\)))) # (!\spi_data[4]~8_combout\ & ((\spi_data[4]~13_combout\ & ((\state.STATE_SCAN_DRAW~q\))) # (!\spi_data[4]~13_combout\ & (\Selector99~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector99~3_combout\,
	datab => \state.STATE_SCAN_DRAW~q\,
	datac => \spi_data[4]~8_combout\,
	datad => \spi_data[4]~13_combout\,
	combout => \Selector99~4_combout\);

-- Location: LCCOMB_X27_Y20_N24
\Selector99~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector99~5_combout\ = (\Selector99~4_combout\ & ((\p_idx~q\) # ((!\spi_data[4]~9_combout\)))) # (!\Selector99~4_combout\ & (((\Selector22~1_combout\ & \spi_data[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_idx~q\,
	datab => \Selector22~1_combout\,
	datac => \Selector99~4_combout\,
	datad => \spi_data[4]~9_combout\,
	combout => \Selector99~5_combout\);

-- Location: FF_X27_Y20_N25
\spi_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector99~5_combout\,
	ena => \spi_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_data(1));

-- Location: LCCOMB_X26_Y20_N6
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Add3~0_combout\ & ((\Mux8~0_combout\ & (spi_data(0))) # (!\Mux8~0_combout\ & ((spi_data(1)))))) # (!\Add3~0_combout\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => spi_data(0),
	datac => \Mux8~0_combout\,
	datad => spi_data(1),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X26_Y13_N30
\SDA~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SDA~1_combout\ = (\Add3~1_combout\ & ((bit_cnt(2) & ((\Mux8~1_combout\))) # (!bit_cnt(2) & (\Mux8~3_combout\)))) # (!\Add3~1_combout\ & ((bit_cnt(2) & (\Mux8~3_combout\)) # (!bit_cnt(2) & ((\Mux8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => bit_cnt(2),
	datac => \Mux8~3_combout\,
	datad => \Mux8~1_combout\,
	combout => \SDA~1_combout\);

-- Location: LCCOMB_X26_Y13_N28
\SDA~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SDA~2_combout\ = (!\clk_div.0001~q\ & (!\LessThan0~10_combout\ & \LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div.0001~q\,
	datac => \LessThan0~10_combout\,
	datad => \LessThan1~0_combout\,
	combout => \SDA~2_combout\);

-- Location: LCCOMB_X26_Y13_N26
\SDA~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SDA~3_combout\ = (\SDA~2_combout\ & (\SDA~1_combout\)) # (!\SDA~2_combout\ & ((\SDA~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDA~1_combout\,
	datac => \SDA~reg0_q\,
	datad => \SDA~2_combout\,
	combout => \SDA~3_combout\);

-- Location: FF_X26_Y13_N27
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

-- Location: LCCOMB_X20_Y18_N24
\Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (!\state.STATE_INIT_CMD~q\ & ((\RES~reg0_q\) # (!\state.000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_INIT_CMD~q\,
	datab => \state.000000~q\,
	datac => \RES~reg0_q\,
	combout => \Selector36~0_combout\);

-- Location: FF_X20_Y18_N25
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
	ena => \spi_data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RES~reg0_q\);

-- Location: LCCOMB_X20_Y16_N14
\Selector101~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~2_combout\ = (\cmd_idx.00001001~q\) # ((\cmd_idx.00010000~q\) # ((\cmd_idx.00001011~q\) # (\cmd_idx.00001000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00001001~q\,
	datab => \cmd_idx.00010000~q\,
	datac => \cmd_idx.00001011~q\,
	datad => \cmd_idx.00001000~q\,
	combout => \Selector101~2_combout\);

-- Location: LCCOMB_X20_Y16_N4
\Selector101~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~3_combout\ = (\cmd_idx.00001110~q\) # ((\cmd_idx.00001111~q\) # ((\cmd_idx.00001101~q\) # (\cmd_idx.00001010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00001110~q\,
	datab => \cmd_idx.00001111~q\,
	datac => \cmd_idx.00001101~q\,
	datad => \cmd_idx.00001010~q\,
	combout => \Selector101~3_combout\);

-- Location: LCCOMB_X20_Y16_N10
\Selector101~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~4_combout\ = (\Selector101~2_combout\) # ((\Selector101~3_combout\) # (!\state.STATE_SET_AXIS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector101~2_combout\,
	datac => \Selector101~3_combout\,
	datad => \state.STATE_SET_AXIS~q\,
	combout => \Selector101~4_combout\);

-- Location: LCCOMB_X20_Y17_N4
\Selector101~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\cmd_idx.00000101~q\) # ((\cmd_idx.00000011~q\) # (!\state.STATE_SEND_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_idx.00000101~q\,
	datab => \state.STATE_SEND_INIT~q\,
	datad => \cmd_idx.00000011~q\,
	combout => \Selector101~0_combout\);

-- Location: LCCOMB_X20_Y17_N2
\Selector101~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~1_combout\ = (\Selector101~0_combout\ & (((\DC~0_combout\) # (\DC~reg0_q\)))) # (!\Selector101~0_combout\ & (\WideNor1~0_combout\ & ((\DC~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor1~0_combout\,
	datab => \Selector101~0_combout\,
	datac => \DC~0_combout\,
	datad => \DC~reg0_q\,
	combout => \Selector101~1_combout\);

-- Location: LCCOMB_X20_Y17_N24
\Selector101~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector101~5_combout\ = (\Selector101~1_combout\ & ((\Selector101~4_combout\) # ((\DC~1_combout\ & \DC~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector101~4_combout\,
	datab => \DC~1_combout\,
	datac => \DC~reg0_q\,
	datad => \Selector101~1_combout\,
	combout => \Selector101~5_combout\);

-- Location: FF_X20_Y17_N25
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
	ena => \spi_data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DC~reg0_q\);

-- Location: LCCOMB_X19_Y19_N4
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

-- Location: FF_X19_Y19_N5
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

-- Location: LCCOMB_X29_Y20_N24
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

-- Location: FF_X29_Y20_N25
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


