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

-- DATE "08/04/2026 11:17:52"

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

ENTITY 	top_camera_lcd IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	J2_PCLK : IN std_logic;
	J2_HREF : IN std_logic;
	J2_VSYNC : IN std_logic;
	J2_Y : IN std_logic_vector(9 DOWNTO 0);
	J2_SIO_D : INOUT std_logic;
	J2_SIO_C : OUT std_logic;
	J2_RESET : OUT std_logic;
	J2_PWDN : OUT std_logic;
	J2_XCLK : OUT std_logic;
	SCL : OUT std_logic;
	SDA : OUT std_logic;
	RES : OUT std_logic;
	DC : OUT std_logic;
	CS : OUT std_logic;
	BLK : OUT std_logic
	);
END top_camera_lcd;

-- Design Ports Information
-- J2_Y[0]	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_Y[1]	=>  Location: PIN_173,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_SIO_C	=>  Location: PIN_185,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_RESET	=>  Location: PIN_195,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_PWDN	=>  Location: PIN_189,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_XCLK	=>  Location: PIN_197,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RES	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BLK	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_SIO_D	=>  Location: PIN_187,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_PCLK	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_HREF	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_VSYNC	=>  Location: PIN_183,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_Y[3]	=>  Location: PIN_184,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_Y[5]	=>  Location: PIN_188,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_Y[4]	=>  Location: PIN_186,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_Y[2]	=>  Location: PIN_177,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_Y[7]	=>  Location: PIN_196,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_Y[9]	=>  Location: PIN_202,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_Y[8]	=>  Location: PIN_200,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- J2_Y[6]	=>  Location: PIN_194,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_camera_lcd IS
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
SIGNAL ww_J2_PCLK : std_logic;
SIGNAL ww_J2_HREF : std_logic;
SIGNAL ww_J2_VSYNC : std_logic;
SIGNAL ww_J2_Y : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_J2_SIO_C : std_logic;
SIGNAL ww_J2_RESET : std_logic;
SIGNAL ww_J2_PWDN : std_logic;
SIGNAL ww_J2_XCLK : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_SDA : std_logic;
SIGNAL ww_RES : std_logic;
SIGNAL ww_DC : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_BLK : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_config|scl_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \J2_Y[0]~input_o\ : std_logic;
SIGNAL \J2_Y[1]~input_o\ : std_logic;
SIGNAL \J2_SIO_D~input_o\ : std_logic;
SIGNAL \J2_SIO_D~output_o\ : std_logic;
SIGNAL \J2_SIO_C~output_o\ : std_logic;
SIGNAL \J2_RESET~output_o\ : std_logic;
SIGNAL \J2_PWDN~output_o\ : std_logic;
SIGNAL \J2_XCLK~output_o\ : std_logic;
SIGNAL \SCL~output_o\ : std_logic;
SIGNAL \SDA~output_o\ : std_logic;
SIGNAL \RES~output_o\ : std_logic;
SIGNAL \DC~output_o\ : std_logic;
SIGNAL \CS~output_o\ : std_logic;
SIGNAL \BLK~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_config|Add0~0_combout\ : std_logic;
SIGNAL \u_config|Add0~1\ : std_logic;
SIGNAL \u_config|Add0~2_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \u_config|Add0~3\ : std_logic;
SIGNAL \u_config|Add0~4_combout\ : std_logic;
SIGNAL \u_config|clk_cnt~5_combout\ : std_logic;
SIGNAL \u_config|Add0~5\ : std_logic;
SIGNAL \u_config|Add0~6_combout\ : std_logic;
SIGNAL \u_config|clk_cnt~4_combout\ : std_logic;
SIGNAL \u_config|Add0~7\ : std_logic;
SIGNAL \u_config|Add0~8_combout\ : std_logic;
SIGNAL \u_config|clk_cnt~3_combout\ : std_logic;
SIGNAL \u_config|Equal0~1_combout\ : std_logic;
SIGNAL \u_config|Add0~9\ : std_logic;
SIGNAL \u_config|Add0~10_combout\ : std_logic;
SIGNAL \u_config|clk_cnt~2_combout\ : std_logic;
SIGNAL \u_config|Add0~11\ : std_logic;
SIGNAL \u_config|Add0~12_combout\ : std_logic;
SIGNAL \u_config|clk_cnt~1_combout\ : std_logic;
SIGNAL \u_config|Add0~13\ : std_logic;
SIGNAL \u_config|Add0~14_combout\ : std_logic;
SIGNAL \u_config|Add0~15\ : std_logic;
SIGNAL \u_config|Add0~16_combout\ : std_logic;
SIGNAL \u_config|Equal0~0_combout\ : std_logic;
SIGNAL \u_config|clk_cnt~0_combout\ : std_logic;
SIGNAL \u_config|scl_clk~0_combout\ : std_logic;
SIGNAL \u_config|scl_clk~feeder_combout\ : std_logic;
SIGNAL \u_config|scl_clk~q\ : std_logic;
SIGNAL \u_config|scl_clk~clkctrl_outclk\ : std_logic;
SIGNAL \u_config|Add2~0_combout\ : std_logic;
SIGNAL \u_config|Selector34~0_combout\ : std_logic;
SIGNAL \u_config|WideOr5~0_combout\ : std_logic;
SIGNAL \u_config|WideOr10~0_combout\ : std_logic;
SIGNAL \u_config|Selector16~0_combout\ : std_logic;
SIGNAL \u_config|Selector20~0_combout\ : std_logic;
SIGNAL \u_config|Add2~5\ : std_logic;
SIGNAL \u_config|Add2~6_combout\ : std_logic;
SIGNAL \u_config|Selector31~0_combout\ : std_logic;
SIGNAL \u_config|Add2~7\ : std_logic;
SIGNAL \u_config|Add2~8_combout\ : std_logic;
SIGNAL \u_config|Selector30~0_combout\ : std_logic;
SIGNAL \u_config|Add2~9\ : std_logic;
SIGNAL \u_config|Add2~10_combout\ : std_logic;
SIGNAL \u_config|Selector29~0_combout\ : std_logic;
SIGNAL \u_config|Add2~11\ : std_logic;
SIGNAL \u_config|Add2~12_combout\ : std_logic;
SIGNAL \u_config|Selector28~0_combout\ : std_logic;
SIGNAL \u_config|Add2~13\ : std_logic;
SIGNAL \u_config|Add2~14_combout\ : std_logic;
SIGNAL \u_config|Selector27~0_combout\ : std_logic;
SIGNAL \u_config|Add2~15\ : std_logic;
SIGNAL \u_config|Add2~16_combout\ : std_logic;
SIGNAL \u_config|Selector26~0_combout\ : std_logic;
SIGNAL \u_config|Add2~17\ : std_logic;
SIGNAL \u_config|Add2~18_combout\ : std_logic;
SIGNAL \u_config|Selector25~0_combout\ : std_logic;
SIGNAL \u_config|Add2~19\ : std_logic;
SIGNAL \u_config|Add2~20_combout\ : std_logic;
SIGNAL \u_config|Selector24~0_combout\ : std_logic;
SIGNAL \u_config|Add2~21\ : std_logic;
SIGNAL \u_config|Add2~22_combout\ : std_logic;
SIGNAL \u_config|Selector23~0_combout\ : std_logic;
SIGNAL \u_config|Add2~23\ : std_logic;
SIGNAL \u_config|Add2~24_combout\ : std_logic;
SIGNAL \u_config|Selector22~1_combout\ : std_logic;
SIGNAL \u_config|Add2~25\ : std_logic;
SIGNAL \u_config|Add2~26_combout\ : std_logic;
SIGNAL \u_config|Selector21~0_combout\ : std_logic;
SIGNAL \u_config|Add2~27\ : std_logic;
SIGNAL \u_config|Add2~28_combout\ : std_logic;
SIGNAL \u_config|Selector20~1_combout\ : std_logic;
SIGNAL \u_config|Add2~29\ : std_logic;
SIGNAL \u_config|Add2~30_combout\ : std_logic;
SIGNAL \u_config|Selector19~0_combout\ : std_logic;
SIGNAL \u_config|Add2~31\ : std_logic;
SIGNAL \u_config|Add2~32_combout\ : std_logic;
SIGNAL \u_config|Selector18~0_combout\ : std_logic;
SIGNAL \u_config|Add2~33\ : std_logic;
SIGNAL \u_config|Add2~34_combout\ : std_logic;
SIGNAL \u_config|Selector17~0_combout\ : std_logic;
SIGNAL \u_config|Add2~35\ : std_logic;
SIGNAL \u_config|Add2~36_combout\ : std_logic;
SIGNAL \u_config|Selector16~1_combout\ : std_logic;
SIGNAL \u_config|Add2~37\ : std_logic;
SIGNAL \u_config|Add2~38_combout\ : std_logic;
SIGNAL \u_config|Selector15~0_combout\ : std_logic;
SIGNAL \u_config|Selector15~1_combout\ : std_logic;
SIGNAL \u_config|LessThan0~1_combout\ : std_logic;
SIGNAL \u_config|LessThan0~2_combout\ : std_logic;
SIGNAL \u_config|LessThan0~4_combout\ : std_logic;
SIGNAL \u_config|LessThan0~3_combout\ : std_logic;
SIGNAL \u_config|LessThan0~5_combout\ : std_logic;
SIGNAL \u_config|rom_addr[0]~9_combout\ : std_logic;
SIGNAL \u_config|rom_addr[1]~7_combout\ : std_logic;
SIGNAL \u_config|Selector8~1_combout\ : std_logic;
SIGNAL \u_config|rom_addr[1]~8\ : std_logic;
SIGNAL \u_config|rom_addr[2]~10_combout\ : std_logic;
SIGNAL \u_config|rom_addr[2]~11\ : std_logic;
SIGNAL \u_config|rom_addr[3]~12_combout\ : std_logic;
SIGNAL \u_config|rom_addr[3]~13\ : std_logic;
SIGNAL \u_config|rom_addr[4]~14_combout\ : std_logic;
SIGNAL \u_config|rom_addr[4]~15\ : std_logic;
SIGNAL \u_config|rom_addr[5]~16_combout\ : std_logic;
SIGNAL \u_config|rom_addr[5]~17\ : std_logic;
SIGNAL \u_config|rom_addr[6]~18_combout\ : std_logic;
SIGNAL \u_config|rom_addr[6]~19\ : std_logic;
SIGNAL \u_config|rom_addr[7]~20_combout\ : std_logic;
SIGNAL \u_config|Equal1~3_combout\ : std_logic;
SIGNAL \u_config|sccb_data[15]~16_combout\ : std_logic;
SIGNAL \u_config|state.IDLE~q\ : std_logic;
SIGNAL \u_config|Selector8~0_combout\ : std_logic;
SIGNAL \u_config|Selector3~0_combout\ : std_logic;
SIGNAL \u_config|state.START~q\ : std_logic;
SIGNAL \u_config|Add1~0_combout\ : std_logic;
SIGNAL \u_config|Selector14~0_combout\ : std_logic;
SIGNAL \u_config|bit_idx[1]~0_combout\ : std_logic;
SIGNAL \u_config|Add1~1\ : std_logic;
SIGNAL \u_config|Add1~2_combout\ : std_logic;
SIGNAL \u_config|Selector13~0_combout\ : std_logic;
SIGNAL \u_config|Add1~3\ : std_logic;
SIGNAL \u_config|Add1~4_combout\ : std_logic;
SIGNAL \u_config|Selector12~0_combout\ : std_logic;
SIGNAL \u_config|Add1~5\ : std_logic;
SIGNAL \u_config|Add1~6_combout\ : std_logic;
SIGNAL \u_config|Selector11~0_combout\ : std_logic;
SIGNAL \u_config|Selector9~1_combout\ : std_logic;
SIGNAL \u_config|Equal4~1_combout\ : std_logic;
SIGNAL \u_config|Add1~7\ : std_logic;
SIGNAL \u_config|Add1~8_combout\ : std_logic;
SIGNAL \u_config|Selector10~0_combout\ : std_logic;
SIGNAL \u_config|Add1~9\ : std_logic;
SIGNAL \u_config|Add1~10_combout\ : std_logic;
SIGNAL \u_config|Selector9~0_combout\ : std_logic;
SIGNAL \u_config|Equal4~0_combout\ : std_logic;
SIGNAL \u_config|Selector4~0_combout\ : std_logic;
SIGNAL \u_config|Selector4~1_combout\ : std_logic;
SIGNAL \u_config|state.BYTE_SEND~q\ : std_logic;
SIGNAL \u_config|state.ACK~q\ : std_logic;
SIGNAL \u_config|Selector6~0_combout\ : std_logic;
SIGNAL \u_config|state.STOP~q\ : std_logic;
SIGNAL \u_config|Selector22~0_combout\ : std_logic;
SIGNAL \u_config|Add2~1\ : std_logic;
SIGNAL \u_config|Add2~2_combout\ : std_logic;
SIGNAL \u_config|Selector33~0_combout\ : std_logic;
SIGNAL \u_config|Add2~3\ : std_logic;
SIGNAL \u_config|Add2~4_combout\ : std_logic;
SIGNAL \u_config|Selector32~0_combout\ : std_logic;
SIGNAL \u_config|LessThan0~0_combout\ : std_logic;
SIGNAL \u_config|Selector7~0_combout\ : std_logic;
SIGNAL \u_config|state.DELAY~q\ : std_logic;
SIGNAL \u_config|Selector8~2_combout\ : std_logic;
SIGNAL \u_config|state.DONE~q\ : std_logic;
SIGNAL \u_config|Selector0~0_combout\ : std_logic;
SIGNAL \u_config|Mux0~0_combout\ : std_logic;
SIGNAL \u_config|WideOr4~0_combout\ : std_logic;
SIGNAL \u_config|WideOr9~0_combout\ : std_logic;
SIGNAL \u_config|WideOr4~1_combout\ : std_logic;
SIGNAL \u_config|WideOr5~1_combout\ : std_logic;
SIGNAL \u_config|WideOr5~2_combout\ : std_logic;
SIGNAL \u_config|sccb_data[15]~15_combout\ : std_logic;
SIGNAL \u_config|WideOr6~0_combout\ : std_logic;
SIGNAL \u_config|WideOr1~0_combout\ : std_logic;
SIGNAL \u_config|WideOr6~1_combout\ : std_logic;
SIGNAL \u_config|WideOr2~0_combout\ : std_logic;
SIGNAL \u_config|WideOr2~1_combout\ : std_logic;
SIGNAL \u_config|Mux0~8_combout\ : std_logic;
SIGNAL \u_config|WideOr0~1_combout\ : std_logic;
SIGNAL \u_config|WideOr0~0_combout\ : std_logic;
SIGNAL \u_config|WideOr0~2_combout\ : std_logic;
SIGNAL \u_config|Mux0~9_combout\ : std_logic;
SIGNAL \u_config|WideOr1~1_combout\ : std_logic;
SIGNAL \u_config|WideOr1~2_combout\ : std_logic;
SIGNAL \u_config|WideOr7~1_combout\ : std_logic;
SIGNAL \u_config|WideOr7~0_combout\ : std_logic;
SIGNAL \u_config|WideOr7~2_combout\ : std_logic;
SIGNAL \u_config|Mux0~1_combout\ : std_logic;
SIGNAL \u_config|WideOr3~1_combout\ : std_logic;
SIGNAL \u_config|WideOr3~0_combout\ : std_logic;
SIGNAL \u_config|WideOr3~2_combout\ : std_logic;
SIGNAL \u_config|Mux0~2_combout\ : std_logic;
SIGNAL \u_config|WideOr8~0_combout\ : std_logic;
SIGNAL \u_config|WideOr8~1_combout\ : std_logic;
SIGNAL \u_config|WideOr8~2_combout\ : std_logic;
SIGNAL \u_config|WideOr12~1_combout\ : std_logic;
SIGNAL \u_config|WideOr10~1_combout\ : std_logic;
SIGNAL \u_config|WideOr12~2_combout\ : std_logic;
SIGNAL \u_config|WideOr14~0_combout\ : std_logic;
SIGNAL \u_config|WideOr14~1_combout\ : std_logic;
SIGNAL \u_config|WideOr12~0_combout\ : std_logic;
SIGNAL \u_config|WideOr10~2_combout\ : std_logic;
SIGNAL \u_config|Mux0~3_combout\ : std_logic;
SIGNAL \u_config|Mux0~4_combout\ : std_logic;
SIGNAL \u_config|WideOr9~1_combout\ : std_logic;
SIGNAL \u_config|WideOr9~2_combout\ : std_logic;
SIGNAL \u_config|WideOr11~0_combout\ : std_logic;
SIGNAL \u_config|WideOr15~0_combout\ : std_logic;
SIGNAL \u_config|WideOr15~1_combout\ : std_logic;
SIGNAL \u_config|WideOr13~0_combout\ : std_logic;
SIGNAL \u_config|WideOr13~1_combout\ : std_logic;
SIGNAL \u_config|Mux0~5_combout\ : std_logic;
SIGNAL \u_config|Mux0~6_combout\ : std_logic;
SIGNAL \u_config|Mux0~7_combout\ : std_logic;
SIGNAL \u_config|Mux0~10_combout\ : std_logic;
SIGNAL \u_config|Selector0~1_combout\ : std_logic;
SIGNAL \u_config|Selector0~2_combout\ : std_logic;
SIGNAL \u_config|sda_reg~q\ : std_logic;
SIGNAL \u_config|scl_reg~0_combout\ : std_logic;
SIGNAL \u_config|Selector1~3_combout\ : std_logic;
SIGNAL \u_config|Selector1~8_combout\ : std_logic;
SIGNAL \u_config|Selector1~6_combout\ : std_logic;
SIGNAL \u_config|Selector1~7_combout\ : std_logic;
SIGNAL \u_config|sda_oe~q\ : std_logic;
SIGNAL \u_config|scl_reg~feeder_combout\ : std_logic;
SIGNAL \u_config|scl_reg~q\ : std_logic;
SIGNAL \xclk_reg~0_combout\ : std_logic;
SIGNAL \xclk_reg~q\ : std_logic;
SIGNAL \u_lcd|Add1~0_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[0]~32_combout\ : std_logic;
SIGNAL \u_lcd|Add1~1\ : std_logic;
SIGNAL \u_lcd|Add1~2_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[1]~31_combout\ : std_logic;
SIGNAL \u_lcd|Add1~3\ : std_logic;
SIGNAL \u_lcd|Add1~4_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[2]~30_combout\ : std_logic;
SIGNAL \u_lcd|Add1~5\ : std_logic;
SIGNAL \u_lcd|Add1~6_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[3]~29_combout\ : std_logic;
SIGNAL \u_lcd|LessThan0~9_combout\ : std_logic;
SIGNAL \u_lcd|state.STATE_HW_RESET~feeder_combout\ : std_logic;
SIGNAL \u_lcd|Selector73~0_combout\ : std_logic;
SIGNAL \u_lcd|y_cnt[0]~8_combout\ : std_logic;
SIGNAL \u_lcd|state.STATE_SCAN_DRAW~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~47_combout\ : std_logic;
SIGNAL \u_lcd|WideNor0~combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx~42_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx~40_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx~43_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00000010~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~41_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00000011~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~48_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00000100~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~44_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00000101~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~46_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00000110~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~58_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00000111~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~52_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx~50_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00001000~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~53_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00001001~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~54_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00001010~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~49_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00001011~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~59_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00001100~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~55_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00001101~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~56_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00001110~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~57_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00001111~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~51_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00010000~q\ : std_logic;
SIGNAL \u_lcd|Selector34~0_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00010001~q\ : std_logic;
SIGNAL \u_lcd|Selector120~0_combout\ : std_logic;
SIGNAL \u_lcd|x_cnt[0]~8_combout\ : std_logic;
SIGNAL \u_lcd|LessThan2~1_combout\ : std_logic;
SIGNAL \u_lcd|LessThan2~0_combout\ : std_logic;
SIGNAL \u_lcd|x_cnt[3]~24_combout\ : std_logic;
SIGNAL \u_lcd|Selector120~1_combout\ : std_logic;
SIGNAL \u_lcd|p_idx~_wirecell_combout\ : std_logic;
SIGNAL \u_lcd|spi_data[6]~0_combout\ : std_logic;
SIGNAL \u_lcd|p_idx~q\ : std_logic;
SIGNAL \u_lcd|x_cnt[7]~25_combout\ : std_logic;
SIGNAL \u_lcd|x_cnt[0]~9\ : std_logic;
SIGNAL \u_lcd|x_cnt[1]~10_combout\ : std_logic;
SIGNAL \u_lcd|x_cnt[1]~11\ : std_logic;
SIGNAL \u_lcd|x_cnt[2]~12_combout\ : std_logic;
SIGNAL \u_lcd|x_cnt[2]~13\ : std_logic;
SIGNAL \u_lcd|x_cnt[3]~14_combout\ : std_logic;
SIGNAL \u_lcd|x_cnt[3]~15\ : std_logic;
SIGNAL \u_lcd|x_cnt[4]~16_combout\ : std_logic;
SIGNAL \u_lcd|x_cnt[4]~17\ : std_logic;
SIGNAL \u_lcd|x_cnt[5]~18_combout\ : std_logic;
SIGNAL \u_lcd|x_cnt[5]~19\ : std_logic;
SIGNAL \u_lcd|x_cnt[6]~20_combout\ : std_logic;
SIGNAL \u_lcd|x_cnt[6]~21\ : std_logic;
SIGNAL \u_lcd|x_cnt[7]~22_combout\ : std_logic;
SIGNAL \u_lcd|state~22_combout\ : std_logic;
SIGNAL \u_lcd|y_cnt[7]~24_combout\ : std_logic;
SIGNAL \u_lcd|y_cnt[7]~25_combout\ : std_logic;
SIGNAL \u_lcd|y_cnt[0]~9\ : std_logic;
SIGNAL \u_lcd|y_cnt[1]~10_combout\ : std_logic;
SIGNAL \u_lcd|y_cnt[1]~11\ : std_logic;
SIGNAL \u_lcd|y_cnt[2]~12_combout\ : std_logic;
SIGNAL \u_lcd|y_cnt[2]~13\ : std_logic;
SIGNAL \u_lcd|y_cnt[3]~14_combout\ : std_logic;
SIGNAL \u_lcd|y_cnt[3]~15\ : std_logic;
SIGNAL \u_lcd|y_cnt[4]~16_combout\ : std_logic;
SIGNAL \u_lcd|y_cnt[4]~17\ : std_logic;
SIGNAL \u_lcd|y_cnt[5]~18_combout\ : std_logic;
SIGNAL \u_lcd|y_cnt[5]~19\ : std_logic;
SIGNAL \u_lcd|y_cnt[6]~20_combout\ : std_logic;
SIGNAL \u_lcd|y_cnt[6]~21\ : std_logic;
SIGNAL \u_lcd|y_cnt[7]~22_combout\ : std_logic;
SIGNAL \u_lcd|LessThan3~0_combout\ : std_logic;
SIGNAL \u_lcd|LessThan3~1_combout\ : std_logic;
SIGNAL \u_lcd|LessThan3~2_combout\ : std_logic;
SIGNAL \u_lcd|state~23_combout\ : std_logic;
SIGNAL \u_lcd|Selector73~1_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00000000~q\ : std_logic;
SIGNAL \u_lcd|cmd_idx~45_combout\ : std_logic;
SIGNAL \u_lcd|cmd_idx.00000001~q\ : std_logic;
SIGNAL \u_lcd|WideNor0~0_combout\ : std_logic;
SIGNAL \u_lcd|WideNor0~1_combout\ : std_logic;
SIGNAL \u_lcd|state~21_combout\ : std_logic;
SIGNAL \u_lcd|state~24_combout\ : std_logic;
SIGNAL \u_lcd|state.STATE_HW_RESET~q\ : std_logic;
SIGNAL \u_lcd|state.STATE_INIT_CMD~0_combout\ : std_logic;
SIGNAL \u_lcd|state~26_combout\ : std_logic;
SIGNAL \u_lcd|state.STATE_INIT_CMD~q\ : std_logic;
SIGNAL \u_lcd|state.STATE_SEND_INIT~q\ : std_logic;
SIGNAL \u_lcd|state~25_combout\ : std_logic;
SIGNAL \u_lcd|state.STATE_SET_AXIS~q\ : std_logic;
SIGNAL \u_lcd|delay_cnt[31]~13_combout\ : std_logic;
SIGNAL \u_lcd|Add1~7\ : std_logic;
SIGNAL \u_lcd|Add1~8_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[4]~28_combout\ : std_logic;
SIGNAL \u_lcd|Add1~9\ : std_logic;
SIGNAL \u_lcd|Add1~10_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[5]~27_combout\ : std_logic;
SIGNAL \u_lcd|Add1~11\ : std_logic;
SIGNAL \u_lcd|Add1~12_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[6]~26_combout\ : std_logic;
SIGNAL \u_lcd|Add1~13\ : std_logic;
SIGNAL \u_lcd|Add1~14_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[7]~25_combout\ : std_logic;
SIGNAL \u_lcd|LessThan0~8_combout\ : std_logic;
SIGNAL \u_lcd|Add1~15\ : std_logic;
SIGNAL \u_lcd|Add1~16_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[8]~24_combout\ : std_logic;
SIGNAL \u_lcd|Add1~17\ : std_logic;
SIGNAL \u_lcd|Add1~18_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[9]~23_combout\ : std_logic;
SIGNAL \u_lcd|Add1~19\ : std_logic;
SIGNAL \u_lcd|Add1~20_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[10]~22_combout\ : std_logic;
SIGNAL \u_lcd|Add1~21\ : std_logic;
SIGNAL \u_lcd|Add1~22_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[11]~21_combout\ : std_logic;
SIGNAL \u_lcd|Add1~23\ : std_logic;
SIGNAL \u_lcd|Add1~24_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[12]~20_combout\ : std_logic;
SIGNAL \u_lcd|Add1~25\ : std_logic;
SIGNAL \u_lcd|Add1~26_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[13]~19_combout\ : std_logic;
SIGNAL \u_lcd|Add1~27\ : std_logic;
SIGNAL \u_lcd|Add1~28_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[14]~18_combout\ : std_logic;
SIGNAL \u_lcd|Add1~29\ : std_logic;
SIGNAL \u_lcd|Add1~30_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[15]~17_combout\ : std_logic;
SIGNAL \u_lcd|Add1~31\ : std_logic;
SIGNAL \u_lcd|Add1~32_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[16]~16_combout\ : std_logic;
SIGNAL \u_lcd|Add1~33\ : std_logic;
SIGNAL \u_lcd|Add1~34_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[17]~15_combout\ : std_logic;
SIGNAL \u_lcd|Add1~35\ : std_logic;
SIGNAL \u_lcd|Add1~36_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[18]~14_combout\ : std_logic;
SIGNAL \u_lcd|Add1~37\ : std_logic;
SIGNAL \u_lcd|Add1~38_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[19]~12_combout\ : std_logic;
SIGNAL \u_lcd|Add1~39\ : std_logic;
SIGNAL \u_lcd|Add1~40_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[20]~11_combout\ : std_logic;
SIGNAL \u_lcd|Add1~41\ : std_logic;
SIGNAL \u_lcd|Add1~42_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[21]~10_combout\ : std_logic;
SIGNAL \u_lcd|Add1~43\ : std_logic;
SIGNAL \u_lcd|Add1~44_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[22]~9_combout\ : std_logic;
SIGNAL \u_lcd|Add1~45\ : std_logic;
SIGNAL \u_lcd|Add1~46_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[23]~8_combout\ : std_logic;
SIGNAL \u_lcd|Add1~47\ : std_logic;
SIGNAL \u_lcd|Add1~48_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[24]~7_combout\ : std_logic;
SIGNAL \u_lcd|Add1~49\ : std_logic;
SIGNAL \u_lcd|Add1~50_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[25]~6_combout\ : std_logic;
SIGNAL \u_lcd|Add1~51\ : std_logic;
SIGNAL \u_lcd|Add1~52_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[26]~5_combout\ : std_logic;
SIGNAL \u_lcd|Add1~53\ : std_logic;
SIGNAL \u_lcd|Add1~54_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[27]~4_combout\ : std_logic;
SIGNAL \u_lcd|LessThan0~1_combout\ : std_logic;
SIGNAL \u_lcd|LessThan0~3_combout\ : std_logic;
SIGNAL \u_lcd|Add1~55\ : std_logic;
SIGNAL \u_lcd|Add1~56_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[28]~3_combout\ : std_logic;
SIGNAL \u_lcd|Add1~57\ : std_logic;
SIGNAL \u_lcd|Add1~58_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[29]~2_combout\ : std_logic;
SIGNAL \u_lcd|Add1~59\ : std_logic;
SIGNAL \u_lcd|Add1~60_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[30]~1_combout\ : std_logic;
SIGNAL \u_lcd|Add1~61\ : std_logic;
SIGNAL \u_lcd|Add1~62_combout\ : std_logic;
SIGNAL \u_lcd|delay_cnt[31]~0_combout\ : std_logic;
SIGNAL \u_lcd|LessThan0~0_combout\ : std_logic;
SIGNAL \u_lcd|LessThan0~2_combout\ : std_logic;
SIGNAL \u_lcd|LessThan0~4_combout\ : std_logic;
SIGNAL \u_lcd|LessThan0~6_combout\ : std_logic;
SIGNAL \u_lcd|LessThan0~5_combout\ : std_logic;
SIGNAL \u_lcd|LessThan0~7_combout\ : std_logic;
SIGNAL \u_lcd|LessThan0~10_combout\ : std_logic;
SIGNAL \u_lcd|bit_cnt[3]~3_combout\ : std_logic;
SIGNAL \u_lcd|clk_div~9_combout\ : std_logic;
SIGNAL \u_lcd|clk_div.0001~q\ : std_logic;
SIGNAL \u_lcd|bit_cnt[3]~2_combout\ : std_logic;
SIGNAL \u_lcd|bit_cnt[3]~4_combout\ : std_logic;
SIGNAL \u_lcd|bit_cnt[0]~7_combout\ : std_logic;
SIGNAL \u_lcd|bit_cnt[1]~8_combout\ : std_logic;
SIGNAL \u_lcd|Add2~1_combout\ : std_logic;
SIGNAL \u_lcd|bit_cnt[2]~6_combout\ : std_logic;
SIGNAL \u_lcd|Add2~2_combout\ : std_logic;
SIGNAL \u_lcd|bit_cnt[3]~5_combout\ : std_logic;
SIGNAL \u_lcd|LessThan1~0_combout\ : std_logic;
SIGNAL \u_lcd|SCL~0_combout\ : std_logic;
SIGNAL \u_lcd|SCL~q\ : std_logic;
SIGNAL \u_lcd|Selector22~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector22~1_combout\ : std_logic;
SIGNAL \u_lcd|spi_data[2]~2_combout\ : std_logic;
SIGNAL \u_lcd|ram_raddr[7]~1\ : std_logic;
SIGNAL \u_lcd|ram_raddr[8]~3\ : std_logic;
SIGNAL \u_lcd|ram_raddr[9]~5\ : std_logic;
SIGNAL \u_lcd|ram_raddr[10]~7\ : std_logic;
SIGNAL \u_lcd|ram_raddr[11]~9\ : std_logic;
SIGNAL \u_lcd|ram_raddr[12]~11\ : std_logic;
SIGNAL \u_lcd|ram_raddr[13]~13\ : std_logic;
SIGNAL \u_lcd|ram_raddr[14]~14_combout\ : std_logic;
SIGNAL \J2_PCLK~input_o\ : std_logic;
SIGNAL \J2_HREF~input_o\ : std_logic;
SIGNAL \J2_VSYNC~input_o\ : std_logic;
SIGNAL \u_capture|vsync_d~q\ : std_logic;
SIGNAL \u_capture|vsync_negedge~combout\ : std_logic;
SIGNAL \u_capture|byte_flag~0_combout\ : std_logic;
SIGNAL \u_capture|byte_flag~q\ : std_logic;
SIGNAL \u_capture|ram_addr[0]~17_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[4]~47_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[0]~18\ : std_logic;
SIGNAL \u_capture|ram_addr[1]~19_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[1]~20\ : std_logic;
SIGNAL \u_capture|ram_addr[2]~21_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[2]~22\ : std_logic;
SIGNAL \u_capture|ram_addr[3]~23_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[3]~24\ : std_logic;
SIGNAL \u_capture|ram_addr[4]~25_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[4]~26\ : std_logic;
SIGNAL \u_capture|ram_addr[5]~27_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[5]~28\ : std_logic;
SIGNAL \u_capture|ram_addr[6]~29_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[6]~30\ : std_logic;
SIGNAL \u_capture|ram_addr[7]~31_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[7]~32\ : std_logic;
SIGNAL \u_capture|ram_addr[8]~33_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[8]~34\ : std_logic;
SIGNAL \u_capture|ram_addr[9]~35_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[9]~36\ : std_logic;
SIGNAL \u_capture|ram_addr[10]~37_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[10]~38\ : std_logic;
SIGNAL \u_capture|ram_addr[11]~39_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[11]~40\ : std_logic;
SIGNAL \u_capture|ram_addr[12]~41_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[12]~42\ : std_logic;
SIGNAL \u_capture|ram_addr[13]~43_combout\ : std_logic;
SIGNAL \u_capture|ram_addr[13]~44\ : std_logic;
SIGNAL \u_capture|ram_addr[14]~45_combout\ : std_logic;
SIGNAL \u_capture|LessThan0~0_combout\ : std_logic;
SIGNAL \u_capture|pixel_valid~0_combout\ : std_logic;
SIGNAL \u_capture|pixel_valid~feeder_combout\ : std_logic;
SIGNAL \u_capture|pixel_valid~q\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\ : std_logic;
SIGNAL \u_lcd|ram_raddr[13]~12_combout\ : std_logic;
SIGNAL \J2_Y[3]~input_o\ : std_logic;
SIGNAL \u_capture|pixel_data[1]~feeder_combout\ : std_logic;
SIGNAL \u_lcd|ram_raddr[7]~0_combout\ : std_logic;
SIGNAL \u_lcd|ram_raddr[8]~2_combout\ : std_logic;
SIGNAL \u_lcd|ram_raddr[9]~4_combout\ : std_logic;
SIGNAL \u_lcd|ram_raddr[10]~6_combout\ : std_logic;
SIGNAL \u_lcd|ram_raddr[11]~8_combout\ : std_logic;
SIGNAL \J2_Y[5]~input_o\ : std_logic;
SIGNAL \u_capture|pixel_data[3]~feeder_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a33~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\ : std_logic;
SIGNAL \u_lcd|ram_raddr[12]~10_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[1]~16_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[1]~17_combout\ : std_logic;
SIGNAL \u_lcd|pixel_buf[6]~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector6~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector97~0_combout\ : std_logic;
SIGNAL \u_capture|high_byte[1]~feeder_combout\ : std_logic;
SIGNAL \u_capture|high_byte[0]~0_combout\ : std_logic;
SIGNAL \u_capture|pixel_data[11]~feeder_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a41~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[9]~0_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[9]~1_combout\ : std_logic;
SIGNAL \u_lcd|Selector97~1_combout\ : std_logic;
SIGNAL \u_lcd|spi_data[6]~1_combout\ : std_logic;
SIGNAL \u_lcd|spi_data[6]~3_combout\ : std_logic;
SIGNAL \u_lcd|Add2~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector4~0_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a35\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[3]~18_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[3]~19_combout\ : std_logic;
SIGNAL \u_lcd|Selector95~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector20~0_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a43\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[11]~2_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[11]~3_combout\ : std_logic;
SIGNAL \u_lcd|Selector95~1_combout\ : std_logic;
SIGNAL \u_lcd|Selector22~2_combout\ : std_logic;
SIGNAL \u_lcd|Selector21~0_combout\ : std_logic;
SIGNAL \J2_Y[2]~input_o\ : std_logic;
SIGNAL \u_capture|pixel_data[0]~feeder_combout\ : std_logic;
SIGNAL \J2_Y[4]~input_o\ : std_logic;
SIGNAL \u_capture|pixel_data[2]~feeder_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a34\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[2]~20_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[2]~21_combout\ : std_logic;
SIGNAL \u_lcd|Selector5~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector96~0_combout\ : std_logic;
SIGNAL \u_capture|high_byte[2]~feeder_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[10]~4_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a42\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[10]~5_combout\ : std_logic;
SIGNAL \u_lcd|Selector96~1_combout\ : std_logic;
SIGNAL \u_lcd|Mux0~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector23~0_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a32~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[0]~22_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[0]~23_combout\ : std_logic;
SIGNAL \u_lcd|Selector7~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector98~0_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a40~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[8]~6_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[8]~7_combout\ : std_logic;
SIGNAL \u_lcd|Selector98~1_combout\ : std_logic;
SIGNAL \u_lcd|Mux0~1_combout\ : std_logic;
SIGNAL \J2_Y[7]~input_o\ : std_logic;
SIGNAL \J2_Y[9]~input_o\ : std_logic;
SIGNAL \u_capture|pixel_data[7]~feeder_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a37~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[5]~24_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[5]~25_combout\ : std_logic;
SIGNAL \u_lcd|Selector2~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector93~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector18~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector18~1_combout\ : std_logic;
SIGNAL \u_capture|high_byte[5]~feeder_combout\ : std_logic;
SIGNAL \u_capture|pixel_data[13]~feeder_combout\ : std_logic;
SIGNAL \u_capture|pixel_data[15]~feeder_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a45~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[13]~8_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[13]~9_combout\ : std_logic;
SIGNAL \u_lcd|Selector93~1_combout\ : std_logic;
SIGNAL \u_lcd|Selector17~0_combout\ : std_logic;
SIGNAL \J2_Y[6]~input_o\ : std_logic;
SIGNAL \J2_Y[8]~input_o\ : std_logic;
SIGNAL \u_capture|pixel_data[6]~feeder_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a38\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[6]~28_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[6]~29_combout\ : std_logic;
SIGNAL \u_lcd|Selector1~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector92~0_combout\ : std_logic;
SIGNAL \u_capture|pixel_data[12]~feeder_combout\ : std_logic;
SIGNAL \u_capture|high_byte[6]~feeder_combout\ : std_logic;
SIGNAL \u_capture|pixel_data[14]~feeder_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a46\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[14]~12_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[14]~13_combout\ : std_logic;
SIGNAL \u_lcd|Selector92~1_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a39\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[7]~26_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[7]~27_combout\ : std_logic;
SIGNAL \u_lcd|Selector0~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector91~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector16~0_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a47\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[15]~10_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[15]~11_combout\ : std_logic;
SIGNAL \u_lcd|Selector91~1_combout\ : std_logic;
SIGNAL \u_lcd|Mux0~2_combout\ : std_logic;
SIGNAL \u_lcd|Selector19~2_combout\ : std_logic;
SIGNAL \u_lcd|Selector3~0_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a36~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[4]~30_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[4]~31_combout\ : std_logic;
SIGNAL \u_lcd|Selector94~0_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a44~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[12]~14_combout\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[12]~15_combout\ : std_logic;
SIGNAL \u_lcd|Selector94~1_combout\ : std_logic;
SIGNAL \u_lcd|Mux0~3_combout\ : std_logic;
SIGNAL \u_lcd|SDA~1_combout\ : std_logic;
SIGNAL \u_lcd|SDA~2_combout\ : std_logic;
SIGNAL \u_lcd|SDA~3_combout\ : std_logic;
SIGNAL \u_lcd|SDA~q\ : std_logic;
SIGNAL \u_lcd|Selector35~0_combout\ : std_logic;
SIGNAL \u_lcd|RES~q\ : std_logic;
SIGNAL \u_lcd|Selector99~0_combout\ : std_logic;
SIGNAL \u_lcd|Selector99~1_combout\ : std_logic;
SIGNAL \u_lcd|Selector99~4_combout\ : std_logic;
SIGNAL \u_lcd|Selector99~2_combout\ : std_logic;
SIGNAL \u_lcd|Selector99~3_combout\ : std_logic;
SIGNAL \u_lcd|Selector99~5_combout\ : std_logic;
SIGNAL \u_lcd|DC~q\ : std_logic;
SIGNAL \u_lcd|CS~feeder_combout\ : std_logic;
SIGNAL \u_lcd|CS~q\ : std_logic;
SIGNAL \u_buffer|mem_rtl_0|auto_generated|address_reg_b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode491w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_config|rom_addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_config|sccb_data\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \u_lcd|y_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_capture|high_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_config|delay_cnt\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \u_config|clk_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_capture|ram_addr\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \u_lcd|pixel_buf\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_capture|pixel_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_lcd|spi_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_lcd|x_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_lcd|delay_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u_config|bit_idx\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u_lcd|bit_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_config|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \u_config|ALT_INV_sda_oe~q\ : std_logic;
SIGNAL \u_config|ALT_INV_sda_reg~q\ : std_logic;
SIGNAL \u_lcd|ALT_INV_state.STATE_SCAN_DRAW~q\ : std_logic;
SIGNAL \u_lcd|ALT_INV_state.STATE_SET_AXIS~q\ : std_logic;
SIGNAL \u_lcd|ALT_INV_CS~q\ : std_logic;
SIGNAL \u_lcd|ALT_INV_RES~q\ : std_logic;
SIGNAL \u_lcd|ALT_INV_SCL~q\ : std_logic;
SIGNAL \u_config|ALT_INV_scl_reg~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_J2_PCLK <= J2_PCLK;
ww_J2_HREF <= J2_HREF;
ww_J2_VSYNC <= J2_VSYNC;
ww_J2_Y <= J2_Y;
J2_SIO_C <= ww_J2_SIO_C;
J2_RESET <= ww_J2_RESET;
J2_PWDN <= ww_J2_PWDN;
J2_XCLK <= ww_J2_XCLK;
SCL <= ww_SCL;
SDA <= ww_SDA;
RES <= ww_RES;
DC <= ww_DC;
CS <= ww_CS;
BLK <= ww_BLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_buffer|mem_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(9);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(9);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\ <= (\u_capture|pixel_data\(11) & \u_capture|pixel_data\(9));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & \u_capture|ram_addr\(6) & 
\u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & \u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6)
& \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a41~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\(0);
\u_buffer|mem_rtl_0|auto_generated|ram_block1a43\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\(1);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(11);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(11);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(10);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(10);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(8);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(8);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\ <= (\u_capture|pixel_data\(10) & \u_capture|pixel_data\(8));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & \u_capture|ram_addr\(6) & 
\u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & \u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6)
& \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a40~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\(0);
\u_buffer|mem_rtl_0|auto_generated|ram_block1a42\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\(1);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(13);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(13);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\ <= (\u_capture|pixel_data\(15) & \u_capture|pixel_data\(13));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & \u_capture|ram_addr\(6) & 
\u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & \u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6)
& \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a45~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\(0);
\u_buffer|mem_rtl_0|auto_generated|ram_block1a47\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\(1);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(15);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(15);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(14);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(14);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(12);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(12);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\ <= (\u_capture|pixel_data\(14) & \u_capture|pixel_data\(12));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & \u_capture|ram_addr\(6) & 
\u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & \u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6)
& \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a44~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\(0);
\u_buffer|mem_rtl_0|auto_generated|ram_block1a46\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\(1);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(1);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(1);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\ <= (\u_capture|pixel_data\(3) & \u_capture|pixel_data\(1));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & \u_capture|ram_addr\(6) & 
\u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & \u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6)
& \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a33~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\(0);
\u_buffer|mem_rtl_0|auto_generated|ram_block1a35\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\(1);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(3);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(3);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(2);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(2);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\ <= (\u_capture|pixel_data\(2) & \u_capture|pixel_data\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & \u_capture|ram_addr\(6) & 
\u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & \u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6)
& \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a32~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\(0);
\u_buffer|mem_rtl_0|auto_generated|ram_block1a34\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\(1);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(5);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(5);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\ <= (\u_capture|pixel_data\(7) & \u_capture|pixel_data\(5));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & \u_capture|ram_addr\(6) & 
\u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & \u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6)
& \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a37~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\(0);
\u_buffer|mem_rtl_0|auto_generated|ram_block1a39\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\(1);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(7);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(7);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(6);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(6);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(4);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \u_capture|pixel_data\(4);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\u_capture|ram_addr\(12) & \u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & 
\u_capture|ram_addr\(6) & \u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[12]~10_combout\ & \u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & 
\u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6) & \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\u_buffer|mem_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\ <= (\u_capture|pixel_data\(6) & \u_capture|pixel_data\(4));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\u_capture|ram_addr\(11) & \u_capture|ram_addr\(10) & \u_capture|ram_addr\(9) & \u_capture|ram_addr\(8) & \u_capture|ram_addr\(7) & \u_capture|ram_addr\(6) & 
\u_capture|ram_addr\(5) & \u_capture|ram_addr\(4) & \u_capture|ram_addr\(3) & \u_capture|ram_addr\(2) & \u_capture|ram_addr\(1) & \u_capture|ram_addr\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ <= (\u_lcd|ram_raddr[11]~8_combout\ & \u_lcd|ram_raddr[10]~6_combout\ & \u_lcd|ram_raddr[9]~4_combout\ & \u_lcd|ram_raddr[8]~2_combout\ & \u_lcd|ram_raddr[7]~0_combout\ & \u_lcd|x_cnt\(6)
& \u_lcd|x_cnt\(5) & \u_lcd|x_cnt\(4) & \u_lcd|x_cnt\(3) & \u_lcd|x_cnt\(2) & \u_lcd|x_cnt\(1) & \u_lcd|x_cnt\(0));

\u_buffer|mem_rtl_0|auto_generated|ram_block1a36~portbdataout\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(0);
\u_buffer|mem_rtl_0|auto_generated|ram_block1a38\ <= \u_buffer|mem_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(1);

\u_config|scl_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_config|scl_clk~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\u_config|ALT_INV_Selector8~1_combout\ <= NOT \u_config|Selector8~1_combout\;
\u_config|ALT_INV_sda_oe~q\ <= NOT \u_config|sda_oe~q\;
\u_config|ALT_INV_sda_reg~q\ <= NOT \u_config|sda_reg~q\;
\u_lcd|ALT_INV_state.STATE_SCAN_DRAW~q\ <= NOT \u_lcd|state.STATE_SCAN_DRAW~q\;
\u_lcd|ALT_INV_state.STATE_SET_AXIS~q\ <= NOT \u_lcd|state.STATE_SET_AXIS~q\;
\u_lcd|ALT_INV_CS~q\ <= NOT \u_lcd|CS~q\;
\u_lcd|ALT_INV_RES~q\ <= NOT \u_lcd|RES~q\;
\u_lcd|ALT_INV_SCL~q\ <= NOT \u_lcd|SCL~q\;
\u_config|ALT_INV_scl_reg~q\ <= NOT \u_config|scl_reg~q\;

-- Location: IOOBUF_X56_Y43_N16
\J2_SIO_D~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_config|ALT_INV_sda_reg~q\,
	oe => \u_config|ALT_INV_sda_oe~q\,
	devoe => ww_devoe,
	o => \J2_SIO_D~output_o\);

-- Location: IOOBUF_X59_Y43_N9
\J2_SIO_C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_config|ALT_INV_scl_reg~q\,
	devoe => ww_devoe,
	o => \J2_SIO_C~output_o\);

-- Location: IOOBUF_X50_Y43_N23
\J2_RESET~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \J2_RESET~output_o\);

-- Location: IOOBUF_X54_Y43_N16
\J2_PWDN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \J2_PWDN~output_o\);

-- Location: IOOBUF_X48_Y43_N16
\J2_XCLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xclk_reg~q\,
	devoe => ww_devoe,
	o => \J2_XCLK~output_o\);

-- Location: IOOBUF_X67_Y9_N9
\SCL~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd|ALT_INV_SCL~q\,
	devoe => ww_devoe,
	o => \SCL~output_o\);

-- Location: IOOBUF_X67_Y7_N23
\SDA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd|SDA~q\,
	devoe => ww_devoe,
	o => \SDA~output_o\);

-- Location: IOOBUF_X67_Y6_N16
\RES~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd|ALT_INV_RES~q\,
	devoe => ww_devoe,
	o => \RES~output_o\);

-- Location: IOOBUF_X67_Y5_N9
\DC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd|DC~q\,
	devoe => ww_devoe,
	o => \DC~output_o\);

-- Location: IOOBUF_X67_Y5_N16
\CS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_lcd|ALT_INV_CS~q\,
	devoe => ww_devoe,
	o => \CS~output_o\);

-- Location: IOOBUF_X67_Y5_N23
\BLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \BLK~output_o\);

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

-- Location: LCCOMB_X30_Y17_N10
\u_config|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add0~0_combout\ = \u_config|clk_cnt\(0) $ (VCC)
-- \u_config|Add0~1\ = CARRY(\u_config|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_config|clk_cnt\(0),
	datad => VCC,
	combout => \u_config|Add0~0_combout\,
	cout => \u_config|Add0~1\);

-- Location: LCCOMB_X30_Y17_N12
\u_config|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add0~2_combout\ = (\u_config|clk_cnt\(1) & (!\u_config|Add0~1\)) # (!\u_config|clk_cnt\(1) & ((\u_config|Add0~1\) # (GND)))
-- \u_config|Add0~3\ = CARRY((!\u_config|Add0~1\) # (!\u_config|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|clk_cnt\(1),
	datad => VCC,
	cin => \u_config|Add0~1\,
	combout => \u_config|Add0~2_combout\,
	cout => \u_config|Add0~3\);

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

-- Location: FF_X30_Y17_N13
\u_config|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_config|Add0~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|clk_cnt\(1));

-- Location: LCCOMB_X30_Y17_N14
\u_config|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add0~4_combout\ = (\u_config|clk_cnt\(2) & (\u_config|Add0~3\ $ (GND))) # (!\u_config|clk_cnt\(2) & (!\u_config|Add0~3\ & VCC))
-- \u_config|Add0~5\ = CARRY((\u_config|clk_cnt\(2) & !\u_config|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|clk_cnt\(2),
	datad => VCC,
	cin => \u_config|Add0~3\,
	combout => \u_config|Add0~4_combout\,
	cout => \u_config|Add0~5\);

-- Location: LCCOMB_X30_Y17_N2
\u_config|clk_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|clk_cnt~5_combout\ = (\u_config|Add0~4_combout\ & ((\u_config|clk_cnt\(0)) # ((!\u_config|Equal0~1_combout\) # (!\u_config|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|clk_cnt\(0),
	datab => \u_config|Equal0~0_combout\,
	datac => \u_config|Add0~4_combout\,
	datad => \u_config|Equal0~1_combout\,
	combout => \u_config|clk_cnt~5_combout\);

-- Location: FF_X30_Y17_N3
\u_config|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_config|clk_cnt~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|clk_cnt\(2));

-- Location: LCCOMB_X30_Y17_N16
\u_config|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add0~6_combout\ = (\u_config|clk_cnt\(3) & (!\u_config|Add0~5\)) # (!\u_config|clk_cnt\(3) & ((\u_config|Add0~5\) # (GND)))
-- \u_config|Add0~7\ = CARRY((!\u_config|Add0~5\) # (!\u_config|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|clk_cnt\(3),
	datad => VCC,
	cin => \u_config|Add0~5\,
	combout => \u_config|Add0~6_combout\,
	cout => \u_config|Add0~7\);

-- Location: LCCOMB_X30_Y17_N28
\u_config|clk_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|clk_cnt~4_combout\ = (\u_config|Add0~6_combout\ & (((\u_config|clk_cnt\(0)) # (!\u_config|Equal0~0_combout\)) # (!\u_config|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|Equal0~1_combout\,
	datab => \u_config|clk_cnt\(0),
	datac => \u_config|Equal0~0_combout\,
	datad => \u_config|Add0~6_combout\,
	combout => \u_config|clk_cnt~4_combout\);

-- Location: FF_X30_Y17_N29
\u_config|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_config|clk_cnt~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|clk_cnt\(3));

-- Location: LCCOMB_X30_Y17_N18
\u_config|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add0~8_combout\ = (\u_config|clk_cnt\(4) & (\u_config|Add0~7\ $ (GND))) # (!\u_config|clk_cnt\(4) & (!\u_config|Add0~7\ & VCC))
-- \u_config|Add0~9\ = CARRY((\u_config|clk_cnt\(4) & !\u_config|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|clk_cnt\(4),
	datad => VCC,
	cin => \u_config|Add0~7\,
	combout => \u_config|Add0~8_combout\,
	cout => \u_config|Add0~9\);

-- Location: LCCOMB_X30_Y17_N4
\u_config|clk_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|clk_cnt~3_combout\ = (\u_config|Add0~8_combout\ & (((\u_config|clk_cnt\(0)) # (!\u_config|Equal0~0_combout\)) # (!\u_config|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|Equal0~1_combout\,
	datab => \u_config|clk_cnt\(0),
	datac => \u_config|Equal0~0_combout\,
	datad => \u_config|Add0~8_combout\,
	combout => \u_config|clk_cnt~3_combout\);

-- Location: FF_X30_Y17_N5
\u_config|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_config|clk_cnt~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|clk_cnt\(4));

-- Location: LCCOMB_X29_Y17_N2
\u_config|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Equal0~1_combout\ = (\u_config|clk_cnt\(2) & (!\u_config|clk_cnt\(1) & (\u_config|clk_cnt\(3) & \u_config|clk_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|clk_cnt\(2),
	datab => \u_config|clk_cnt\(1),
	datac => \u_config|clk_cnt\(3),
	datad => \u_config|clk_cnt\(4),
	combout => \u_config|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y17_N20
\u_config|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add0~10_combout\ = (\u_config|clk_cnt\(5) & (!\u_config|Add0~9\)) # (!\u_config|clk_cnt\(5) & ((\u_config|Add0~9\) # (GND)))
-- \u_config|Add0~11\ = CARRY((!\u_config|Add0~9\) # (!\u_config|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|clk_cnt\(5),
	datad => VCC,
	cin => \u_config|Add0~9\,
	combout => \u_config|Add0~10_combout\,
	cout => \u_config|Add0~11\);

-- Location: LCCOMB_X30_Y17_N0
\u_config|clk_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|clk_cnt~2_combout\ = (\u_config|Add0~10_combout\ & (((\u_config|clk_cnt\(0)) # (!\u_config|Equal0~0_combout\)) # (!\u_config|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|Equal0~1_combout\,
	datab => \u_config|clk_cnt\(0),
	datac => \u_config|Equal0~0_combout\,
	datad => \u_config|Add0~10_combout\,
	combout => \u_config|clk_cnt~2_combout\);

-- Location: FF_X30_Y17_N1
\u_config|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_config|clk_cnt~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|clk_cnt\(5));

-- Location: LCCOMB_X30_Y17_N22
\u_config|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add0~12_combout\ = (\u_config|clk_cnt\(6) & (\u_config|Add0~11\ $ (GND))) # (!\u_config|clk_cnt\(6) & (!\u_config|Add0~11\ & VCC))
-- \u_config|Add0~13\ = CARRY((\u_config|clk_cnt\(6) & !\u_config|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|clk_cnt\(6),
	datad => VCC,
	cin => \u_config|Add0~11\,
	combout => \u_config|Add0~12_combout\,
	cout => \u_config|Add0~13\);

-- Location: LCCOMB_X30_Y17_N6
\u_config|clk_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|clk_cnt~1_combout\ = (\u_config|Add0~12_combout\ & (((\u_config|clk_cnt\(0)) # (!\u_config|Equal0~1_combout\)) # (!\u_config|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|Equal0~0_combout\,
	datab => \u_config|clk_cnt\(0),
	datac => \u_config|Add0~12_combout\,
	datad => \u_config|Equal0~1_combout\,
	combout => \u_config|clk_cnt~1_combout\);

-- Location: FF_X30_Y17_N7
\u_config|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_config|clk_cnt~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|clk_cnt\(6));

-- Location: LCCOMB_X30_Y17_N24
\u_config|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add0~14_combout\ = (\u_config|clk_cnt\(7) & (!\u_config|Add0~13\)) # (!\u_config|clk_cnt\(7) & ((\u_config|Add0~13\) # (GND)))
-- \u_config|Add0~15\ = CARRY((!\u_config|Add0~13\) # (!\u_config|clk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|clk_cnt\(7),
	datad => VCC,
	cin => \u_config|Add0~13\,
	combout => \u_config|Add0~14_combout\,
	cout => \u_config|Add0~15\);

-- Location: FF_X30_Y17_N25
\u_config|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_config|Add0~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|clk_cnt\(7));

-- Location: LCCOMB_X30_Y17_N26
\u_config|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add0~16_combout\ = \u_config|clk_cnt\(8) $ (!\u_config|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|clk_cnt\(8),
	cin => \u_config|Add0~15\,
	combout => \u_config|Add0~16_combout\);

-- Location: FF_X30_Y17_N27
\u_config|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_config|Add0~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|clk_cnt\(8));

-- Location: LCCOMB_X30_Y17_N30
\u_config|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Equal0~0_combout\ = (\u_config|clk_cnt\(6) & (\u_config|clk_cnt\(5) & (!\u_config|clk_cnt\(8) & !\u_config|clk_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|clk_cnt\(6),
	datab => \u_config|clk_cnt\(5),
	datac => \u_config|clk_cnt\(8),
	datad => \u_config|clk_cnt\(7),
	combout => \u_config|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y17_N8
\u_config|clk_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|clk_cnt~0_combout\ = (\u_config|Add0~0_combout\ & (((\u_config|clk_cnt\(0)) # (!\u_config|Equal0~1_combout\)) # (!\u_config|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|Add0~0_combout\,
	datab => \u_config|Equal0~0_combout\,
	datac => \u_config|clk_cnt\(0),
	datad => \u_config|Equal0~1_combout\,
	combout => \u_config|clk_cnt~0_combout\);

-- Location: FF_X30_Y17_N9
\u_config|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_config|clk_cnt~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|clk_cnt\(0));

-- Location: LCCOMB_X29_Y17_N30
\u_config|scl_clk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|scl_clk~0_combout\ = \u_config|scl_clk~q\ $ (((!\u_config|clk_cnt\(0) & (\u_config|Equal0~0_combout\ & \u_config|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|clk_cnt\(0),
	datab => \u_config|scl_clk~q\,
	datac => \u_config|Equal0~0_combout\,
	datad => \u_config|Equal0~1_combout\,
	combout => \u_config|scl_clk~0_combout\);

-- Location: LCCOMB_X29_Y17_N28
\u_config|scl_clk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|scl_clk~feeder_combout\ = \u_config|scl_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_config|scl_clk~0_combout\,
	combout => \u_config|scl_clk~feeder_combout\);

-- Location: FF_X29_Y17_N29
\u_config|scl_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_config|scl_clk~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|scl_clk~q\);

-- Location: CLKCTRL_G1
\u_config|scl_clk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_config|scl_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_config|scl_clk~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y18_N12
\u_config|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~0_combout\ = \u_config|delay_cnt\(0) $ (VCC)
-- \u_config|Add2~1\ = CARRY(\u_config|delay_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|delay_cnt\(0),
	datad => VCC,
	combout => \u_config|Add2~0_combout\,
	cout => \u_config|Add2~1\);

-- Location: LCCOMB_X34_Y18_N0
\u_config|Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector34~0_combout\ = (\u_config|state.DELAY~q\ & \u_config|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_config|state.DELAY~q\,
	datad => \u_config|Add2~0_combout\,
	combout => \u_config|Selector34~0_combout\);

-- Location: LCCOMB_X29_Y17_N24
\u_config|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr5~0_combout\ = (!\u_config|rom_addr\(5) & (!\u_config|rom_addr\(7) & !\u_config|rom_addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_config|rom_addr\(5),
	datac => \u_config|rom_addr\(7),
	datad => \u_config|rom_addr\(6),
	combout => \u_config|WideOr5~0_combout\);

-- Location: LCCOMB_X32_Y17_N20
\u_config|WideOr10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr10~0_combout\ = (!\u_config|rom_addr\(3) & (\u_config|rom_addr\(0) & (!\u_config|rom_addr\(2) & !\u_config|rom_addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(3),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(2),
	datad => \u_config|rom_addr\(4),
	combout => \u_config|WideOr10~0_combout\);

-- Location: LCCOMB_X32_Y17_N24
\u_config|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector16~0_combout\ = (!\u_config|rom_addr\(1) & (!\u_config|state.DELAY~q\ & (\u_config|WideOr5~0_combout\ & \u_config|WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|state.DELAY~q\,
	datac => \u_config|WideOr5~0_combout\,
	datad => \u_config|WideOr10~0_combout\,
	combout => \u_config|Selector16~0_combout\);

-- Location: LCCOMB_X32_Y17_N26
\u_config|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector20~0_combout\ = (!\u_config|state.DELAY~q\ & ((\u_config|rom_addr\(1)) # ((!\u_config|WideOr10~0_combout\) # (!\u_config|WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|state.DELAY~q\,
	datac => \u_config|WideOr5~0_combout\,
	datad => \u_config|WideOr10~0_combout\,
	combout => \u_config|Selector20~0_combout\);

-- Location: LCCOMB_X33_Y18_N16
\u_config|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~4_combout\ = (\u_config|delay_cnt\(2) & ((GND) # (!\u_config|Add2~3\))) # (!\u_config|delay_cnt\(2) & (\u_config|Add2~3\ $ (GND)))
-- \u_config|Add2~5\ = CARRY((\u_config|delay_cnt\(2)) # (!\u_config|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|delay_cnt\(2),
	datad => VCC,
	cin => \u_config|Add2~3\,
	combout => \u_config|Add2~4_combout\,
	cout => \u_config|Add2~5\);

-- Location: LCCOMB_X33_Y18_N18
\u_config|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~6_combout\ = (\u_config|delay_cnt\(3) & (\u_config|Add2~5\ & VCC)) # (!\u_config|delay_cnt\(3) & (!\u_config|Add2~5\))
-- \u_config|Add2~7\ = CARRY((!\u_config|delay_cnt\(3) & !\u_config|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|delay_cnt\(3),
	datad => VCC,
	cin => \u_config|Add2~5\,
	combout => \u_config|Add2~6_combout\,
	cout => \u_config|Add2~7\);

-- Location: LCCOMB_X33_Y18_N0
\u_config|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector31~0_combout\ = (\u_config|state.DELAY~q\ & \u_config|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_config|state.DELAY~q\,
	datad => \u_config|Add2~6_combout\,
	combout => \u_config|Selector31~0_combout\);

-- Location: FF_X33_Y18_N1
\u_config|delay_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector31~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(3));

-- Location: LCCOMB_X33_Y18_N20
\u_config|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~8_combout\ = (\u_config|delay_cnt\(4) & ((GND) # (!\u_config|Add2~7\))) # (!\u_config|delay_cnt\(4) & (\u_config|Add2~7\ $ (GND)))
-- \u_config|Add2~9\ = CARRY((\u_config|delay_cnt\(4)) # (!\u_config|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|delay_cnt\(4),
	datad => VCC,
	cin => \u_config|Add2~7\,
	combout => \u_config|Add2~8_combout\,
	cout => \u_config|Add2~9\);

-- Location: LCCOMB_X33_Y18_N10
\u_config|Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector30~0_combout\ = (\u_config|Selector20~0_combout\) # ((\u_config|state.DELAY~q\ & \u_config|Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_config|state.DELAY~q\,
	datac => \u_config|Selector20~0_combout\,
	datad => \u_config|Add2~8_combout\,
	combout => \u_config|Selector30~0_combout\);

-- Location: FF_X33_Y18_N11
\u_config|delay_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector30~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(4));

-- Location: LCCOMB_X33_Y18_N22
\u_config|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~10_combout\ = (\u_config|delay_cnt\(5) & (\u_config|Add2~9\ & VCC)) # (!\u_config|delay_cnt\(5) & (!\u_config|Add2~9\))
-- \u_config|Add2~11\ = CARRY((!\u_config|delay_cnt\(5) & !\u_config|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|delay_cnt\(5),
	datad => VCC,
	cin => \u_config|Add2~9\,
	combout => \u_config|Add2~10_combout\,
	cout => \u_config|Add2~11\);

-- Location: LCCOMB_X34_Y17_N0
\u_config|Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector29~0_combout\ = (\u_config|Selector16~0_combout\) # ((\u_config|state.DELAY~q\ & \u_config|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.DELAY~q\,
	datab => \u_config|Selector16~0_combout\,
	datad => \u_config|Add2~10_combout\,
	combout => \u_config|Selector29~0_combout\);

-- Location: FF_X34_Y17_N1
\u_config|delay_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector29~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(5));

-- Location: LCCOMB_X33_Y18_N24
\u_config|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~12_combout\ = (\u_config|delay_cnt\(6) & ((GND) # (!\u_config|Add2~11\))) # (!\u_config|delay_cnt\(6) & (\u_config|Add2~11\ $ (GND)))
-- \u_config|Add2~13\ = CARRY((\u_config|delay_cnt\(6)) # (!\u_config|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|delay_cnt\(6),
	datad => VCC,
	cin => \u_config|Add2~11\,
	combout => \u_config|Add2~12_combout\,
	cout => \u_config|Add2~13\);

-- Location: LCCOMB_X34_Y17_N10
\u_config|Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector28~0_combout\ = (\u_config|Selector20~0_combout\) # ((\u_config|state.DELAY~q\ & \u_config|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.DELAY~q\,
	datac => \u_config|Selector20~0_combout\,
	datad => \u_config|Add2~12_combout\,
	combout => \u_config|Selector28~0_combout\);

-- Location: FF_X34_Y17_N11
\u_config|delay_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector28~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(6));

-- Location: LCCOMB_X33_Y18_N26
\u_config|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~14_combout\ = (\u_config|delay_cnt\(7) & (\u_config|Add2~13\ & VCC)) # (!\u_config|delay_cnt\(7) & (!\u_config|Add2~13\))
-- \u_config|Add2~15\ = CARRY((!\u_config|delay_cnt\(7) & !\u_config|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|delay_cnt\(7),
	datad => VCC,
	cin => \u_config|Add2~13\,
	combout => \u_config|Add2~14_combout\,
	cout => \u_config|Add2~15\);

-- Location: LCCOMB_X34_Y17_N20
\u_config|Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector27~0_combout\ = (\u_config|state.DELAY~q\ & \u_config|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_config|state.DELAY~q\,
	datad => \u_config|Add2~14_combout\,
	combout => \u_config|Selector27~0_combout\);

-- Location: FF_X34_Y17_N21
\u_config|delay_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector27~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(7));

-- Location: LCCOMB_X33_Y18_N28
\u_config|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~16_combout\ = (\u_config|delay_cnt\(8) & ((GND) # (!\u_config|Add2~15\))) # (!\u_config|delay_cnt\(8) & (\u_config|Add2~15\ $ (GND)))
-- \u_config|Add2~17\ = CARRY((\u_config|delay_cnt\(8)) # (!\u_config|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|delay_cnt\(8),
	datad => VCC,
	cin => \u_config|Add2~15\,
	combout => \u_config|Add2~16_combout\,
	cout => \u_config|Add2~17\);

-- Location: LCCOMB_X33_Y18_N8
\u_config|Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector26~0_combout\ = (\u_config|Add2~16_combout\) # (!\u_config|state.DELAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_config|state.DELAY~q\,
	datad => \u_config|Add2~16_combout\,
	combout => \u_config|Selector26~0_combout\);

-- Location: FF_X33_Y18_N9
\u_config|delay_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector26~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(8));

-- Location: LCCOMB_X33_Y18_N30
\u_config|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~18_combout\ = (\u_config|delay_cnt\(9) & (\u_config|Add2~17\ & VCC)) # (!\u_config|delay_cnt\(9) & (!\u_config|Add2~17\))
-- \u_config|Add2~19\ = CARRY((!\u_config|delay_cnt\(9) & !\u_config|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|delay_cnt\(9),
	datad => VCC,
	cin => \u_config|Add2~17\,
	combout => \u_config|Add2~18_combout\,
	cout => \u_config|Add2~19\);

-- Location: LCCOMB_X34_Y17_N4
\u_config|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector25~0_combout\ = (\u_config|Selector20~0_combout\) # ((\u_config|state.DELAY~q\ & \u_config|Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.DELAY~q\,
	datac => \u_config|Selector20~0_combout\,
	datad => \u_config|Add2~18_combout\,
	combout => \u_config|Selector25~0_combout\);

-- Location: FF_X34_Y17_N5
\u_config|delay_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector25~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(9));

-- Location: LCCOMB_X33_Y17_N0
\u_config|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~20_combout\ = (\u_config|delay_cnt\(10) & ((GND) # (!\u_config|Add2~19\))) # (!\u_config|delay_cnt\(10) & (\u_config|Add2~19\ $ (GND)))
-- \u_config|Add2~21\ = CARRY((\u_config|delay_cnt\(10)) # (!\u_config|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|delay_cnt\(10),
	datad => VCC,
	cin => \u_config|Add2~19\,
	combout => \u_config|Add2~20_combout\,
	cout => \u_config|Add2~21\);

-- Location: LCCOMB_X33_Y17_N24
\u_config|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector24~0_combout\ = (\u_config|state.DELAY~q\ & \u_config|Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_config|state.DELAY~q\,
	datad => \u_config|Add2~20_combout\,
	combout => \u_config|Selector24~0_combout\);

-- Location: FF_X33_Y17_N25
\u_config|delay_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector24~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(10));

-- Location: LCCOMB_X33_Y17_N2
\u_config|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~22_combout\ = (\u_config|delay_cnt\(11) & (\u_config|Add2~21\ & VCC)) # (!\u_config|delay_cnt\(11) & (!\u_config|Add2~21\))
-- \u_config|Add2~23\ = CARRY((!\u_config|delay_cnt\(11) & !\u_config|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|delay_cnt\(11),
	datad => VCC,
	cin => \u_config|Add2~21\,
	combout => \u_config|Add2~22_combout\,
	cout => \u_config|Add2~23\);

-- Location: LCCOMB_X33_Y17_N30
\u_config|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector23~0_combout\ = (\u_config|state.DELAY~q\ & \u_config|Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_config|state.DELAY~q\,
	datad => \u_config|Add2~22_combout\,
	combout => \u_config|Selector23~0_combout\);

-- Location: FF_X33_Y17_N31
\u_config|delay_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector23~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(11));

-- Location: LCCOMB_X33_Y17_N4
\u_config|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~24_combout\ = (\u_config|delay_cnt\(12) & ((GND) # (!\u_config|Add2~23\))) # (!\u_config|delay_cnt\(12) & (\u_config|Add2~23\ $ (GND)))
-- \u_config|Add2~25\ = CARRY((\u_config|delay_cnt\(12)) # (!\u_config|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|delay_cnt\(12),
	datad => VCC,
	cin => \u_config|Add2~23\,
	combout => \u_config|Add2~24_combout\,
	cout => \u_config|Add2~25\);

-- Location: LCCOMB_X33_Y17_N28
\u_config|Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector22~1_combout\ = (\u_config|Add2~24_combout\ & \u_config|state.DELAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_config|Add2~24_combout\,
	datad => \u_config|state.DELAY~q\,
	combout => \u_config|Selector22~1_combout\);

-- Location: FF_X33_Y17_N29
\u_config|delay_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector22~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(12));

-- Location: LCCOMB_X33_Y17_N6
\u_config|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~26_combout\ = (\u_config|delay_cnt\(13) & (\u_config|Add2~25\ & VCC)) # (!\u_config|delay_cnt\(13) & (!\u_config|Add2~25\))
-- \u_config|Add2~27\ = CARRY((!\u_config|delay_cnt\(13) & !\u_config|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|delay_cnt\(13),
	datad => VCC,
	cin => \u_config|Add2~25\,
	combout => \u_config|Add2~26_combout\,
	cout => \u_config|Add2~27\);

-- Location: LCCOMB_X34_Y17_N28
\u_config|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector21~0_combout\ = (\u_config|Selector16~0_combout\) # ((\u_config|state.DELAY~q\ & \u_config|Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.DELAY~q\,
	datac => \u_config|Add2~26_combout\,
	datad => \u_config|Selector16~0_combout\,
	combout => \u_config|Selector21~0_combout\);

-- Location: FF_X34_Y17_N29
\u_config|delay_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector21~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(13));

-- Location: LCCOMB_X33_Y17_N8
\u_config|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~28_combout\ = (\u_config|delay_cnt\(14) & ((GND) # (!\u_config|Add2~27\))) # (!\u_config|delay_cnt\(14) & (\u_config|Add2~27\ $ (GND)))
-- \u_config|Add2~29\ = CARRY((\u_config|delay_cnt\(14)) # (!\u_config|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|delay_cnt\(14),
	datad => VCC,
	cin => \u_config|Add2~27\,
	combout => \u_config|Add2~28_combout\,
	cout => \u_config|Add2~29\);

-- Location: LCCOMB_X33_Y17_N26
\u_config|Selector20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector20~1_combout\ = (\u_config|Selector20~0_combout\) # ((\u_config|Add2~28_combout\ & \u_config|state.DELAY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|Selector20~0_combout\,
	datac => \u_config|Add2~28_combout\,
	datad => \u_config|state.DELAY~q\,
	combout => \u_config|Selector20~1_combout\);

-- Location: FF_X33_Y17_N27
\u_config|delay_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector20~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(14));

-- Location: LCCOMB_X33_Y17_N10
\u_config|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~30_combout\ = (\u_config|delay_cnt\(15) & (\u_config|Add2~29\ & VCC)) # (!\u_config|delay_cnt\(15) & (!\u_config|Add2~29\))
-- \u_config|Add2~31\ = CARRY((!\u_config|delay_cnt\(15) & !\u_config|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|delay_cnt\(15),
	datad => VCC,
	cin => \u_config|Add2~29\,
	combout => \u_config|Add2~30_combout\,
	cout => \u_config|Add2~31\);

-- Location: LCCOMB_X33_Y17_N20
\u_config|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector19~0_combout\ = (\u_config|Add2~30_combout\) # (!\u_config|state.DELAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_config|state.DELAY~q\,
	datad => \u_config|Add2~30_combout\,
	combout => \u_config|Selector19~0_combout\);

-- Location: FF_X33_Y17_N21
\u_config|delay_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector19~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(15));

-- Location: LCCOMB_X33_Y17_N12
\u_config|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~32_combout\ = (\u_config|delay_cnt\(16) & ((GND) # (!\u_config|Add2~31\))) # (!\u_config|delay_cnt\(16) & (\u_config|Add2~31\ $ (GND)))
-- \u_config|Add2~33\ = CARRY((\u_config|delay_cnt\(16)) # (!\u_config|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|delay_cnt\(16),
	datad => VCC,
	cin => \u_config|Add2~31\,
	combout => \u_config|Add2~32_combout\,
	cout => \u_config|Add2~33\);

-- Location: LCCOMB_X34_Y17_N12
\u_config|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector18~0_combout\ = (\u_config|Selector16~0_combout\) # ((\u_config|state.DELAY~q\ & \u_config|Add2~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.DELAY~q\,
	datab => \u_config|Selector16~0_combout\,
	datad => \u_config|Add2~32_combout\,
	combout => \u_config|Selector18~0_combout\);

-- Location: FF_X34_Y17_N13
\u_config|delay_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector18~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(16));

-- Location: LCCOMB_X33_Y17_N14
\u_config|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~34_combout\ = (\u_config|delay_cnt\(17) & (\u_config|Add2~33\ & VCC)) # (!\u_config|delay_cnt\(17) & (!\u_config|Add2~33\))
-- \u_config|Add2~35\ = CARRY((!\u_config|delay_cnt\(17) & !\u_config|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|delay_cnt\(17),
	datad => VCC,
	cin => \u_config|Add2~33\,
	combout => \u_config|Add2~34_combout\,
	cout => \u_config|Add2~35\);

-- Location: LCCOMB_X34_Y17_N6
\u_config|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector17~0_combout\ = (\u_config|Selector16~0_combout\) # ((\u_config|state.DELAY~q\ & \u_config|Add2~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.DELAY~q\,
	datab => \u_config|Selector16~0_combout\,
	datad => \u_config|Add2~34_combout\,
	combout => \u_config|Selector17~0_combout\);

-- Location: FF_X34_Y17_N7
\u_config|delay_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector17~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(17));

-- Location: LCCOMB_X33_Y17_N16
\u_config|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~36_combout\ = (\u_config|delay_cnt\(18) & ((GND) # (!\u_config|Add2~35\))) # (!\u_config|delay_cnt\(18) & (\u_config|Add2~35\ $ (GND)))
-- \u_config|Add2~37\ = CARRY((\u_config|delay_cnt\(18)) # (!\u_config|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|delay_cnt\(18),
	datad => VCC,
	cin => \u_config|Add2~35\,
	combout => \u_config|Add2~36_combout\,
	cout => \u_config|Add2~37\);

-- Location: LCCOMB_X34_Y17_N8
\u_config|Selector16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector16~1_combout\ = (\u_config|Selector16~0_combout\) # ((\u_config|state.DELAY~q\ & \u_config|Add2~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.DELAY~q\,
	datac => \u_config|Add2~36_combout\,
	datad => \u_config|Selector16~0_combout\,
	combout => \u_config|Selector16~1_combout\);

-- Location: FF_X34_Y17_N9
\u_config|delay_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector16~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(18));

-- Location: LCCOMB_X33_Y17_N18
\u_config|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~38_combout\ = \u_config|Add2~37\ $ (!\u_config|delay_cnt\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_config|delay_cnt\(19),
	cin => \u_config|Add2~37\,
	combout => \u_config|Add2~38_combout\);

-- Location: LCCOMB_X32_Y17_N6
\u_config|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector15~0_combout\ = (\u_config|Add2~38_combout\ & ((\u_config|LessThan0~0_combout\) # (\u_config|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|LessThan0~0_combout\,
	datac => \u_config|LessThan0~5_combout\,
	datad => \u_config|Add2~38_combout\,
	combout => \u_config|Selector15~0_combout\);

-- Location: LCCOMB_X32_Y17_N22
\u_config|Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector15~1_combout\ = (\u_config|state.DELAY~q\ & (((\u_config|Selector15~0_combout\)))) # (!\u_config|state.DELAY~q\ & (!\u_config|state.STOP~q\ & (\u_config|delay_cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.DELAY~q\,
	datab => \u_config|state.STOP~q\,
	datac => \u_config|delay_cnt\(19),
	datad => \u_config|Selector15~0_combout\,
	combout => \u_config|Selector15~1_combout\);

-- Location: FF_X32_Y17_N23
\u_config|delay_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector15~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(19));

-- Location: LCCOMB_X34_Y17_N30
\u_config|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|LessThan0~1_combout\ = (\u_config|delay_cnt\(17)) # ((\u_config|delay_cnt\(18)) # ((\u_config|delay_cnt\(19)) # (\u_config|delay_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|delay_cnt\(17),
	datab => \u_config|delay_cnt\(18),
	datac => \u_config|delay_cnt\(19),
	datad => \u_config|delay_cnt\(16),
	combout => \u_config|LessThan0~1_combout\);

-- Location: LCCOMB_X34_Y17_N18
\u_config|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|LessThan0~2_combout\ = (\u_config|delay_cnt\(14)) # ((\u_config|delay_cnt\(13)) # ((\u_config|delay_cnt\(12)) # (\u_config|delay_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|delay_cnt\(14),
	datab => \u_config|delay_cnt\(13),
	datac => \u_config|delay_cnt\(12),
	datad => \u_config|delay_cnt\(15),
	combout => \u_config|LessThan0~2_combout\);

-- Location: LCCOMB_X34_Y17_N14
\u_config|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|LessThan0~4_combout\ = (\u_config|delay_cnt\(6)) # ((\u_config|delay_cnt\(7)) # ((\u_config|delay_cnt\(4)) # (\u_config|delay_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|delay_cnt\(6),
	datab => \u_config|delay_cnt\(7),
	datac => \u_config|delay_cnt\(4),
	datad => \u_config|delay_cnt\(5),
	combout => \u_config|LessThan0~4_combout\);

-- Location: LCCOMB_X34_Y17_N2
\u_config|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|LessThan0~3_combout\ = (\u_config|delay_cnt\(9)) # ((\u_config|delay_cnt\(11)) # ((\u_config|delay_cnt\(8)) # (\u_config|delay_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|delay_cnt\(9),
	datab => \u_config|delay_cnt\(11),
	datac => \u_config|delay_cnt\(8),
	datad => \u_config|delay_cnt\(10),
	combout => \u_config|LessThan0~3_combout\);

-- Location: LCCOMB_X34_Y17_N24
\u_config|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|LessThan0~5_combout\ = (\u_config|LessThan0~1_combout\) # ((\u_config|LessThan0~2_combout\) # ((\u_config|LessThan0~4_combout\) # (\u_config|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|LessThan0~1_combout\,
	datab => \u_config|LessThan0~2_combout\,
	datac => \u_config|LessThan0~4_combout\,
	datad => \u_config|LessThan0~3_combout\,
	combout => \u_config|LessThan0~5_combout\);

-- Location: LCCOMB_X32_Y17_N2
\u_config|rom_addr[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|rom_addr[0]~9_combout\ = \u_config|rom_addr\(0) $ (((!\u_config|LessThan0~0_combout\ & (\u_config|state.DELAY~q\ & !\u_config|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|LessThan0~0_combout\,
	datab => \u_config|state.DELAY~q\,
	datac => \u_config|rom_addr\(0),
	datad => \u_config|LessThan0~5_combout\,
	combout => \u_config|rom_addr[0]~9_combout\);

-- Location: FF_X32_Y17_N3
\u_config|rom_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|rom_addr[0]~9_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|rom_addr\(0));

-- Location: LCCOMB_X29_Y17_N10
\u_config|rom_addr[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|rom_addr[1]~7_combout\ = (\u_config|rom_addr\(1) & (\u_config|rom_addr\(0) $ (VCC))) # (!\u_config|rom_addr\(1) & (\u_config|rom_addr\(0) & VCC))
-- \u_config|rom_addr[1]~8\ = CARRY((\u_config|rom_addr\(1) & \u_config|rom_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datad => VCC,
	combout => \u_config|rom_addr[1]~7_combout\,
	cout => \u_config|rom_addr[1]~8\);

-- Location: LCCOMB_X34_Y17_N16
\u_config|Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector8~1_combout\ = ((\u_config|LessThan0~0_combout\) # (\u_config|LessThan0~5_combout\)) # (!\u_config|state.DELAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.DELAY~q\,
	datac => \u_config|LessThan0~0_combout\,
	datad => \u_config|LessThan0~5_combout\,
	combout => \u_config|Selector8~1_combout\);

-- Location: FF_X29_Y17_N11
\u_config|rom_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|rom_addr[1]~7_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|rom_addr\(1));

-- Location: LCCOMB_X29_Y17_N12
\u_config|rom_addr[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|rom_addr[2]~10_combout\ = (\u_config|rom_addr\(2) & (!\u_config|rom_addr[1]~8\)) # (!\u_config|rom_addr\(2) & ((\u_config|rom_addr[1]~8\) # (GND)))
-- \u_config|rom_addr[2]~11\ = CARRY((!\u_config|rom_addr[1]~8\) # (!\u_config|rom_addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(2),
	datad => VCC,
	cin => \u_config|rom_addr[1]~8\,
	combout => \u_config|rom_addr[2]~10_combout\,
	cout => \u_config|rom_addr[2]~11\);

-- Location: FF_X29_Y17_N13
\u_config|rom_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|rom_addr[2]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|rom_addr\(2));

-- Location: LCCOMB_X29_Y17_N14
\u_config|rom_addr[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|rom_addr[3]~12_combout\ = (\u_config|rom_addr\(3) & (\u_config|rom_addr[2]~11\ $ (GND))) # (!\u_config|rom_addr\(3) & (!\u_config|rom_addr[2]~11\ & VCC))
-- \u_config|rom_addr[3]~13\ = CARRY((\u_config|rom_addr\(3) & !\u_config|rom_addr[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|rom_addr\(3),
	datad => VCC,
	cin => \u_config|rom_addr[2]~11\,
	combout => \u_config|rom_addr[3]~12_combout\,
	cout => \u_config|rom_addr[3]~13\);

-- Location: FF_X29_Y17_N15
\u_config|rom_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|rom_addr[3]~12_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|rom_addr\(3));

-- Location: LCCOMB_X29_Y17_N16
\u_config|rom_addr[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|rom_addr[4]~14_combout\ = (\u_config|rom_addr\(4) & (!\u_config|rom_addr[3]~13\)) # (!\u_config|rom_addr\(4) & ((\u_config|rom_addr[3]~13\) # (GND)))
-- \u_config|rom_addr[4]~15\ = CARRY((!\u_config|rom_addr[3]~13\) # (!\u_config|rom_addr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|rom_addr\(4),
	datad => VCC,
	cin => \u_config|rom_addr[3]~13\,
	combout => \u_config|rom_addr[4]~14_combout\,
	cout => \u_config|rom_addr[4]~15\);

-- Location: FF_X29_Y17_N17
\u_config|rom_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|rom_addr[4]~14_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|rom_addr\(4));

-- Location: LCCOMB_X29_Y17_N18
\u_config|rom_addr[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|rom_addr[5]~16_combout\ = (\u_config|rom_addr\(5) & (\u_config|rom_addr[4]~15\ $ (GND))) # (!\u_config|rom_addr\(5) & (!\u_config|rom_addr[4]~15\ & VCC))
-- \u_config|rom_addr[5]~17\ = CARRY((\u_config|rom_addr\(5) & !\u_config|rom_addr[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|rom_addr\(5),
	datad => VCC,
	cin => \u_config|rom_addr[4]~15\,
	combout => \u_config|rom_addr[5]~16_combout\,
	cout => \u_config|rom_addr[5]~17\);

-- Location: FF_X29_Y17_N19
\u_config|rom_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|rom_addr[5]~16_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|rom_addr\(5));

-- Location: LCCOMB_X29_Y17_N20
\u_config|rom_addr[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|rom_addr[6]~18_combout\ = (\u_config|rom_addr\(6) & (!\u_config|rom_addr[5]~17\)) # (!\u_config|rom_addr\(6) & ((\u_config|rom_addr[5]~17\) # (GND)))
-- \u_config|rom_addr[6]~19\ = CARRY((!\u_config|rom_addr[5]~17\) # (!\u_config|rom_addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|rom_addr\(6),
	datad => VCC,
	cin => \u_config|rom_addr[5]~17\,
	combout => \u_config|rom_addr[6]~18_combout\,
	cout => \u_config|rom_addr[6]~19\);

-- Location: FF_X29_Y17_N21
\u_config|rom_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|rom_addr[6]~18_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|rom_addr\(6));

-- Location: LCCOMB_X29_Y17_N22
\u_config|rom_addr[7]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|rom_addr[7]~20_combout\ = \u_config|rom_addr\(7) $ (!\u_config|rom_addr[6]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(7),
	cin => \u_config|rom_addr[6]~19\,
	combout => \u_config|rom_addr[7]~20_combout\);

-- Location: FF_X29_Y17_N23
\u_config|rom_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|rom_addr[7]~20_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|ALT_INV_Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|rom_addr\(7));

-- Location: LCCOMB_X29_Y17_N4
\u_config|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Equal1~3_combout\ = (\u_config|rom_addr\(4) & ((\u_config|rom_addr\(3)) # ((\u_config|rom_addr\(1) & \u_config|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(4),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|Equal1~3_combout\);

-- Location: LCCOMB_X29_Y17_N8
\u_config|sccb_data[15]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|sccb_data[15]~16_combout\ = (\u_config|rom_addr\(7)) # ((\u_config|rom_addr\(5)) # ((\u_config|Equal1~3_combout\) # (\u_config|rom_addr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(7),
	datab => \u_config|rom_addr\(5),
	datac => \u_config|Equal1~3_combout\,
	datad => \u_config|rom_addr\(6),
	combout => \u_config|sccb_data[15]~16_combout\);

-- Location: FF_X34_Y17_N17
\u_config|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector8~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|state.IDLE~q\);

-- Location: LCCOMB_X32_Y17_N28
\u_config|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector8~0_combout\ = (!\u_config|Selector0~0_combout\ & ((\u_config|LessThan0~0_combout\) # ((\u_config|LessThan0~5_combout\) # (!\u_config|state.DELAY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|LessThan0~0_combout\,
	datab => \u_config|state.DELAY~q\,
	datac => \u_config|LessThan0~5_combout\,
	datad => \u_config|Selector0~0_combout\,
	combout => \u_config|Selector8~0_combout\);

-- Location: LCCOMB_X32_Y17_N0
\u_config|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector3~0_combout\ = (\u_config|Selector8~0_combout\ & ((\u_config|state.IDLE~q\ & ((\u_config|state.START~q\))) # (!\u_config|state.IDLE~q\ & (!\u_config|sccb_data[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|sccb_data[15]~16_combout\,
	datab => \u_config|state.IDLE~q\,
	datac => \u_config|state.START~q\,
	datad => \u_config|Selector8~0_combout\,
	combout => \u_config|Selector3~0_combout\);

-- Location: FF_X32_Y17_N1
\u_config|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector3~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|state.START~q\);

-- Location: LCCOMB_X30_Y18_N18
\u_config|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add1~0_combout\ = \u_config|bit_idx\(0) $ (VCC)
-- \u_config|Add1~1\ = CARRY(\u_config|bit_idx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_config|bit_idx\(0),
	datad => VCC,
	combout => \u_config|Add1~0_combout\,
	cout => \u_config|Add1~1\);

-- Location: LCCOMB_X30_Y18_N14
\u_config|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector14~0_combout\ = (\u_config|Add1~0_combout\) # (!\u_config|state.ACK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.ACK~q\,
	datad => \u_config|Add1~0_combout\,
	combout => \u_config|Selector14~0_combout\);

-- Location: LCCOMB_X30_Y18_N30
\u_config|bit_idx[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|bit_idx[1]~0_combout\ = (!\u_config|Selector6~0_combout\ & ((\u_config|state.ACK~q\) # (\u_config|state.START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.ACK~q\,
	datac => \u_config|state.START~q\,
	datad => \u_config|Selector6~0_combout\,
	combout => \u_config|bit_idx[1]~0_combout\);

-- Location: FF_X30_Y18_N15
\u_config|bit_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector14~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|bit_idx[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|bit_idx\(0));

-- Location: LCCOMB_X30_Y18_N20
\u_config|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add1~2_combout\ = (\u_config|bit_idx\(1) & (\u_config|Add1~1\ & VCC)) # (!\u_config|bit_idx\(1) & (!\u_config|Add1~1\))
-- \u_config|Add1~3\ = CARRY((!\u_config|bit_idx\(1) & !\u_config|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|bit_idx\(1),
	datad => VCC,
	cin => \u_config|Add1~1\,
	combout => \u_config|Add1~2_combout\,
	cout => \u_config|Add1~3\);

-- Location: LCCOMB_X30_Y18_N4
\u_config|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector13~0_combout\ = (\u_config|Add1~2_combout\) # (!\u_config|state.ACK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.ACK~q\,
	datad => \u_config|Add1~2_combout\,
	combout => \u_config|Selector13~0_combout\);

-- Location: FF_X30_Y18_N5
\u_config|bit_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector13~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|bit_idx[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|bit_idx\(1));

-- Location: LCCOMB_X30_Y18_N22
\u_config|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add1~4_combout\ = (\u_config|bit_idx\(2) & ((GND) # (!\u_config|Add1~3\))) # (!\u_config|bit_idx\(2) & (\u_config|Add1~3\ $ (GND)))
-- \u_config|Add1~5\ = CARRY((\u_config|bit_idx\(2)) # (!\u_config|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|bit_idx\(2),
	datad => VCC,
	cin => \u_config|Add1~3\,
	combout => \u_config|Add1~4_combout\,
	cout => \u_config|Add1~5\);

-- Location: LCCOMB_X30_Y18_N16
\u_config|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector12~0_combout\ = (\u_config|Add1~4_combout\) # (!\u_config|state.ACK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_config|Add1~4_combout\,
	datad => \u_config|state.ACK~q\,
	combout => \u_config|Selector12~0_combout\);

-- Location: FF_X30_Y18_N17
\u_config|bit_idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector12~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|bit_idx[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|bit_idx\(2));

-- Location: LCCOMB_X30_Y18_N24
\u_config|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add1~6_combout\ = (\u_config|bit_idx\(3) & (\u_config|Add1~5\ & VCC)) # (!\u_config|bit_idx\(3) & (!\u_config|Add1~5\))
-- \u_config|Add1~7\ = CARRY((!\u_config|bit_idx\(3) & !\u_config|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|bit_idx\(3),
	datad => VCC,
	cin => \u_config|Add1~5\,
	combout => \u_config|Add1~6_combout\,
	cout => \u_config|Add1~7\);

-- Location: LCCOMB_X30_Y18_N2
\u_config|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector11~0_combout\ = (\u_config|Selector4~0_combout\ & \u_config|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_config|Selector4~0_combout\,
	datad => \u_config|Add1~6_combout\,
	combout => \u_config|Selector11~0_combout\);

-- Location: LCCOMB_X32_Y18_N0
\u_config|Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector9~1_combout\ = (\u_config|state.ACK~q\) # (\u_config|state.START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_config|state.ACK~q\,
	datad => \u_config|state.START~q\,
	combout => \u_config|Selector9~1_combout\);

-- Location: FF_X30_Y18_N3
\u_config|bit_idx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector11~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|bit_idx\(3));

-- Location: LCCOMB_X29_Y18_N10
\u_config|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Equal4~1_combout\ = (!\u_config|bit_idx\(3) & (!\u_config|bit_idx\(0) & !\u_config|bit_idx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|bit_idx\(3),
	datac => \u_config|bit_idx\(0),
	datad => \u_config|bit_idx\(1),
	combout => \u_config|Equal4~1_combout\);

-- Location: LCCOMB_X30_Y18_N26
\u_config|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add1~8_combout\ = (\u_config|bit_idx\(4) & ((GND) # (!\u_config|Add1~7\))) # (!\u_config|bit_idx\(4) & (\u_config|Add1~7\ $ (GND)))
-- \u_config|Add1~9\ = CARRY((\u_config|bit_idx\(4)) # (!\u_config|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|bit_idx\(4),
	datad => VCC,
	cin => \u_config|Add1~7\,
	combout => \u_config|Add1~8_combout\,
	cout => \u_config|Add1~9\);

-- Location: LCCOMB_X30_Y18_N0
\u_config|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector10~0_combout\ = (\u_config|Add1~8_combout\) # (!\u_config|state.ACK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_config|Add1~8_combout\,
	datad => \u_config|state.ACK~q\,
	combout => \u_config|Selector10~0_combout\);

-- Location: FF_X30_Y18_N1
\u_config|bit_idx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector10~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|bit_idx[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|bit_idx\(4));

-- Location: LCCOMB_X30_Y18_N28
\u_config|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add1~10_combout\ = \u_config|Add1~9\ $ (!\u_config|bit_idx\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_config|bit_idx\(5),
	cin => \u_config|Add1~9\,
	combout => \u_config|Add1~10_combout\);

-- Location: LCCOMB_X30_Y18_N10
\u_config|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector9~0_combout\ = (\u_config|Selector4~0_combout\ & \u_config|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_config|Selector4~0_combout\,
	datad => \u_config|Add1~10_combout\,
	combout => \u_config|Selector9~0_combout\);

-- Location: FF_X30_Y18_N11
\u_config|bit_idx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector9~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|bit_idx\(5));

-- Location: LCCOMB_X30_Y18_N8
\u_config|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Equal4~0_combout\ = (!\u_config|bit_idx\(5) & !\u_config|bit_idx\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|bit_idx\(5),
	datad => \u_config|bit_idx\(4),
	combout => \u_config|Equal4~0_combout\);

-- Location: LCCOMB_X29_Y18_N0
\u_config|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector4~0_combout\ = (\u_config|state.ACK~q\ & (((\u_config|bit_idx\(2)) # (!\u_config|Equal4~0_combout\)) # (!\u_config|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|Equal4~1_combout\,
	datab => \u_config|Equal4~0_combout\,
	datac => \u_config|state.ACK~q\,
	datad => \u_config|bit_idx\(2),
	combout => \u_config|Selector4~0_combout\);

-- Location: LCCOMB_X32_Y18_N22
\u_config|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector4~1_combout\ = (\u_config|state.START~q\) # (\u_config|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_config|state.START~q\,
	datad => \u_config|Selector4~0_combout\,
	combout => \u_config|Selector4~1_combout\);

-- Location: FF_X32_Y18_N23
\u_config|state.BYTE_SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector4~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|state.BYTE_SEND~q\);

-- Location: FF_X29_Y18_N1
\u_config|state.ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	asdata => \u_config|state.BYTE_SEND~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|state.ACK~q\);

-- Location: LCCOMB_X30_Y18_N12
\u_config|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector6~0_combout\ = (\u_config|state.ACK~q\ & (!\u_config|bit_idx\(2) & (\u_config|Equal4~0_combout\ & \u_config|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.ACK~q\,
	datab => \u_config|bit_idx\(2),
	datac => \u_config|Equal4~0_combout\,
	datad => \u_config|Equal4~1_combout\,
	combout => \u_config|Selector6~0_combout\);

-- Location: FF_X32_Y18_N9
\u_config|state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	asdata => \u_config|Selector6~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|state.STOP~q\);

-- Location: LCCOMB_X34_Y17_N22
\u_config|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector22~0_combout\ = (\u_config|state.DELAY~q\ & (((\u_config|LessThan0~0_combout\) # (\u_config|LessThan0~5_combout\)))) # (!\u_config|state.DELAY~q\ & (\u_config|state.STOP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.DELAY~q\,
	datab => \u_config|state.STOP~q\,
	datac => \u_config|LessThan0~0_combout\,
	datad => \u_config|LessThan0~5_combout\,
	combout => \u_config|Selector22~0_combout\);

-- Location: FF_X33_Y18_N7
\u_config|delay_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	asdata => \u_config|Selector34~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(0));

-- Location: LCCOMB_X33_Y18_N14
\u_config|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Add2~2_combout\ = (\u_config|delay_cnt\(1) & (\u_config|Add2~1\ & VCC)) # (!\u_config|delay_cnt\(1) & (!\u_config|Add2~1\))
-- \u_config|Add2~3\ = CARRY((!\u_config|delay_cnt\(1) & !\u_config|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_config|delay_cnt\(1),
	datad => VCC,
	cin => \u_config|Add2~1\,
	combout => \u_config|Add2~2_combout\,
	cout => \u_config|Add2~3\);

-- Location: LCCOMB_X33_Y18_N4
\u_config|Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector33~0_combout\ = (\u_config|state.DELAY~q\ & \u_config|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_config|state.DELAY~q\,
	datac => \u_config|Add2~2_combout\,
	combout => \u_config|Selector33~0_combout\);

-- Location: FF_X33_Y18_N5
\u_config|delay_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector33~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(1));

-- Location: LCCOMB_X33_Y18_N2
\u_config|Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector32~0_combout\ = (\u_config|state.DELAY~q\ & \u_config|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_config|state.DELAY~q\,
	datad => \u_config|Add2~4_combout\,
	combout => \u_config|Selector32~0_combout\);

-- Location: FF_X33_Y18_N3
\u_config|delay_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector32~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_config|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|delay_cnt\(2));

-- Location: LCCOMB_X33_Y18_N6
\u_config|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|LessThan0~0_combout\ = (\u_config|delay_cnt\(2)) # ((\u_config|delay_cnt\(1)) # ((\u_config|delay_cnt\(0)) # (\u_config|delay_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|delay_cnt\(2),
	datab => \u_config|delay_cnt\(1),
	datac => \u_config|delay_cnt\(0),
	datad => \u_config|delay_cnt\(3),
	combout => \u_config|LessThan0~0_combout\);

-- Location: LCCOMB_X34_Y17_N26
\u_config|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector7~0_combout\ = (\u_config|state.STOP~q\) # ((\u_config|state.DELAY~q\ & ((\u_config|LessThan0~0_combout\) # (\u_config|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|LessThan0~0_combout\,
	datab => \u_config|state.STOP~q\,
	datac => \u_config|state.DELAY~q\,
	datad => \u_config|LessThan0~5_combout\,
	combout => \u_config|Selector7~0_combout\);

-- Location: FF_X34_Y17_N27
\u_config|state.DELAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector7~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|state.DELAY~q\);

-- Location: LCCOMB_X32_Y17_N12
\u_config|Selector8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector8~2_combout\ = (\u_config|Selector8~0_combout\ & ((\u_config|state.IDLE~q\ & ((\u_config|state.DONE~q\))) # (!\u_config|state.IDLE~q\ & (\u_config|sccb_data[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|sccb_data[15]~16_combout\,
	datab => \u_config|state.IDLE~q\,
	datac => \u_config|state.DONE~q\,
	datad => \u_config|Selector8~0_combout\,
	combout => \u_config|Selector8~2_combout\);

-- Location: FF_X32_Y17_N13
\u_config|state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector8~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|state.DONE~q\);

-- Location: LCCOMB_X32_Y17_N10
\u_config|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector0~0_combout\ = (!\u_config|state.DELAY~q\ & (\u_config|state.IDLE~q\ & !\u_config|state.DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.DELAY~q\,
	datac => \u_config|state.IDLE~q\,
	datad => \u_config|state.DONE~q\,
	combout => \u_config|Selector0~0_combout\);

-- Location: LCCOMB_X29_Y18_N26
\u_config|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Mux0~0_combout\ = (!\u_config|bit_idx\(3) & (\u_config|bit_idx\(2) & (\u_config|bit_idx\(0) $ (\u_config|bit_idx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|bit_idx\(3),
	datab => \u_config|bit_idx\(2),
	datac => \u_config|bit_idx\(0),
	datad => \u_config|bit_idx\(1),
	combout => \u_config|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y18_N26
\u_config|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr4~0_combout\ = (\u_config|rom_addr\(2) & (\u_config|rom_addr\(1) & ((\u_config|rom_addr\(0)) # (!\u_config|rom_addr\(3))))) # (!\u_config|rom_addr\(2) & (\u_config|rom_addr\(3) $ (((!\u_config|rom_addr\(1) & \u_config|rom_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr4~0_combout\);

-- Location: LCCOMB_X27_Y18_N8
\u_config|WideOr9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr9~0_combout\ = (!\u_config|rom_addr\(3) & ((\u_config|rom_addr\(1) & (\u_config|rom_addr\(0) & !\u_config|rom_addr\(2))) # (!\u_config|rom_addr\(1) & (!\u_config|rom_addr\(0) & \u_config|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr9~0_combout\);

-- Location: LCCOMB_X28_Y18_N18
\u_config|WideOr4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr4~1_combout\ = ((\u_config|rom_addr\(4) & ((!\u_config|WideOr9~0_combout\))) # (!\u_config|rom_addr\(4) & (!\u_config|WideOr4~0_combout\))) # (!\u_config|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(4),
	datab => \u_config|WideOr5~0_combout\,
	datac => \u_config|WideOr4~0_combout\,
	datad => \u_config|WideOr9~0_combout\,
	combout => \u_config|WideOr4~1_combout\);

-- Location: LCCOMB_X28_Y18_N30
\u_config|WideOr5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr5~1_combout\ = (\u_config|rom_addr\(1) & ((\u_config|rom_addr\(2) & (\u_config|rom_addr\(0))) # (!\u_config|rom_addr\(2) & ((\u_config|rom_addr\(3)))))) # (!\u_config|rom_addr\(1) & (\u_config|rom_addr\(0) & (!\u_config|rom_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(0),
	datab => \u_config|rom_addr\(1),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr5~1_combout\);

-- Location: LCCOMB_X28_Y18_N0
\u_config|WideOr5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr5~2_combout\ = (\u_config|rom_addr\(4)) # ((!\u_config|WideOr5~0_combout\) # (!\u_config|WideOr5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(4),
	datac => \u_config|WideOr5~1_combout\,
	datad => \u_config|WideOr5~0_combout\,
	combout => \u_config|WideOr5~2_combout\);

-- Location: LCCOMB_X28_Y18_N10
\u_config|sccb_data[15]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|sccb_data[15]~15_combout\ = (!\u_config|state.IDLE~q\ & (\rst_n~input_o\ & ((!\u_config|WideOr5~2_combout\) # (!\u_config|sccb_data[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.IDLE~q\,
	datab => \rst_n~input_o\,
	datac => \u_config|sccb_data[15]~16_combout\,
	datad => \u_config|WideOr5~2_combout\,
	combout => \u_config|sccb_data[15]~15_combout\);

-- Location: FF_X28_Y18_N19
\u_config|sccb_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr4~1_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(11));

-- Location: LCCOMB_X27_Y18_N4
\u_config|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr6~0_combout\ = (\u_config|rom_addr\(1) & (\u_config|rom_addr\(0) $ (((\u_config|rom_addr\(3) & !\u_config|rom_addr\(2)))))) # (!\u_config|rom_addr\(1) & (\u_config|rom_addr\(3) & ((\u_config|rom_addr\(2)) # (!\u_config|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr6~0_combout\);

-- Location: LCCOMB_X27_Y18_N18
\u_config|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr1~0_combout\ = (!\u_config|rom_addr\(3) & ((\u_config|rom_addr\(1) & ((!\u_config|rom_addr\(2)))) # (!\u_config|rom_addr\(1) & ((\u_config|rom_addr\(0)) # (\u_config|rom_addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y18_N8
\u_config|WideOr6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr6~1_combout\ = ((\u_config|rom_addr\(4) & ((!\u_config|WideOr1~0_combout\))) # (!\u_config|rom_addr\(4) & (!\u_config|WideOr6~0_combout\))) # (!\u_config|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(4),
	datab => \u_config|WideOr5~0_combout\,
	datac => \u_config|WideOr6~0_combout\,
	datad => \u_config|WideOr1~0_combout\,
	combout => \u_config|WideOr6~1_combout\);

-- Location: FF_X28_Y18_N9
\u_config|sccb_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr6~1_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(9));

-- Location: LCCOMB_X27_Y18_N6
\u_config|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr2~0_combout\ = (\u_config|rom_addr\(2) & ((\u_config|rom_addr\(3)) # (\u_config|rom_addr\(1) $ (\u_config|rom_addr\(0))))) # (!\u_config|rom_addr\(2) & (\u_config|rom_addr\(3) $ (((!\u_config|rom_addr\(1) & \u_config|rom_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y18_N4
\u_config|WideOr2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr2~1_combout\ = ((\u_config|rom_addr\(4) & ((!\u_config|WideOr1~0_combout\))) # (!\u_config|rom_addr\(4) & (!\u_config|WideOr2~0_combout\))) # (!\u_config|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(4),
	datab => \u_config|WideOr5~0_combout\,
	datac => \u_config|WideOr2~0_combout\,
	datad => \u_config|WideOr1~0_combout\,
	combout => \u_config|WideOr2~1_combout\);

-- Location: FF_X28_Y18_N5
\u_config|sccb_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr2~1_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(13));

-- Location: LCCOMB_X29_Y18_N30
\u_config|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Mux0~8_combout\ = (\u_config|bit_idx\(2) & (((\u_config|sccb_data\(13)) # (\u_config|bit_idx\(1))))) # (!\u_config|bit_idx\(2) & (\u_config|sccb_data\(9) & ((!\u_config|bit_idx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|sccb_data\(9),
	datab => \u_config|bit_idx\(2),
	datac => \u_config|sccb_data\(13),
	datad => \u_config|bit_idx\(1),
	combout => \u_config|Mux0~8_combout\);

-- Location: LCCOMB_X27_Y18_N0
\u_config|WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr0~1_combout\ = (\u_config|rom_addr\(0) & ((\u_config|rom_addr\(3) & ((\u_config|rom_addr\(1)) # (\u_config|rom_addr\(2)))) # (!\u_config|rom_addr\(3) & ((!\u_config|rom_addr\(2)))))) # (!\u_config|rom_addr\(0) & ((\u_config|rom_addr\(3)) # 
-- ((!\u_config|rom_addr\(1) & \u_config|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr0~1_combout\);

-- Location: LCCOMB_X32_Y18_N10
\u_config|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr0~0_combout\ = (!\u_config|rom_addr\(3) & (\u_config|rom_addr\(2) $ (((\u_config|rom_addr\(1)) # (\u_config|rom_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(2),
	datab => \u_config|rom_addr\(1),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(0),
	combout => \u_config|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y18_N20
\u_config|WideOr0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr0~2_combout\ = ((\u_config|rom_addr\(4) & ((!\u_config|WideOr0~0_combout\))) # (!\u_config|rom_addr\(4) & (!\u_config|WideOr0~1_combout\))) # (!\u_config|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(4),
	datab => \u_config|WideOr5~0_combout\,
	datac => \u_config|WideOr0~1_combout\,
	datad => \u_config|WideOr0~0_combout\,
	combout => \u_config|WideOr0~2_combout\);

-- Location: FF_X28_Y18_N21
\u_config|sccb_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr0~2_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(15));

-- Location: LCCOMB_X29_Y18_N24
\u_config|Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Mux0~9_combout\ = (\u_config|bit_idx\(1) & ((\u_config|Mux0~8_combout\ & ((\u_config|sccb_data\(15)))) # (!\u_config|Mux0~8_combout\ & (\u_config|sccb_data\(11))))) # (!\u_config|bit_idx\(1) & (((\u_config|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|bit_idx\(1),
	datab => \u_config|sccb_data\(11),
	datac => \u_config|Mux0~8_combout\,
	datad => \u_config|sccb_data\(15),
	combout => \u_config|Mux0~9_combout\);

-- Location: LCCOMB_X27_Y18_N16
\u_config|WideOr1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr1~1_combout\ = (\u_config|rom_addr\(1) & ((\u_config|rom_addr\(3)) # ((\u_config|rom_addr\(0) & !\u_config|rom_addr\(2))))) # (!\u_config|rom_addr\(1) & (\u_config|rom_addr\(0) $ (\u_config|rom_addr\(3) $ (\u_config|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr1~1_combout\);

-- Location: LCCOMB_X28_Y18_N2
\u_config|WideOr1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr1~2_combout\ = ((\u_config|rom_addr\(4) & ((!\u_config|WideOr1~0_combout\))) # (!\u_config|rom_addr\(4) & (!\u_config|WideOr1~1_combout\))) # (!\u_config|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|WideOr1~1_combout\,
	datab => \u_config|WideOr5~0_combout\,
	datac => \u_config|rom_addr\(4),
	datad => \u_config|WideOr1~0_combout\,
	combout => \u_config|WideOr1~2_combout\);

-- Location: FF_X28_Y18_N3
\u_config|sccb_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr1~2_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(14));

-- Location: FF_X28_Y18_N1
\u_config|sccb_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr5~2_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(10));

-- Location: LCCOMB_X27_Y18_N10
\u_config|WideOr7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr7~1_combout\ = (\u_config|rom_addr\(0) & ((\u_config|rom_addr\(1)) # ((!\u_config|rom_addr\(3))))) # (!\u_config|rom_addr\(0) & (\u_config|rom_addr\(2) & ((\u_config|rom_addr\(3)) # (!\u_config|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr7~1_combout\);

-- Location: LCCOMB_X27_Y18_N28
\u_config|WideOr7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr7~0_combout\ = (\u_config|rom_addr\(0) & (!\u_config|rom_addr\(3) & ((!\u_config|rom_addr\(2)) # (!\u_config|rom_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr7~0_combout\);

-- Location: LCCOMB_X28_Y18_N28
\u_config|WideOr7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr7~2_combout\ = ((\u_config|rom_addr\(4) & ((!\u_config|WideOr7~0_combout\))) # (!\u_config|rom_addr\(4) & (!\u_config|WideOr7~1_combout\))) # (!\u_config|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|WideOr7~1_combout\,
	datab => \u_config|WideOr5~0_combout\,
	datac => \u_config|rom_addr\(4),
	datad => \u_config|WideOr7~0_combout\,
	combout => \u_config|WideOr7~2_combout\);

-- Location: FF_X28_Y18_N29
\u_config|sccb_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr7~2_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(8));

-- Location: LCCOMB_X29_Y18_N4
\u_config|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Mux0~1_combout\ = (\u_config|bit_idx\(1) & ((\u_config|bit_idx\(2)) # ((\u_config|sccb_data\(10))))) # (!\u_config|bit_idx\(1) & (!\u_config|bit_idx\(2) & ((\u_config|sccb_data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|bit_idx\(1),
	datab => \u_config|bit_idx\(2),
	datac => \u_config|sccb_data\(10),
	datad => \u_config|sccb_data\(8),
	combout => \u_config|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y18_N22
\u_config|WideOr3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr3~1_combout\ = (\u_config|rom_addr\(1) & ((\u_config|rom_addr\(0) & (!\u_config|rom_addr\(3))) # (!\u_config|rom_addr\(0) & (\u_config|rom_addr\(3) & \u_config|rom_addr\(2))))) # (!\u_config|rom_addr\(1) & ((\u_config|rom_addr\(0) & 
-- (\u_config|rom_addr\(3) & \u_config|rom_addr\(2))) # (!\u_config|rom_addr\(0) & ((\u_config|rom_addr\(3)) # (\u_config|rom_addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr3~1_combout\);

-- Location: LCCOMB_X27_Y18_N20
\u_config|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr3~0_combout\ = (!\u_config|rom_addr\(3) & ((\u_config|rom_addr\(1) & (!\u_config|rom_addr\(0) & !\u_config|rom_addr\(2))) # (!\u_config|rom_addr\(1) & (\u_config|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y18_N22
\u_config|WideOr3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr3~2_combout\ = ((\u_config|rom_addr\(4) & ((!\u_config|WideOr3~0_combout\))) # (!\u_config|rom_addr\(4) & (!\u_config|WideOr3~1_combout\))) # (!\u_config|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(4),
	datab => \u_config|WideOr5~0_combout\,
	datac => \u_config|WideOr3~1_combout\,
	datad => \u_config|WideOr3~0_combout\,
	combout => \u_config|WideOr3~2_combout\);

-- Location: FF_X28_Y18_N23
\u_config|sccb_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr3~2_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(12));

-- Location: LCCOMB_X29_Y18_N22
\u_config|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Mux0~2_combout\ = (\u_config|bit_idx\(2) & ((\u_config|Mux0~1_combout\ & (\u_config|sccb_data\(14))) # (!\u_config|Mux0~1_combout\ & ((\u_config|sccb_data\(12)))))) # (!\u_config|bit_idx\(2) & (((\u_config|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|sccb_data\(14),
	datab => \u_config|bit_idx\(2),
	datac => \u_config|Mux0~1_combout\,
	datad => \u_config|sccb_data\(12),
	combout => \u_config|Mux0~2_combout\);

-- Location: LCCOMB_X27_Y18_N30
\u_config|WideOr8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr8~0_combout\ = (\u_config|rom_addr\(1) & (\u_config|rom_addr\(0) & (\u_config|rom_addr\(3) $ (!\u_config|rom_addr\(2))))) # (!\u_config|rom_addr\(1) & (!\u_config|rom_addr\(3) & (\u_config|rom_addr\(0) $ (\u_config|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr8~0_combout\);

-- Location: LCCOMB_X27_Y18_N24
\u_config|WideOr8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr8~1_combout\ = (!\u_config|rom_addr\(3) & ((!\u_config|rom_addr\(2)) # (!\u_config|rom_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr8~1_combout\);

-- Location: LCCOMB_X28_Y18_N24
\u_config|WideOr8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr8~2_combout\ = ((\u_config|rom_addr\(4) & ((!\u_config|WideOr8~1_combout\))) # (!\u_config|rom_addr\(4) & (\u_config|WideOr8~0_combout\))) # (!\u_config|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|WideOr8~0_combout\,
	datab => \u_config|WideOr5~0_combout\,
	datac => \u_config|rom_addr\(4),
	datad => \u_config|WideOr8~1_combout\,
	combout => \u_config|WideOr8~2_combout\);

-- Location: FF_X28_Y18_N25
\u_config|sccb_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr8~2_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(7));

-- Location: LCCOMB_X32_Y18_N16
\u_config|WideOr12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr12~1_combout\ = (!\u_config|rom_addr\(3) & ((\u_config|rom_addr\(2) & (!\u_config|rom_addr\(1))) # (!\u_config|rom_addr\(2) & (\u_config|rom_addr\(1) & \u_config|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(2),
	datab => \u_config|rom_addr\(1),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(0),
	combout => \u_config|WideOr12~1_combout\);

-- Location: LCCOMB_X32_Y18_N4
\u_config|WideOr10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr10~1_combout\ = (\u_config|rom_addr\(3)) # ((\u_config|rom_addr\(2) & (\u_config|rom_addr\(1))) # (!\u_config|rom_addr\(2) & ((\u_config|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(2),
	datab => \u_config|rom_addr\(1),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(0),
	combout => \u_config|WideOr10~1_combout\);

-- Location: LCCOMB_X29_Y18_N8
\u_config|WideOr12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr12~2_combout\ = ((\u_config|rom_addr\(4) & ((\u_config|WideOr10~1_combout\))) # (!\u_config|rom_addr\(4) & (\u_config|WideOr12~1_combout\))) # (!\u_config|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|WideOr12~1_combout\,
	datab => \u_config|rom_addr\(4),
	datac => \u_config|WideOr10~1_combout\,
	datad => \u_config|WideOr5~0_combout\,
	combout => \u_config|WideOr12~2_combout\);

-- Location: FF_X29_Y18_N9
\u_config|sccb_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr12~2_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(3));

-- Location: LCCOMB_X27_Y18_N14
\u_config|WideOr14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr14~0_combout\ = (\u_config|rom_addr\(0) & (\u_config|rom_addr\(1) & ((!\u_config|rom_addr\(2))))) # (!\u_config|rom_addr\(0) & (((!\u_config|rom_addr\(3) & \u_config|rom_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr14~0_combout\);

-- Location: LCCOMB_X28_Y18_N12
\u_config|WideOr14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr14~1_combout\ = ((\u_config|rom_addr\(4) & ((!\u_config|WideOr8~1_combout\))) # (!\u_config|rom_addr\(4) & (\u_config|WideOr14~0_combout\))) # (!\u_config|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|WideOr14~0_combout\,
	datab => \u_config|WideOr5~0_combout\,
	datac => \u_config|rom_addr\(4),
	datad => \u_config|WideOr8~1_combout\,
	combout => \u_config|WideOr14~1_combout\);

-- Location: FF_X28_Y18_N13
\u_config|sccb_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr14~1_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(1));

-- Location: LCCOMB_X32_Y18_N18
\u_config|WideOr12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr12~0_combout\ = (\u_config|WideOr5~0_combout\ & ((!\u_config|rom_addr\(4)) # (!\u_config|WideOr10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_config|WideOr5~0_combout\,
	datac => \u_config|WideOr10~1_combout\,
	datad => \u_config|rom_addr\(4),
	combout => \u_config|WideOr12~0_combout\);

-- Location: LCCOMB_X32_Y18_N20
\u_config|WideOr10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr10~2_combout\ = ((\u_config|rom_addr\(1) & \u_config|WideOr10~0_combout\)) # (!\u_config|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_config|rom_addr\(1),
	datac => \u_config|WideOr10~0_combout\,
	datad => \u_config|WideOr12~0_combout\,
	combout => \u_config|WideOr10~2_combout\);

-- Location: FF_X32_Y18_N21
\u_config|sccb_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr10~2_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(5));

-- Location: LCCOMB_X29_Y18_N20
\u_config|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Mux0~3_combout\ = (\u_config|bit_idx\(2) & (((\u_config|sccb_data\(5)) # (\u_config|bit_idx\(1))))) # (!\u_config|bit_idx\(2) & (\u_config|sccb_data\(1) & ((!\u_config|bit_idx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|sccb_data\(1),
	datab => \u_config|sccb_data\(5),
	datac => \u_config|bit_idx\(2),
	datad => \u_config|bit_idx\(1),
	combout => \u_config|Mux0~3_combout\);

-- Location: LCCOMB_X29_Y18_N14
\u_config|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Mux0~4_combout\ = (\u_config|bit_idx\(1) & ((\u_config|Mux0~3_combout\ & (\u_config|sccb_data\(7))) # (!\u_config|Mux0~3_combout\ & ((\u_config|sccb_data\(3)))))) # (!\u_config|bit_idx\(1) & (((\u_config|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|bit_idx\(1),
	datab => \u_config|sccb_data\(7),
	datac => \u_config|sccb_data\(3),
	datad => \u_config|Mux0~3_combout\,
	combout => \u_config|Mux0~4_combout\);

-- Location: LCCOMB_X27_Y18_N12
\u_config|WideOr9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr9~1_combout\ = (\u_config|rom_addr\(3)) # ((\u_config|rom_addr\(1) & ((\u_config|rom_addr\(2)) # (!\u_config|rom_addr\(0)))) # (!\u_config|rom_addr\(1) & (!\u_config|rom_addr\(0) & \u_config|rom_addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr9~1_combout\);

-- Location: LCCOMB_X28_Y18_N26
\u_config|WideOr9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr9~2_combout\ = ((\u_config|rom_addr\(4) & (\u_config|WideOr9~1_combout\)) # (!\u_config|rom_addr\(4) & ((\u_config|WideOr9~0_combout\)))) # (!\u_config|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|WideOr9~1_combout\,
	datab => \u_config|WideOr5~0_combout\,
	datac => \u_config|rom_addr\(4),
	datad => \u_config|WideOr9~0_combout\,
	combout => \u_config|WideOr9~2_combout\);

-- Location: FF_X28_Y18_N27
\u_config|sccb_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr9~2_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(6));

-- Location: LCCOMB_X28_Y18_N14
\u_config|WideOr11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr11~0_combout\ = ((\u_config|rom_addr\(4) & (\u_config|WideOr10~1_combout\)) # (!\u_config|rom_addr\(4) & ((\u_config|WideOr9~0_combout\)))) # (!\u_config|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(4),
	datab => \u_config|WideOr5~0_combout\,
	datac => \u_config|WideOr10~1_combout\,
	datad => \u_config|WideOr9~0_combout\,
	combout => \u_config|WideOr11~0_combout\);

-- Location: FF_X28_Y18_N15
\u_config|sccb_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr11~0_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(4));

-- Location: LCCOMB_X27_Y18_N2
\u_config|WideOr15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr15~0_combout\ = (\u_config|rom_addr\(1) & ((\u_config|rom_addr\(3)) # (\u_config|rom_addr\(0) $ (!\u_config|rom_addr\(2))))) # (!\u_config|rom_addr\(1) & (\u_config|rom_addr\(3) $ (((\u_config|rom_addr\(0) & !\u_config|rom_addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(1),
	datab => \u_config|rom_addr\(0),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(2),
	combout => \u_config|WideOr15~0_combout\);

-- Location: LCCOMB_X28_Y18_N16
\u_config|WideOr15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr15~1_combout\ = ((\u_config|rom_addr\(4) & ((!\u_config|WideOr8~1_combout\))) # (!\u_config|rom_addr\(4) & (!\u_config|WideOr15~0_combout\))) # (!\u_config|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|WideOr15~0_combout\,
	datab => \u_config|WideOr5~0_combout\,
	datac => \u_config|rom_addr\(4),
	datad => \u_config|WideOr8~1_combout\,
	combout => \u_config|WideOr15~1_combout\);

-- Location: FF_X28_Y18_N17
\u_config|sccb_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr15~1_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(0));

-- Location: LCCOMB_X32_Y18_N26
\u_config|WideOr13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr13~0_combout\ = (\u_config|rom_addr\(2) & (!\u_config|rom_addr\(3) & (\u_config|rom_addr\(1) $ (!\u_config|rom_addr\(0))))) # (!\u_config|rom_addr\(2) & (\u_config|rom_addr\(1) & ((\u_config|rom_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(2),
	datab => \u_config|rom_addr\(1),
	datac => \u_config|rom_addr\(3),
	datad => \u_config|rom_addr\(0),
	combout => \u_config|WideOr13~0_combout\);

-- Location: LCCOMB_X28_Y18_N6
\u_config|WideOr13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|WideOr13~1_combout\ = ((\u_config|rom_addr\(4) & ((!\u_config|WideOr8~1_combout\))) # (!\u_config|rom_addr\(4) & (\u_config|WideOr13~0_combout\))) # (!\u_config|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|rom_addr\(4),
	datab => \u_config|WideOr5~0_combout\,
	datac => \u_config|WideOr13~0_combout\,
	datad => \u_config|WideOr8~1_combout\,
	combout => \u_config|WideOr13~1_combout\);

-- Location: FF_X28_Y18_N7
\u_config|sccb_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|WideOr13~1_combout\,
	ena => \u_config|sccb_data[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sccb_data\(2));

-- Location: LCCOMB_X29_Y18_N12
\u_config|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Mux0~5_combout\ = (\u_config|bit_idx\(2) & (((\u_config|bit_idx\(1))))) # (!\u_config|bit_idx\(2) & ((\u_config|bit_idx\(1) & ((\u_config|sccb_data\(2)))) # (!\u_config|bit_idx\(1) & (\u_config|sccb_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|sccb_data\(0),
	datab => \u_config|sccb_data\(2),
	datac => \u_config|bit_idx\(2),
	datad => \u_config|bit_idx\(1),
	combout => \u_config|Mux0~5_combout\);

-- Location: LCCOMB_X29_Y18_N6
\u_config|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Mux0~6_combout\ = (\u_config|bit_idx\(2) & ((\u_config|Mux0~5_combout\ & (\u_config|sccb_data\(6))) # (!\u_config|Mux0~5_combout\ & ((\u_config|sccb_data\(4)))))) # (!\u_config|bit_idx\(2) & (((\u_config|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|sccb_data\(6),
	datab => \u_config|bit_idx\(2),
	datac => \u_config|sccb_data\(4),
	datad => \u_config|Mux0~5_combout\,
	combout => \u_config|Mux0~6_combout\);

-- Location: LCCOMB_X29_Y18_N28
\u_config|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Mux0~7_combout\ = (\u_config|bit_idx\(3) & (\u_config|bit_idx\(0))) # (!\u_config|bit_idx\(3) & ((\u_config|bit_idx\(0) & (\u_config|Mux0~4_combout\)) # (!\u_config|bit_idx\(0) & ((\u_config|Mux0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|bit_idx\(3),
	datab => \u_config|bit_idx\(0),
	datac => \u_config|Mux0~4_combout\,
	datad => \u_config|Mux0~6_combout\,
	combout => \u_config|Mux0~7_combout\);

-- Location: LCCOMB_X29_Y18_N2
\u_config|Mux0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Mux0~10_combout\ = (\u_config|bit_idx\(3) & ((\u_config|Mux0~7_combout\ & (\u_config|Mux0~9_combout\)) # (!\u_config|Mux0~7_combout\ & ((\u_config|Mux0~2_combout\))))) # (!\u_config|bit_idx\(3) & (((\u_config|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|bit_idx\(3),
	datab => \u_config|Mux0~9_combout\,
	datac => \u_config|Mux0~2_combout\,
	datad => \u_config|Mux0~7_combout\,
	combout => \u_config|Mux0~10_combout\);

-- Location: LCCOMB_X29_Y18_N16
\u_config|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector0~1_combout\ = (\u_config|state.BYTE_SEND~q\ & ((\u_config|bit_idx\(4) & (\u_config|Mux0~0_combout\)) # (!\u_config|bit_idx\(4) & ((\u_config|Mux0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|Mux0~0_combout\,
	datab => \u_config|state.BYTE_SEND~q\,
	datac => \u_config|bit_idx\(4),
	datad => \u_config|Mux0~10_combout\,
	combout => \u_config|Selector0~1_combout\);

-- Location: LCCOMB_X29_Y18_N18
\u_config|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector0~2_combout\ = (\u_config|Selector0~0_combout\ & (!\u_config|Selector0~1_combout\ & ((\u_config|sda_reg~q\) # (!\u_config|state.ACK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|Selector0~0_combout\,
	datab => \u_config|state.ACK~q\,
	datac => \u_config|sda_reg~q\,
	datad => \u_config|Selector0~1_combout\,
	combout => \u_config|Selector0~2_combout\);

-- Location: FF_X29_Y18_N19
\u_config|sda_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector0~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sda_reg~q\);

-- Location: LCCOMB_X32_Y18_N8
\u_config|scl_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|scl_reg~0_combout\ = (\u_config|state.BYTE_SEND~q\) # (\u_config|state.STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.BYTE_SEND~q\,
	datac => \u_config|state.STOP~q\,
	combout => \u_config|scl_reg~0_combout\);

-- Location: LCCOMB_X30_Y18_N6
\u_config|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector1~3_combout\ = (\u_config|bit_idx\(1) & (((!\u_config|bit_idx\(2)) # (!\u_config|bit_idx\(0))))) # (!\u_config|bit_idx\(1) & ((\u_config|bit_idx\(3)) # ((\u_config|bit_idx\(0)) # (\u_config|bit_idx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|bit_idx\(3),
	datab => \u_config|bit_idx\(1),
	datac => \u_config|bit_idx\(0),
	datad => \u_config|bit_idx\(2),
	combout => \u_config|Selector1~3_combout\);

-- Location: LCCOMB_X32_Y18_N28
\u_config|Selector1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector1~8_combout\ = (\u_config|bit_idx\(4)) # ((\u_config|bit_idx\(5)) # (\u_config|Selector1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|bit_idx\(4),
	datac => \u_config|bit_idx\(5),
	datad => \u_config|Selector1~3_combout\,
	combout => \u_config|Selector1~8_combout\);

-- Location: LCCOMB_X32_Y18_N2
\u_config|Selector1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector1~6_combout\ = (\u_config|state.DELAY~q\) # ((\u_config|state.START~q\) # ((\u_config|state.ACK~q\ & \u_config|Selector1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.DELAY~q\,
	datab => \u_config|state.START~q\,
	datac => \u_config|state.ACK~q\,
	datad => \u_config|Selector1~8_combout\,
	combout => \u_config|Selector1~6_combout\);

-- Location: LCCOMB_X32_Y18_N30
\u_config|Selector1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|Selector1~7_combout\ = (\u_config|state.IDLE~q\ & (!\u_config|scl_reg~0_combout\ & ((\u_config|sda_oe~q\) # (!\u_config|Selector1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_config|state.IDLE~q\,
	datab => \u_config|scl_reg~0_combout\,
	datac => \u_config|sda_oe~q\,
	datad => \u_config|Selector1~6_combout\,
	combout => \u_config|Selector1~7_combout\);

-- Location: FF_X32_Y18_N31
\u_config|sda_oe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|Selector1~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|sda_oe~q\);

-- Location: LCCOMB_X32_Y18_N12
\u_config|scl_reg~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_config|scl_reg~feeder_combout\ = \u_config|scl_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_config|scl_reg~0_combout\,
	combout => \u_config|scl_reg~feeder_combout\);

-- Location: FF_X32_Y18_N13
\u_config|scl_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_config|scl_clk~clkctrl_outclk\,
	d => \u_config|scl_reg~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_config|scl_reg~q\);

-- Location: LCCOMB_X49_Y32_N0
\xclk_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \xclk_reg~0_combout\ = !\xclk_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xclk_reg~q\,
	combout => \xclk_reg~0_combout\);

-- Location: FF_X49_Y32_N1
xclk_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xclk_reg~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xclk_reg~q\);

-- Location: LCCOMB_X41_Y30_N0
\u_lcd|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~0_combout\ = \u_lcd|delay_cnt\(0) $ (VCC)
-- \u_lcd|Add1~1\ = CARRY(\u_lcd|delay_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(0),
	datad => VCC,
	combout => \u_lcd|Add1~0_combout\,
	cout => \u_lcd|Add1~1\);

-- Location: LCCOMB_X41_Y31_N30
\u_lcd|delay_cnt[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[0]~32_combout\ = (\u_lcd|Add1~0_combout\ & \u_lcd|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|Add1~0_combout\,
	datad => \u_lcd|LessThan0~10_combout\,
	combout => \u_lcd|delay_cnt[0]~32_combout\);

-- Location: FF_X41_Y31_N31
\u_lcd|delay_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[0]~32_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(0));

-- Location: LCCOMB_X41_Y30_N2
\u_lcd|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~2_combout\ = (\u_lcd|delay_cnt\(1) & (\u_lcd|Add1~1\ & VCC)) # (!\u_lcd|delay_cnt\(1) & (!\u_lcd|Add1~1\))
-- \u_lcd|Add1~3\ = CARRY((!\u_lcd|delay_cnt\(1) & !\u_lcd|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(1),
	datad => VCC,
	cin => \u_lcd|Add1~1\,
	combout => \u_lcd|Add1~2_combout\,
	cout => \u_lcd|Add1~3\);

-- Location: LCCOMB_X41_Y31_N24
\u_lcd|delay_cnt[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[1]~31_combout\ = (\u_lcd|Add1~2_combout\ & \u_lcd|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|Add1~2_combout\,
	datad => \u_lcd|LessThan0~10_combout\,
	combout => \u_lcd|delay_cnt[1]~31_combout\);

-- Location: FF_X41_Y31_N25
\u_lcd|delay_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[1]~31_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(1));

-- Location: LCCOMB_X41_Y30_N4
\u_lcd|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~4_combout\ = (\u_lcd|delay_cnt\(2) & ((GND) # (!\u_lcd|Add1~3\))) # (!\u_lcd|delay_cnt\(2) & (\u_lcd|Add1~3\ $ (GND)))
-- \u_lcd|Add1~5\ = CARRY((\u_lcd|delay_cnt\(2)) # (!\u_lcd|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(2),
	datad => VCC,
	cin => \u_lcd|Add1~3\,
	combout => \u_lcd|Add1~4_combout\,
	cout => \u_lcd|Add1~5\);

-- Location: LCCOMB_X41_Y31_N26
\u_lcd|delay_cnt[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[2]~30_combout\ = (\u_lcd|Add1~4_combout\ & \u_lcd|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|Add1~4_combout\,
	datad => \u_lcd|LessThan0~10_combout\,
	combout => \u_lcd|delay_cnt[2]~30_combout\);

-- Location: FF_X41_Y31_N27
\u_lcd|delay_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[2]~30_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(2));

-- Location: LCCOMB_X41_Y30_N6
\u_lcd|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~6_combout\ = (\u_lcd|delay_cnt\(3) & (\u_lcd|Add1~5\ & VCC)) # (!\u_lcd|delay_cnt\(3) & (!\u_lcd|Add1~5\))
-- \u_lcd|Add1~7\ = CARRY((!\u_lcd|delay_cnt\(3) & !\u_lcd|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(3),
	datad => VCC,
	cin => \u_lcd|Add1~5\,
	combout => \u_lcd|Add1~6_combout\,
	cout => \u_lcd|Add1~7\);

-- Location: LCCOMB_X41_Y31_N0
\u_lcd|delay_cnt[3]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[3]~29_combout\ = (\u_lcd|Add1~6_combout\ & \u_lcd|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|Add1~6_combout\,
	datad => \u_lcd|LessThan0~10_combout\,
	combout => \u_lcd|delay_cnt[3]~29_combout\);

-- Location: FF_X41_Y31_N1
\u_lcd|delay_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[3]~29_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(3));

-- Location: LCCOMB_X41_Y31_N8
\u_lcd|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan0~9_combout\ = (\u_lcd|delay_cnt\(0)) # ((\u_lcd|delay_cnt\(3)) # ((\u_lcd|delay_cnt\(2)) # (\u_lcd|delay_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(0),
	datab => \u_lcd|delay_cnt\(3),
	datac => \u_lcd|delay_cnt\(2),
	datad => \u_lcd|delay_cnt\(1),
	combout => \u_lcd|LessThan0~9_combout\);

-- Location: LCCOMB_X43_Y31_N6
\u_lcd|state.STATE_HW_RESET~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|state.STATE_HW_RESET~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_lcd|state.STATE_HW_RESET~feeder_combout\);

-- Location: LCCOMB_X43_Y29_N18
\u_lcd|Selector73~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector73~0_combout\ = (\u_lcd|state.STATE_SET_AXIS~q\) # (!\u_lcd|state.STATE_HW_RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|state.STATE_SET_AXIS~q\,
	datad => \u_lcd|state.STATE_HW_RESET~q\,
	combout => \u_lcd|Selector73~0_combout\);

-- Location: LCCOMB_X44_Y30_N4
\u_lcd|y_cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|y_cnt[0]~8_combout\ = \u_lcd|y_cnt\(0) $ (VCC)
-- \u_lcd|y_cnt[0]~9\ = CARRY(\u_lcd|y_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|y_cnt\(0),
	datad => VCC,
	combout => \u_lcd|y_cnt[0]~8_combout\,
	cout => \u_lcd|y_cnt[0]~9\);

-- Location: FF_X43_Y31_N15
\u_lcd|state.STATE_SCAN_DRAW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_lcd|state.STATE_SET_AXIS~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_lcd|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|state.STATE_SCAN_DRAW~q\);

-- Location: LCCOMB_X43_Y28_N8
\u_lcd|cmd_idx~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~47_combout\ = (\u_lcd|cmd_idx.00000001~q\ & \u_lcd|state.STATE_SEND_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|cmd_idx.00000001~q\,
	datad => \u_lcd|state.STATE_SEND_INIT~q\,
	combout => \u_lcd|cmd_idx~47_combout\);

-- Location: LCCOMB_X43_Y28_N12
\u_lcd|WideNor0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|WideNor0~combout\ = (!\u_lcd|cmd_idx.00000100~q\ & (!\u_lcd|cmd_idx.00000101~q\ & (!\u_lcd|cmd_idx.00000010~q\ & \u_lcd|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|cmd_idx.00000100~q\,
	datab => \u_lcd|cmd_idx.00000101~q\,
	datac => \u_lcd|cmd_idx.00000010~q\,
	datad => \u_lcd|WideNor0~0_combout\,
	combout => \u_lcd|WideNor0~combout\);

-- Location: LCCOMB_X43_Y31_N26
\u_lcd|cmd_idx~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~42_combout\ = (\u_lcd|state.STATE_SET_AXIS~q\ & (!\u_lcd|state.STATE_SCAN_DRAW~q\ & ((\u_lcd|cmd_idx.00010001~q\) # (!\u_lcd|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|cmd_idx.00010001~q\,
	datab => \u_lcd|WideNor0~combout\,
	datac => \u_lcd|state.STATE_SET_AXIS~q\,
	datad => \u_lcd|state.STATE_SCAN_DRAW~q\,
	combout => \u_lcd|cmd_idx~42_combout\);

-- Location: LCCOMB_X43_Y31_N24
\u_lcd|cmd_idx~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~40_combout\ = (!\u_lcd|LessThan1~0_combout\ & (!\u_lcd|state~23_combout\ & !\u_lcd|LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan1~0_combout\,
	datab => \u_lcd|state~23_combout\,
	datad => \u_lcd|LessThan0~10_combout\,
	combout => \u_lcd|cmd_idx~40_combout\);

-- Location: LCCOMB_X43_Y31_N4
\u_lcd|cmd_idx~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~43_combout\ = (\u_lcd|state.STATE_HW_RESET~q\ & (!\u_lcd|cmd_idx~42_combout\ & \u_lcd|cmd_idx~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|state.STATE_HW_RESET~q\,
	datac => \u_lcd|cmd_idx~42_combout\,
	datad => \u_lcd|cmd_idx~40_combout\,
	combout => \u_lcd|cmd_idx~43_combout\);

-- Location: FF_X43_Y28_N9
\u_lcd|cmd_idx.00000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~47_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00000010~q\);

-- Location: LCCOMB_X43_Y28_N18
\u_lcd|cmd_idx~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~41_combout\ = (\u_lcd|cmd_idx.00000010~q\ & \u_lcd|state.STATE_SEND_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|cmd_idx.00000010~q\,
	datad => \u_lcd|state.STATE_SEND_INIT~q\,
	combout => \u_lcd|cmd_idx~41_combout\);

-- Location: FF_X43_Y28_N19
\u_lcd|cmd_idx.00000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~41_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00000011~q\);

-- Location: LCCOMB_X43_Y28_N26
\u_lcd|cmd_idx~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~48_combout\ = (\u_lcd|cmd_idx.00000011~q\ & \u_lcd|state.STATE_SEND_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|cmd_idx.00000011~q\,
	datad => \u_lcd|state.STATE_SEND_INIT~q\,
	combout => \u_lcd|cmd_idx~48_combout\);

-- Location: FF_X43_Y28_N27
\u_lcd|cmd_idx.00000100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~48_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00000100~q\);

-- Location: LCCOMB_X43_Y28_N0
\u_lcd|cmd_idx~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~44_combout\ = (\u_lcd|cmd_idx.00000100~q\ & \u_lcd|state.STATE_SEND_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|cmd_idx.00000100~q\,
	datad => \u_lcd|state.STATE_SEND_INIT~q\,
	combout => \u_lcd|cmd_idx~44_combout\);

-- Location: FF_X43_Y28_N1
\u_lcd|cmd_idx.00000101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~44_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00000101~q\);

-- Location: LCCOMB_X43_Y28_N24
\u_lcd|cmd_idx~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~46_combout\ = (\u_lcd|cmd_idx.00000101~q\ & \u_lcd|state.STATE_SEND_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|cmd_idx.00000101~q\,
	datad => \u_lcd|state.STATE_SEND_INIT~q\,
	combout => \u_lcd|cmd_idx~46_combout\);

-- Location: FF_X43_Y28_N25
\u_lcd|cmd_idx.00000110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~46_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00000110~q\);

-- Location: LCCOMB_X42_Y31_N22
\u_lcd|cmd_idx~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~58_combout\ = (\u_lcd|state.STATE_SEND_INIT~q\ & ((\u_lcd|cmd_idx.00000110~q\) # (\u_lcd|cmd_idx.00000111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|cmd_idx.00000110~q\,
	datac => \u_lcd|cmd_idx.00000111~q\,
	datad => \u_lcd|state.STATE_SEND_INIT~q\,
	combout => \u_lcd|cmd_idx~58_combout\);

-- Location: FF_X42_Y31_N23
\u_lcd|cmd_idx.00000111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~58_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00000111~q\);

-- Location: LCCOMB_X42_Y31_N6
\u_lcd|cmd_idx~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~52_combout\ = (\u_lcd|cmd_idx.00000111~q\ & \u_lcd|state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|cmd_idx.00000111~q\,
	datad => \u_lcd|state.STATE_SET_AXIS~q\,
	combout => \u_lcd|cmd_idx~52_combout\);

-- Location: LCCOMB_X43_Y31_N18
\u_lcd|cmd_idx~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~50_combout\ = (\u_lcd|state.STATE_HW_RESET~q\ & (\u_lcd|cmd_idx~40_combout\ & ((!\u_lcd|state.STATE_SEND_INIT~q\) # (!\u_lcd|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|state.STATE_HW_RESET~q\,
	datab => \u_lcd|WideNor0~combout\,
	datac => \u_lcd|state.STATE_SEND_INIT~q\,
	datad => \u_lcd|cmd_idx~40_combout\,
	combout => \u_lcd|cmd_idx~50_combout\);

-- Location: FF_X42_Y31_N7
\u_lcd|cmd_idx.00001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~52_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00001000~q\);

-- Location: LCCOMB_X42_Y31_N20
\u_lcd|cmd_idx~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~53_combout\ = (\u_lcd|cmd_idx.00001000~q\ & \u_lcd|state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|cmd_idx.00001000~q\,
	datad => \u_lcd|state.STATE_SET_AXIS~q\,
	combout => \u_lcd|cmd_idx~53_combout\);

-- Location: FF_X42_Y31_N21
\u_lcd|cmd_idx.00001001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~53_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00001001~q\);

-- Location: LCCOMB_X42_Y31_N24
\u_lcd|cmd_idx~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~54_combout\ = (\u_lcd|cmd_idx.00001001~q\ & \u_lcd|state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|cmd_idx.00001001~q\,
	datad => \u_lcd|state.STATE_SET_AXIS~q\,
	combout => \u_lcd|cmd_idx~54_combout\);

-- Location: FF_X42_Y31_N25
\u_lcd|cmd_idx.00001010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~54_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00001010~q\);

-- Location: LCCOMB_X42_Y31_N18
\u_lcd|cmd_idx~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~49_combout\ = (\u_lcd|cmd_idx.00001010~q\ & \u_lcd|state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|cmd_idx.00001010~q\,
	datad => \u_lcd|state.STATE_SET_AXIS~q\,
	combout => \u_lcd|cmd_idx~49_combout\);

-- Location: FF_X42_Y31_N19
\u_lcd|cmd_idx.00001011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~49_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00001011~q\);

-- Location: LCCOMB_X42_Y31_N0
\u_lcd|cmd_idx~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~59_combout\ = (\u_lcd|cmd_idx.00001011~q\ & \u_lcd|state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|cmd_idx.00001011~q\,
	datad => \u_lcd|state.STATE_SET_AXIS~q\,
	combout => \u_lcd|cmd_idx~59_combout\);

-- Location: FF_X42_Y31_N1
\u_lcd|cmd_idx.00001100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~59_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00001100~q\);

-- Location: LCCOMB_X42_Y31_N26
\u_lcd|cmd_idx~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~55_combout\ = (\u_lcd|cmd_idx.00001100~q\ & \u_lcd|state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|cmd_idx.00001100~q\,
	datad => \u_lcd|state.STATE_SET_AXIS~q\,
	combout => \u_lcd|cmd_idx~55_combout\);

-- Location: FF_X42_Y31_N27
\u_lcd|cmd_idx.00001101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~55_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00001101~q\);

-- Location: LCCOMB_X42_Y31_N8
\u_lcd|cmd_idx~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~56_combout\ = (\u_lcd|cmd_idx.00001101~q\ & \u_lcd|state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|cmd_idx.00001101~q\,
	datad => \u_lcd|state.STATE_SET_AXIS~q\,
	combout => \u_lcd|cmd_idx~56_combout\);

-- Location: FF_X42_Y31_N9
\u_lcd|cmd_idx.00001110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~56_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00001110~q\);

-- Location: LCCOMB_X42_Y31_N2
\u_lcd|cmd_idx~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~57_combout\ = (\u_lcd|cmd_idx.00001110~q\ & \u_lcd|state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|cmd_idx.00001110~q\,
	datad => \u_lcd|state.STATE_SET_AXIS~q\,
	combout => \u_lcd|cmd_idx~57_combout\);

-- Location: FF_X42_Y31_N3
\u_lcd|cmd_idx.00001111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~57_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00001111~q\);

-- Location: LCCOMB_X42_Y31_N12
\u_lcd|cmd_idx~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~51_combout\ = (\u_lcd|cmd_idx.00001111~q\ & \u_lcd|state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|cmd_idx.00001111~q\,
	datad => \u_lcd|state.STATE_SET_AXIS~q\,
	combout => \u_lcd|cmd_idx~51_combout\);

-- Location: FF_X42_Y31_N13
\u_lcd|cmd_idx.00010000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~51_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00010000~q\);

-- Location: LCCOMB_X42_Y31_N16
\u_lcd|Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector34~0_combout\ = (\u_lcd|cmd_idx.00010001~q\) # (\u_lcd|cmd_idx.00010000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|cmd_idx.00010001~q\,
	datad => \u_lcd|cmd_idx.00010000~q\,
	combout => \u_lcd|Selector34~0_combout\);

-- Location: FF_X42_Y31_N17
\u_lcd|cmd_idx.00010001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|Selector34~0_combout\,
	asdata => \u_lcd|state.STATE_SCAN_DRAW~q\,
	clrn => \rst_n~input_o\,
	sload => \u_lcd|ALT_INV_state.STATE_SET_AXIS~q\,
	ena => \u_lcd|cmd_idx~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00010001~q\);

-- Location: LCCOMB_X43_Y31_N30
\u_lcd|Selector120~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector120~0_combout\ = (\u_lcd|cmd_idx.00010001~q\ & \u_lcd|state.STATE_SET_AXIS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|cmd_idx.00010001~q\,
	datad => \u_lcd|state.STATE_SET_AXIS~q\,
	combout => \u_lcd|Selector120~0_combout\);

-- Location: LCCOMB_X44_Y31_N0
\u_lcd|x_cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|x_cnt[0]~8_combout\ = \u_lcd|x_cnt\(0) $ (VCC)
-- \u_lcd|x_cnt[0]~9\ = CARRY(\u_lcd|x_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|x_cnt\(0),
	datad => VCC,
	combout => \u_lcd|x_cnt[0]~8_combout\,
	cout => \u_lcd|x_cnt[0]~9\);

-- Location: LCCOMB_X44_Y31_N20
\u_lcd|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan2~1_combout\ = ((!\u_lcd|x_cnt\(6)) # (!\u_lcd|x_cnt\(4))) # (!\u_lcd|x_cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|x_cnt\(5),
	datac => \u_lcd|x_cnt\(4),
	datad => \u_lcd|x_cnt\(6),
	combout => \u_lcd|LessThan2~1_combout\);

-- Location: LCCOMB_X44_Y31_N18
\u_lcd|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan2~0_combout\ = (((!\u_lcd|x_cnt\(0)) # (!\u_lcd|x_cnt\(2))) # (!\u_lcd|x_cnt\(1))) # (!\u_lcd|x_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|x_cnt\(3),
	datab => \u_lcd|x_cnt\(1),
	datac => \u_lcd|x_cnt\(2),
	datad => \u_lcd|x_cnt\(0),
	combout => \u_lcd|LessThan2~0_combout\);

-- Location: LCCOMB_X44_Y31_N24
\u_lcd|x_cnt[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|x_cnt[3]~24_combout\ = ((\u_lcd|x_cnt\(7)) # ((!\u_lcd|LessThan2~1_combout\ & !\u_lcd|LessThan2~0_combout\))) # (!\u_lcd|state.STATE_SCAN_DRAW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|state.STATE_SCAN_DRAW~q\,
	datab => \u_lcd|LessThan2~1_combout\,
	datac => \u_lcd|x_cnt\(7),
	datad => \u_lcd|LessThan2~0_combout\,
	combout => \u_lcd|x_cnt[3]~24_combout\);

-- Location: LCCOMB_X43_Y32_N20
\u_lcd|Selector120~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector120~1_combout\ = (\u_lcd|p_idx~q\ & ((!\u_lcd|state.STATE_SET_AXIS~q\) # (!\u_lcd|cmd_idx.00010001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|cmd_idx.00010001~q\,
	datab => \u_lcd|state.STATE_SET_AXIS~q\,
	datac => \u_lcd|p_idx~q\,
	combout => \u_lcd|Selector120~1_combout\);

-- Location: LCCOMB_X43_Y32_N22
\u_lcd|p_idx~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|p_idx~_wirecell_combout\ = !\u_lcd|p_idx~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_lcd|p_idx~q\,
	combout => \u_lcd|p_idx~_wirecell_combout\);

-- Location: LCCOMB_X44_Y31_N30
\u_lcd|spi_data[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|spi_data[6]~0_combout\ = (!\u_lcd|LessThan0~10_combout\ & !\u_lcd|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|LessThan1~0_combout\,
	combout => \u_lcd|spi_data[6]~0_combout\);

-- Location: FF_X43_Y32_N21
\u_lcd|p_idx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|Selector120~1_combout\,
	asdata => \u_lcd|p_idx~_wirecell_combout\,
	clrn => \rst_n~input_o\,
	sload => \u_lcd|state.STATE_SCAN_DRAW~q\,
	ena => \u_lcd|spi_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|p_idx~q\);

-- Location: LCCOMB_X44_Y31_N26
\u_lcd|x_cnt[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|x_cnt[7]~25_combout\ = (\u_lcd|spi_data[6]~0_combout\ & ((\u_lcd|Selector120~0_combout\) # ((\u_lcd|state.STATE_SCAN_DRAW~q\ & \u_lcd|p_idx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|state.STATE_SCAN_DRAW~q\,
	datab => \u_lcd|p_idx~q\,
	datac => \u_lcd|spi_data[6]~0_combout\,
	datad => \u_lcd|Selector120~0_combout\,
	combout => \u_lcd|x_cnt[7]~25_combout\);

-- Location: FF_X44_Y31_N1
\u_lcd|x_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|x_cnt[0]~8_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|x_cnt[3]~24_combout\,
	ena => \u_lcd|x_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|x_cnt\(0));

-- Location: LCCOMB_X44_Y31_N2
\u_lcd|x_cnt[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|x_cnt[1]~10_combout\ = (\u_lcd|x_cnt\(1) & (!\u_lcd|x_cnt[0]~9\)) # (!\u_lcd|x_cnt\(1) & ((\u_lcd|x_cnt[0]~9\) # (GND)))
-- \u_lcd|x_cnt[1]~11\ = CARRY((!\u_lcd|x_cnt[0]~9\) # (!\u_lcd|x_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|x_cnt\(1),
	datad => VCC,
	cin => \u_lcd|x_cnt[0]~9\,
	combout => \u_lcd|x_cnt[1]~10_combout\,
	cout => \u_lcd|x_cnt[1]~11\);

-- Location: FF_X44_Y31_N3
\u_lcd|x_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|x_cnt[1]~10_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|x_cnt[3]~24_combout\,
	ena => \u_lcd|x_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|x_cnt\(1));

-- Location: LCCOMB_X44_Y31_N4
\u_lcd|x_cnt[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|x_cnt[2]~12_combout\ = (\u_lcd|x_cnt\(2) & (\u_lcd|x_cnt[1]~11\ $ (GND))) # (!\u_lcd|x_cnt\(2) & (!\u_lcd|x_cnt[1]~11\ & VCC))
-- \u_lcd|x_cnt[2]~13\ = CARRY((\u_lcd|x_cnt\(2) & !\u_lcd|x_cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|x_cnt\(2),
	datad => VCC,
	cin => \u_lcd|x_cnt[1]~11\,
	combout => \u_lcd|x_cnt[2]~12_combout\,
	cout => \u_lcd|x_cnt[2]~13\);

-- Location: FF_X44_Y31_N5
\u_lcd|x_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|x_cnt[2]~12_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|x_cnt[3]~24_combout\,
	ena => \u_lcd|x_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|x_cnt\(2));

-- Location: LCCOMB_X44_Y31_N6
\u_lcd|x_cnt[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|x_cnt[3]~14_combout\ = (\u_lcd|x_cnt\(3) & (!\u_lcd|x_cnt[2]~13\)) # (!\u_lcd|x_cnt\(3) & ((\u_lcd|x_cnt[2]~13\) # (GND)))
-- \u_lcd|x_cnt[3]~15\ = CARRY((!\u_lcd|x_cnt[2]~13\) # (!\u_lcd|x_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|x_cnt\(3),
	datad => VCC,
	cin => \u_lcd|x_cnt[2]~13\,
	combout => \u_lcd|x_cnt[3]~14_combout\,
	cout => \u_lcd|x_cnt[3]~15\);

-- Location: FF_X44_Y31_N7
\u_lcd|x_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|x_cnt[3]~14_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|x_cnt[3]~24_combout\,
	ena => \u_lcd|x_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|x_cnt\(3));

-- Location: LCCOMB_X44_Y31_N8
\u_lcd|x_cnt[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|x_cnt[4]~16_combout\ = (\u_lcd|x_cnt\(4) & (\u_lcd|x_cnt[3]~15\ $ (GND))) # (!\u_lcd|x_cnt\(4) & (!\u_lcd|x_cnt[3]~15\ & VCC))
-- \u_lcd|x_cnt[4]~17\ = CARRY((\u_lcd|x_cnt\(4) & !\u_lcd|x_cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|x_cnt\(4),
	datad => VCC,
	cin => \u_lcd|x_cnt[3]~15\,
	combout => \u_lcd|x_cnt[4]~16_combout\,
	cout => \u_lcd|x_cnt[4]~17\);

-- Location: FF_X44_Y31_N9
\u_lcd|x_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|x_cnt[4]~16_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|x_cnt[3]~24_combout\,
	ena => \u_lcd|x_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|x_cnt\(4));

-- Location: LCCOMB_X44_Y31_N10
\u_lcd|x_cnt[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|x_cnt[5]~18_combout\ = (\u_lcd|x_cnt\(5) & (!\u_lcd|x_cnt[4]~17\)) # (!\u_lcd|x_cnt\(5) & ((\u_lcd|x_cnt[4]~17\) # (GND)))
-- \u_lcd|x_cnt[5]~19\ = CARRY((!\u_lcd|x_cnt[4]~17\) # (!\u_lcd|x_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|x_cnt\(5),
	datad => VCC,
	cin => \u_lcd|x_cnt[4]~17\,
	combout => \u_lcd|x_cnt[5]~18_combout\,
	cout => \u_lcd|x_cnt[5]~19\);

-- Location: FF_X44_Y31_N11
\u_lcd|x_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|x_cnt[5]~18_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|x_cnt[3]~24_combout\,
	ena => \u_lcd|x_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|x_cnt\(5));

-- Location: LCCOMB_X44_Y31_N12
\u_lcd|x_cnt[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|x_cnt[6]~20_combout\ = (\u_lcd|x_cnt\(6) & (\u_lcd|x_cnt[5]~19\ $ (GND))) # (!\u_lcd|x_cnt\(6) & (!\u_lcd|x_cnt[5]~19\ & VCC))
-- \u_lcd|x_cnt[6]~21\ = CARRY((\u_lcd|x_cnt\(6) & !\u_lcd|x_cnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|x_cnt\(6),
	datad => VCC,
	cin => \u_lcd|x_cnt[5]~19\,
	combout => \u_lcd|x_cnt[6]~20_combout\,
	cout => \u_lcd|x_cnt[6]~21\);

-- Location: FF_X44_Y31_N13
\u_lcd|x_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|x_cnt[6]~20_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|x_cnt[3]~24_combout\,
	ena => \u_lcd|x_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|x_cnt\(6));

-- Location: LCCOMB_X44_Y31_N14
\u_lcd|x_cnt[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|x_cnt[7]~22_combout\ = \u_lcd|x_cnt\(7) $ (\u_lcd|x_cnt[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|x_cnt\(7),
	cin => \u_lcd|x_cnt[6]~21\,
	combout => \u_lcd|x_cnt[7]~22_combout\);

-- Location: FF_X44_Y31_N15
\u_lcd|x_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|x_cnt[7]~22_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|x_cnt[3]~24_combout\,
	ena => \u_lcd|x_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|x_cnt\(7));

-- Location: LCCOMB_X44_Y31_N22
\u_lcd|state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|state~22_combout\ = (\u_lcd|p_idx~q\ & ((\u_lcd|x_cnt\(7)) # ((!\u_lcd|LessThan2~1_combout\ & !\u_lcd|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|x_cnt\(7),
	datab => \u_lcd|LessThan2~1_combout\,
	datac => \u_lcd|p_idx~q\,
	datad => \u_lcd|LessThan2~0_combout\,
	combout => \u_lcd|state~22_combout\);

-- Location: LCCOMB_X43_Y31_N16
\u_lcd|y_cnt[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|y_cnt[7]~24_combout\ = (!\u_lcd|Selector120~0_combout\ & (((\u_lcd|LessThan3~2_combout\) # (!\u_lcd|state~22_combout\)) # (!\u_lcd|state.STATE_SCAN_DRAW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|state.STATE_SCAN_DRAW~q\,
	datab => \u_lcd|Selector120~0_combout\,
	datac => \u_lcd|LessThan3~2_combout\,
	datad => \u_lcd|state~22_combout\,
	combout => \u_lcd|y_cnt[7]~24_combout\);

-- Location: LCCOMB_X44_Y30_N2
\u_lcd|y_cnt[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|y_cnt[7]~25_combout\ = (!\u_lcd|LessThan0~10_combout\ & (!\u_lcd|y_cnt[7]~24_combout\ & !\u_lcd|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan0~10_combout\,
	datac => \u_lcd|y_cnt[7]~24_combout\,
	datad => \u_lcd|LessThan1~0_combout\,
	combout => \u_lcd|y_cnt[7]~25_combout\);

-- Location: FF_X44_Y30_N5
\u_lcd|y_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|y_cnt[0]~8_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \u_lcd|y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|y_cnt\(0));

-- Location: LCCOMB_X44_Y30_N6
\u_lcd|y_cnt[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|y_cnt[1]~10_combout\ = (\u_lcd|y_cnt\(1) & (!\u_lcd|y_cnt[0]~9\)) # (!\u_lcd|y_cnt\(1) & ((\u_lcd|y_cnt[0]~9\) # (GND)))
-- \u_lcd|y_cnt[1]~11\ = CARRY((!\u_lcd|y_cnt[0]~9\) # (!\u_lcd|y_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|y_cnt\(1),
	datad => VCC,
	cin => \u_lcd|y_cnt[0]~9\,
	combout => \u_lcd|y_cnt[1]~10_combout\,
	cout => \u_lcd|y_cnt[1]~11\);

-- Location: FF_X44_Y30_N7
\u_lcd|y_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|y_cnt[1]~10_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \u_lcd|y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|y_cnt\(1));

-- Location: LCCOMB_X44_Y30_N8
\u_lcd|y_cnt[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|y_cnt[2]~12_combout\ = (\u_lcd|y_cnt\(2) & (\u_lcd|y_cnt[1]~11\ $ (GND))) # (!\u_lcd|y_cnt\(2) & (!\u_lcd|y_cnt[1]~11\ & VCC))
-- \u_lcd|y_cnt[2]~13\ = CARRY((\u_lcd|y_cnt\(2) & !\u_lcd|y_cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|y_cnt\(2),
	datad => VCC,
	cin => \u_lcd|y_cnt[1]~11\,
	combout => \u_lcd|y_cnt[2]~12_combout\,
	cout => \u_lcd|y_cnt[2]~13\);

-- Location: FF_X44_Y30_N9
\u_lcd|y_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|y_cnt[2]~12_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \u_lcd|y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|y_cnt\(2));

-- Location: LCCOMB_X44_Y30_N10
\u_lcd|y_cnt[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|y_cnt[3]~14_combout\ = (\u_lcd|y_cnt\(3) & (!\u_lcd|y_cnt[2]~13\)) # (!\u_lcd|y_cnt\(3) & ((\u_lcd|y_cnt[2]~13\) # (GND)))
-- \u_lcd|y_cnt[3]~15\ = CARRY((!\u_lcd|y_cnt[2]~13\) # (!\u_lcd|y_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|y_cnt\(3),
	datad => VCC,
	cin => \u_lcd|y_cnt[2]~13\,
	combout => \u_lcd|y_cnt[3]~14_combout\,
	cout => \u_lcd|y_cnt[3]~15\);

-- Location: FF_X44_Y30_N11
\u_lcd|y_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|y_cnt[3]~14_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \u_lcd|y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|y_cnt\(3));

-- Location: LCCOMB_X44_Y30_N12
\u_lcd|y_cnt[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|y_cnt[4]~16_combout\ = (\u_lcd|y_cnt\(4) & (\u_lcd|y_cnt[3]~15\ $ (GND))) # (!\u_lcd|y_cnt\(4) & (!\u_lcd|y_cnt[3]~15\ & VCC))
-- \u_lcd|y_cnt[4]~17\ = CARRY((\u_lcd|y_cnt\(4) & !\u_lcd|y_cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|y_cnt\(4),
	datad => VCC,
	cin => \u_lcd|y_cnt[3]~15\,
	combout => \u_lcd|y_cnt[4]~16_combout\,
	cout => \u_lcd|y_cnt[4]~17\);

-- Location: FF_X44_Y30_N13
\u_lcd|y_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|y_cnt[4]~16_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \u_lcd|y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|y_cnt\(4));

-- Location: LCCOMB_X44_Y30_N14
\u_lcd|y_cnt[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|y_cnt[5]~18_combout\ = (\u_lcd|y_cnt\(5) & (!\u_lcd|y_cnt[4]~17\)) # (!\u_lcd|y_cnt\(5) & ((\u_lcd|y_cnt[4]~17\) # (GND)))
-- \u_lcd|y_cnt[5]~19\ = CARRY((!\u_lcd|y_cnt[4]~17\) # (!\u_lcd|y_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|y_cnt\(5),
	datad => VCC,
	cin => \u_lcd|y_cnt[4]~17\,
	combout => \u_lcd|y_cnt[5]~18_combout\,
	cout => \u_lcd|y_cnt[5]~19\);

-- Location: FF_X44_Y30_N15
\u_lcd|y_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|y_cnt[5]~18_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \u_lcd|y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|y_cnt\(5));

-- Location: LCCOMB_X44_Y30_N16
\u_lcd|y_cnt[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|y_cnt[6]~20_combout\ = (\u_lcd|y_cnt\(6) & (\u_lcd|y_cnt[5]~19\ $ (GND))) # (!\u_lcd|y_cnt\(6) & (!\u_lcd|y_cnt[5]~19\ & VCC))
-- \u_lcd|y_cnt[6]~21\ = CARRY((\u_lcd|y_cnt\(6) & !\u_lcd|y_cnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|y_cnt\(6),
	datad => VCC,
	cin => \u_lcd|y_cnt[5]~19\,
	combout => \u_lcd|y_cnt[6]~20_combout\,
	cout => \u_lcd|y_cnt[6]~21\);

-- Location: FF_X44_Y30_N17
\u_lcd|y_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|y_cnt[6]~20_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \u_lcd|y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|y_cnt\(6));

-- Location: LCCOMB_X44_Y30_N18
\u_lcd|y_cnt[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|y_cnt[7]~22_combout\ = \u_lcd|y_cnt[6]~21\ $ (\u_lcd|y_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_lcd|y_cnt\(7),
	cin => \u_lcd|y_cnt[6]~21\,
	combout => \u_lcd|y_cnt[7]~22_combout\);

-- Location: FF_X44_Y30_N19
\u_lcd|y_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|y_cnt[7]~22_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_lcd|ALT_INV_state.STATE_SCAN_DRAW~q\,
	ena => \u_lcd|y_cnt[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|y_cnt\(7));

-- Location: LCCOMB_X44_Y30_N20
\u_lcd|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan3~0_combout\ = (\u_lcd|y_cnt\(7) & ((\u_lcd|y_cnt\(6)) # (\u_lcd|y_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|y_cnt\(6),
	datac => \u_lcd|y_cnt\(5),
	datad => \u_lcd|y_cnt\(7),
	combout => \u_lcd|LessThan3~0_combout\);

-- Location: LCCOMB_X44_Y30_N22
\u_lcd|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan3~1_combout\ = (\u_lcd|y_cnt\(3) & (\u_lcd|y_cnt\(2) & (\u_lcd|y_cnt\(0) & \u_lcd|y_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|y_cnt\(3),
	datab => \u_lcd|y_cnt\(2),
	datac => \u_lcd|y_cnt\(0),
	datad => \u_lcd|y_cnt\(1),
	combout => \u_lcd|LessThan3~1_combout\);

-- Location: LCCOMB_X44_Y30_N0
\u_lcd|LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan3~2_combout\ = (\u_lcd|LessThan3~0_combout\) # ((\u_lcd|y_cnt\(4) & (\u_lcd|LessThan3~1_combout\ & \u_lcd|y_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|y_cnt\(4),
	datab => \u_lcd|LessThan3~0_combout\,
	datac => \u_lcd|LessThan3~1_combout\,
	datad => \u_lcd|y_cnt\(7),
	combout => \u_lcd|LessThan3~2_combout\);

-- Location: LCCOMB_X43_Y31_N14
\u_lcd|state~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|state~23_combout\ = (\u_lcd|state.STATE_SCAN_DRAW~q\ & ((!\u_lcd|state~22_combout\) # (!\u_lcd|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan3~2_combout\,
	datac => \u_lcd|state.STATE_SCAN_DRAW~q\,
	datad => \u_lcd|state~22_combout\,
	combout => \u_lcd|state~23_combout\);

-- Location: LCCOMB_X43_Y28_N4
\u_lcd|Selector73~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector73~1_combout\ = (!\u_lcd|state.STATE_INIT_CMD~q\ & ((\u_lcd|cmd_idx.00000000~q\) # ((!\u_lcd|Selector73~0_combout\ & !\u_lcd|state~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|Selector73~0_combout\,
	datab => \u_lcd|state~23_combout\,
	datac => \u_lcd|cmd_idx.00000000~q\,
	datad => \u_lcd|state.STATE_INIT_CMD~q\,
	combout => \u_lcd|Selector73~1_combout\);

-- Location: FF_X43_Y28_N5
\u_lcd|cmd_idx.00000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|Selector73~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|spi_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00000000~q\);

-- Location: LCCOMB_X43_Y28_N22
\u_lcd|cmd_idx~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|cmd_idx~45_combout\ = (!\u_lcd|cmd_idx.00000000~q\ & \u_lcd|state.STATE_SEND_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|cmd_idx.00000000~q\,
	datad => \u_lcd|state.STATE_SEND_INIT~q\,
	combout => \u_lcd|cmd_idx~45_combout\);

-- Location: FF_X43_Y28_N23
\u_lcd|cmd_idx.00000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|cmd_idx~45_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|cmd_idx~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|cmd_idx.00000001~q\);

-- Location: LCCOMB_X43_Y28_N6
\u_lcd|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|WideNor0~0_combout\ = (!\u_lcd|cmd_idx.00000001~q\ & (!\u_lcd|cmd_idx.00000110~q\ & (\u_lcd|cmd_idx.00000000~q\ & !\u_lcd|cmd_idx.00000011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|cmd_idx.00000001~q\,
	datab => \u_lcd|cmd_idx.00000110~q\,
	datac => \u_lcd|cmd_idx.00000000~q\,
	datad => \u_lcd|cmd_idx.00000011~q\,
	combout => \u_lcd|WideNor0~0_combout\);

-- Location: LCCOMB_X43_Y28_N14
\u_lcd|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|WideNor0~1_combout\ = (!\u_lcd|cmd_idx.00000010~q\ & !\u_lcd|cmd_idx.00000100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|cmd_idx.00000010~q\,
	datac => \u_lcd|cmd_idx.00000100~q\,
	combout => \u_lcd|WideNor0~1_combout\);

-- Location: LCCOMB_X43_Y28_N2
\u_lcd|state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|state~21_combout\ = (\u_lcd|state.STATE_SEND_INIT~q\ & (((\u_lcd|cmd_idx.00000101~q\) # (!\u_lcd|WideNor0~1_combout\)) # (!\u_lcd|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|WideNor0~0_combout\,
	datab => \u_lcd|cmd_idx.00000101~q\,
	datac => \u_lcd|WideNor0~1_combout\,
	datad => \u_lcd|state.STATE_SEND_INIT~q\,
	combout => \u_lcd|state~21_combout\);

-- Location: LCCOMB_X43_Y31_N28
\u_lcd|state~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|state~24_combout\ = (!\u_lcd|state~21_combout\ & (\u_lcd|cmd_idx~40_combout\ & ((\u_lcd|cmd_idx.00010001~q\) # (!\u_lcd|state.STATE_SET_AXIS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|state.STATE_SET_AXIS~q\,
	datab => \u_lcd|state~21_combout\,
	datac => \u_lcd|cmd_idx.00010001~q\,
	datad => \u_lcd|cmd_idx~40_combout\,
	combout => \u_lcd|state~24_combout\);

-- Location: FF_X43_Y31_N7
\u_lcd|state.STATE_HW_RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|state.STATE_HW_RESET~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|state.STATE_HW_RESET~q\);

-- Location: LCCOMB_X43_Y31_N8
\u_lcd|state.STATE_INIT_CMD~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|state.STATE_INIT_CMD~0_combout\ = !\u_lcd|state.STATE_HW_RESET~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_lcd|state.STATE_HW_RESET~q\,
	combout => \u_lcd|state.STATE_INIT_CMD~0_combout\);

-- Location: LCCOMB_X43_Y31_N10
\u_lcd|state~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|state~26_combout\ = (\u_lcd|cmd_idx~40_combout\ & ((\u_lcd|state.STATE_SET_AXIS~q\ & ((\u_lcd|cmd_idx.00010001~q\))) # (!\u_lcd|state.STATE_SET_AXIS~q\ & (!\u_lcd|state~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|state.STATE_SET_AXIS~q\,
	datab => \u_lcd|state~21_combout\,
	datac => \u_lcd|cmd_idx.00010001~q\,
	datad => \u_lcd|cmd_idx~40_combout\,
	combout => \u_lcd|state~26_combout\);

-- Location: FF_X43_Y31_N9
\u_lcd|state.STATE_INIT_CMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|state.STATE_INIT_CMD~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|state.STATE_INIT_CMD~q\);

-- Location: FF_X43_Y31_N25
\u_lcd|state.STATE_SEND_INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_lcd|state.STATE_INIT_CMD~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_lcd|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|state.STATE_SEND_INIT~q\);

-- Location: LCCOMB_X43_Y31_N22
\u_lcd|state~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|state~25_combout\ = (\u_lcd|state.STATE_SEND_INIT~q\) # (\u_lcd|state.STATE_SCAN_DRAW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|state.STATE_SEND_INIT~q\,
	datad => \u_lcd|state.STATE_SCAN_DRAW~q\,
	combout => \u_lcd|state~25_combout\);

-- Location: FF_X43_Y31_N23
\u_lcd|state.STATE_SET_AXIS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|state~25_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|state.STATE_SET_AXIS~q\);

-- Location: LCCOMB_X43_Y31_N20
\u_lcd|delay_cnt[31]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[31]~13_combout\ = (!\u_lcd|state.STATE_SET_AXIS~q\ & (!\u_lcd|state.STATE_SCAN_DRAW~q\ & ((\u_lcd|cmd_idx.00000001~q\) # (!\u_lcd|state.STATE_SEND_INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|state.STATE_SET_AXIS~q\,
	datab => \u_lcd|cmd_idx.00000001~q\,
	datac => \u_lcd|state.STATE_SEND_INIT~q\,
	datad => \u_lcd|state.STATE_SCAN_DRAW~q\,
	combout => \u_lcd|delay_cnt[31]~13_combout\);

-- Location: LCCOMB_X41_Y30_N8
\u_lcd|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~8_combout\ = (\u_lcd|delay_cnt\(4) & ((GND) # (!\u_lcd|Add1~7\))) # (!\u_lcd|delay_cnt\(4) & (\u_lcd|Add1~7\ $ (GND)))
-- \u_lcd|Add1~9\ = CARRY((\u_lcd|delay_cnt\(4)) # (!\u_lcd|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(4),
	datad => VCC,
	cin => \u_lcd|Add1~7\,
	combout => \u_lcd|Add1~8_combout\,
	cout => \u_lcd|Add1~9\);

-- Location: LCCOMB_X45_Y30_N4
\u_lcd|delay_cnt[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[4]~28_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|LessThan0~10_combout\,
	datac => \u_lcd|Add1~8_combout\,
	combout => \u_lcd|delay_cnt[4]~28_combout\);

-- Location: FF_X45_Y30_N5
\u_lcd|delay_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[4]~28_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(4));

-- Location: LCCOMB_X41_Y30_N10
\u_lcd|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~10_combout\ = (\u_lcd|delay_cnt\(5) & (\u_lcd|Add1~9\ & VCC)) # (!\u_lcd|delay_cnt\(5) & (!\u_lcd|Add1~9\))
-- \u_lcd|Add1~11\ = CARRY((!\u_lcd|delay_cnt\(5) & !\u_lcd|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(5),
	datad => VCC,
	cin => \u_lcd|Add1~9\,
	combout => \u_lcd|Add1~10_combout\,
	cout => \u_lcd|Add1~11\);

-- Location: LCCOMB_X42_Y30_N10
\u_lcd|delay_cnt[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[5]~27_combout\ = (\u_lcd|LessThan0~10_combout\ & (((\u_lcd|Add1~10_combout\)))) # (!\u_lcd|LessThan0~10_combout\ & (!\u_lcd|LessThan1~0_combout\ & (\u_lcd|delay_cnt[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan1~0_combout\,
	datab => \u_lcd|delay_cnt[31]~13_combout\,
	datac => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~10_combout\,
	combout => \u_lcd|delay_cnt[5]~27_combout\);

-- Location: FF_X42_Y30_N11
\u_lcd|delay_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[5]~27_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(5));

-- Location: LCCOMB_X41_Y30_N12
\u_lcd|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~12_combout\ = (\u_lcd|delay_cnt\(6) & ((GND) # (!\u_lcd|Add1~11\))) # (!\u_lcd|delay_cnt\(6) & (\u_lcd|Add1~11\ $ (GND)))
-- \u_lcd|Add1~13\ = CARRY((\u_lcd|delay_cnt\(6)) # (!\u_lcd|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(6),
	datad => VCC,
	cin => \u_lcd|Add1~11\,
	combout => \u_lcd|Add1~12_combout\,
	cout => \u_lcd|Add1~13\);

-- Location: LCCOMB_X44_Y30_N24
\u_lcd|delay_cnt[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[6]~26_combout\ = (\u_lcd|Add1~12_combout\ & \u_lcd|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|Add1~12_combout\,
	datad => \u_lcd|LessThan0~10_combout\,
	combout => \u_lcd|delay_cnt[6]~26_combout\);

-- Location: FF_X44_Y30_N25
\u_lcd|delay_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[6]~26_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(6));

-- Location: LCCOMB_X41_Y30_N14
\u_lcd|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~14_combout\ = (\u_lcd|delay_cnt\(7) & (\u_lcd|Add1~13\ & VCC)) # (!\u_lcd|delay_cnt\(7) & (!\u_lcd|Add1~13\))
-- \u_lcd|Add1~15\ = CARRY((!\u_lcd|delay_cnt\(7) & !\u_lcd|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(7),
	datad => VCC,
	cin => \u_lcd|Add1~13\,
	combout => \u_lcd|Add1~14_combout\,
	cout => \u_lcd|Add1~15\);

-- Location: LCCOMB_X42_Y30_N20
\u_lcd|delay_cnt[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[7]~25_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~14_combout\,
	combout => \u_lcd|delay_cnt[7]~25_combout\);

-- Location: FF_X42_Y30_N21
\u_lcd|delay_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[7]~25_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(7));

-- Location: LCCOMB_X42_Y30_N24
\u_lcd|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan0~8_combout\ = (\u_lcd|delay_cnt\(5)) # ((\u_lcd|delay_cnt\(7)) # ((\u_lcd|delay_cnt\(6)) # (\u_lcd|delay_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(5),
	datab => \u_lcd|delay_cnt\(7),
	datac => \u_lcd|delay_cnt\(6),
	datad => \u_lcd|delay_cnt\(4),
	combout => \u_lcd|LessThan0~8_combout\);

-- Location: LCCOMB_X41_Y30_N16
\u_lcd|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~16_combout\ = (\u_lcd|delay_cnt\(8) & ((GND) # (!\u_lcd|Add1~15\))) # (!\u_lcd|delay_cnt\(8) & (\u_lcd|Add1~15\ $ (GND)))
-- \u_lcd|Add1~17\ = CARRY((\u_lcd|delay_cnt\(8)) # (!\u_lcd|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(8),
	datad => VCC,
	cin => \u_lcd|Add1~15\,
	combout => \u_lcd|Add1~16_combout\,
	cout => \u_lcd|Add1~17\);

-- Location: LCCOMB_X43_Y30_N6
\u_lcd|delay_cnt[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[8]~24_combout\ = (\u_lcd|LessThan0~10_combout\ & (((\u_lcd|Add1~16_combout\)))) # (!\u_lcd|LessThan0~10_combout\ & (!\u_lcd|LessThan1~0_combout\ & (\u_lcd|delay_cnt[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan0~10_combout\,
	datab => \u_lcd|LessThan1~0_combout\,
	datac => \u_lcd|delay_cnt[31]~13_combout\,
	datad => \u_lcd|Add1~16_combout\,
	combout => \u_lcd|delay_cnt[8]~24_combout\);

-- Location: FF_X43_Y30_N7
\u_lcd|delay_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[8]~24_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(8));

-- Location: LCCOMB_X41_Y30_N18
\u_lcd|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~18_combout\ = (\u_lcd|delay_cnt\(9) & (\u_lcd|Add1~17\ & VCC)) # (!\u_lcd|delay_cnt\(9) & (!\u_lcd|Add1~17\))
-- \u_lcd|Add1~19\ = CARRY((!\u_lcd|delay_cnt\(9) & !\u_lcd|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(9),
	datad => VCC,
	cin => \u_lcd|Add1~17\,
	combout => \u_lcd|Add1~18_combout\,
	cout => \u_lcd|Add1~19\);

-- Location: LCCOMB_X43_Y30_N4
\u_lcd|delay_cnt[9]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[9]~23_combout\ = (\u_lcd|Add1~18_combout\ & \u_lcd|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|Add1~18_combout\,
	datad => \u_lcd|LessThan0~10_combout\,
	combout => \u_lcd|delay_cnt[9]~23_combout\);

-- Location: FF_X43_Y30_N5
\u_lcd|delay_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[9]~23_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(9));

-- Location: LCCOMB_X41_Y30_N20
\u_lcd|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~20_combout\ = (\u_lcd|delay_cnt\(10) & ((GND) # (!\u_lcd|Add1~19\))) # (!\u_lcd|delay_cnt\(10) & (\u_lcd|Add1~19\ $ (GND)))
-- \u_lcd|Add1~21\ = CARRY((\u_lcd|delay_cnt\(10)) # (!\u_lcd|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(10),
	datad => VCC,
	cin => \u_lcd|Add1~19\,
	combout => \u_lcd|Add1~20_combout\,
	cout => \u_lcd|Add1~21\);

-- Location: LCCOMB_X43_Y30_N30
\u_lcd|delay_cnt[10]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[10]~22_combout\ = (\u_lcd|Add1~20_combout\ & \u_lcd|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|Add1~20_combout\,
	datad => \u_lcd|LessThan0~10_combout\,
	combout => \u_lcd|delay_cnt[10]~22_combout\);

-- Location: FF_X43_Y30_N31
\u_lcd|delay_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[10]~22_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(10));

-- Location: LCCOMB_X41_Y30_N22
\u_lcd|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~22_combout\ = (\u_lcd|delay_cnt\(11) & (\u_lcd|Add1~21\ & VCC)) # (!\u_lcd|delay_cnt\(11) & (!\u_lcd|Add1~21\))
-- \u_lcd|Add1~23\ = CARRY((!\u_lcd|delay_cnt\(11) & !\u_lcd|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(11),
	datad => VCC,
	cin => \u_lcd|Add1~21\,
	combout => \u_lcd|Add1~22_combout\,
	cout => \u_lcd|Add1~23\);

-- Location: LCCOMB_X43_Y30_N28
\u_lcd|delay_cnt[11]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[11]~21_combout\ = (\u_lcd|Add1~22_combout\ & \u_lcd|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|Add1~22_combout\,
	datad => \u_lcd|LessThan0~10_combout\,
	combout => \u_lcd|delay_cnt[11]~21_combout\);

-- Location: FF_X43_Y30_N29
\u_lcd|delay_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[11]~21_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(11));

-- Location: LCCOMB_X41_Y30_N24
\u_lcd|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~24_combout\ = (\u_lcd|delay_cnt\(12) & ((GND) # (!\u_lcd|Add1~23\))) # (!\u_lcd|delay_cnt\(12) & (\u_lcd|Add1~23\ $ (GND)))
-- \u_lcd|Add1~25\ = CARRY((\u_lcd|delay_cnt\(12)) # (!\u_lcd|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(12),
	datad => VCC,
	cin => \u_lcd|Add1~23\,
	combout => \u_lcd|Add1~24_combout\,
	cout => \u_lcd|Add1~25\);

-- Location: LCCOMB_X42_Y30_N6
\u_lcd|delay_cnt[12]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[12]~20_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~24_combout\,
	combout => \u_lcd|delay_cnt[12]~20_combout\);

-- Location: FF_X42_Y30_N7
\u_lcd|delay_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[12]~20_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(12));

-- Location: LCCOMB_X41_Y30_N26
\u_lcd|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~26_combout\ = (\u_lcd|delay_cnt\(13) & (\u_lcd|Add1~25\ & VCC)) # (!\u_lcd|delay_cnt\(13) & (!\u_lcd|Add1~25\))
-- \u_lcd|Add1~27\ = CARRY((!\u_lcd|delay_cnt\(13) & !\u_lcd|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(13),
	datad => VCC,
	cin => \u_lcd|Add1~25\,
	combout => \u_lcd|Add1~26_combout\,
	cout => \u_lcd|Add1~27\);

-- Location: LCCOMB_X42_Y30_N12
\u_lcd|delay_cnt[13]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[13]~19_combout\ = (\u_lcd|LessThan0~10_combout\ & (\u_lcd|Add1~26_combout\)) # (!\u_lcd|LessThan0~10_combout\ & (((!\u_lcd|LessThan1~0_combout\ & \u_lcd|delay_cnt[31]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|Add1~26_combout\,
	datab => \u_lcd|LessThan0~10_combout\,
	datac => \u_lcd|LessThan1~0_combout\,
	datad => \u_lcd|delay_cnt[31]~13_combout\,
	combout => \u_lcd|delay_cnt[13]~19_combout\);

-- Location: FF_X42_Y30_N13
\u_lcd|delay_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[13]~19_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(13));

-- Location: LCCOMB_X41_Y30_N28
\u_lcd|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~28_combout\ = (\u_lcd|delay_cnt\(14) & ((GND) # (!\u_lcd|Add1~27\))) # (!\u_lcd|delay_cnt\(14) & (\u_lcd|Add1~27\ $ (GND)))
-- \u_lcd|Add1~29\ = CARRY((\u_lcd|delay_cnt\(14)) # (!\u_lcd|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(14),
	datad => VCC,
	cin => \u_lcd|Add1~27\,
	combout => \u_lcd|Add1~28_combout\,
	cout => \u_lcd|Add1~29\);

-- Location: LCCOMB_X42_Y30_N30
\u_lcd|delay_cnt[14]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[14]~18_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~28_combout\,
	combout => \u_lcd|delay_cnt[14]~18_combout\);

-- Location: FF_X42_Y30_N31
\u_lcd|delay_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[14]~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(14));

-- Location: LCCOMB_X41_Y30_N30
\u_lcd|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~30_combout\ = (\u_lcd|delay_cnt\(15) & (\u_lcd|Add1~29\ & VCC)) # (!\u_lcd|delay_cnt\(15) & (!\u_lcd|Add1~29\))
-- \u_lcd|Add1~31\ = CARRY((!\u_lcd|delay_cnt\(15) & !\u_lcd|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(15),
	datad => VCC,
	cin => \u_lcd|Add1~29\,
	combout => \u_lcd|Add1~30_combout\,
	cout => \u_lcd|Add1~31\);

-- Location: LCCOMB_X42_Y30_N16
\u_lcd|delay_cnt[15]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[15]~17_combout\ = (\u_lcd|LessThan0~10_combout\ & (((\u_lcd|Add1~30_combout\)))) # (!\u_lcd|LessThan0~10_combout\ & (!\u_lcd|LessThan1~0_combout\ & (\u_lcd|delay_cnt[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan1~0_combout\,
	datab => \u_lcd|delay_cnt[31]~13_combout\,
	datac => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~30_combout\,
	combout => \u_lcd|delay_cnt[15]~17_combout\);

-- Location: FF_X42_Y30_N17
\u_lcd|delay_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[15]~17_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(15));

-- Location: LCCOMB_X41_Y29_N0
\u_lcd|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~32_combout\ = (\u_lcd|delay_cnt\(16) & ((GND) # (!\u_lcd|Add1~31\))) # (!\u_lcd|delay_cnt\(16) & (\u_lcd|Add1~31\ $ (GND)))
-- \u_lcd|Add1~33\ = CARRY((\u_lcd|delay_cnt\(16)) # (!\u_lcd|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(16),
	datad => VCC,
	cin => \u_lcd|Add1~31\,
	combout => \u_lcd|Add1~32_combout\,
	cout => \u_lcd|Add1~33\);

-- Location: LCCOMB_X42_Y30_N2
\u_lcd|delay_cnt[16]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[16]~16_combout\ = (\u_lcd|LessThan0~10_combout\ & (((\u_lcd|Add1~32_combout\)))) # (!\u_lcd|LessThan0~10_combout\ & (!\u_lcd|LessThan1~0_combout\ & (\u_lcd|delay_cnt[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan1~0_combout\,
	datab => \u_lcd|delay_cnt[31]~13_combout\,
	datac => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~32_combout\,
	combout => \u_lcd|delay_cnt[16]~16_combout\);

-- Location: FF_X42_Y30_N3
\u_lcd|delay_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[16]~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(16));

-- Location: LCCOMB_X41_Y29_N2
\u_lcd|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~34_combout\ = (\u_lcd|delay_cnt\(17) & (\u_lcd|Add1~33\ & VCC)) # (!\u_lcd|delay_cnt\(17) & (!\u_lcd|Add1~33\))
-- \u_lcd|Add1~35\ = CARRY((!\u_lcd|delay_cnt\(17) & !\u_lcd|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(17),
	datad => VCC,
	cin => \u_lcd|Add1~33\,
	combout => \u_lcd|Add1~34_combout\,
	cout => \u_lcd|Add1~35\);

-- Location: LCCOMB_X42_Y30_N8
\u_lcd|delay_cnt[17]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[17]~15_combout\ = (\u_lcd|LessThan0~10_combout\ & (((\u_lcd|Add1~34_combout\)))) # (!\u_lcd|LessThan0~10_combout\ & (!\u_lcd|LessThan1~0_combout\ & (\u_lcd|delay_cnt[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan1~0_combout\,
	datab => \u_lcd|delay_cnt[31]~13_combout\,
	datac => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~34_combout\,
	combout => \u_lcd|delay_cnt[17]~15_combout\);

-- Location: FF_X42_Y30_N9
\u_lcd|delay_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[17]~15_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(17));

-- Location: LCCOMB_X41_Y29_N4
\u_lcd|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~36_combout\ = (\u_lcd|delay_cnt\(18) & ((GND) # (!\u_lcd|Add1~35\))) # (!\u_lcd|delay_cnt\(18) & (\u_lcd|Add1~35\ $ (GND)))
-- \u_lcd|Add1~37\ = CARRY((\u_lcd|delay_cnt\(18)) # (!\u_lcd|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(18),
	datad => VCC,
	cin => \u_lcd|Add1~35\,
	combout => \u_lcd|Add1~36_combout\,
	cout => \u_lcd|Add1~37\);

-- Location: LCCOMB_X42_Y30_N22
\u_lcd|delay_cnt[18]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[18]~14_combout\ = (\u_lcd|LessThan0~10_combout\ & (((\u_lcd|Add1~36_combout\)))) # (!\u_lcd|LessThan0~10_combout\ & (!\u_lcd|LessThan1~0_combout\ & (\u_lcd|delay_cnt[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan1~0_combout\,
	datab => \u_lcd|delay_cnt[31]~13_combout\,
	datac => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~36_combout\,
	combout => \u_lcd|delay_cnt[18]~14_combout\);

-- Location: FF_X42_Y30_N23
\u_lcd|delay_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[18]~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(18));

-- Location: LCCOMB_X41_Y29_N6
\u_lcd|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~38_combout\ = (\u_lcd|delay_cnt\(19) & (\u_lcd|Add1~37\ & VCC)) # (!\u_lcd|delay_cnt\(19) & (!\u_lcd|Add1~37\))
-- \u_lcd|Add1~39\ = CARRY((!\u_lcd|delay_cnt\(19) & !\u_lcd|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(19),
	datad => VCC,
	cin => \u_lcd|Add1~37\,
	combout => \u_lcd|Add1~38_combout\,
	cout => \u_lcd|Add1~39\);

-- Location: LCCOMB_X42_Y30_N28
\u_lcd|delay_cnt[19]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[19]~12_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~38_combout\,
	combout => \u_lcd|delay_cnt[19]~12_combout\);

-- Location: FF_X42_Y30_N29
\u_lcd|delay_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[19]~12_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(19));

-- Location: LCCOMB_X41_Y29_N8
\u_lcd|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~40_combout\ = (\u_lcd|delay_cnt\(20) & ((GND) # (!\u_lcd|Add1~39\))) # (!\u_lcd|delay_cnt\(20) & (\u_lcd|Add1~39\ $ (GND)))
-- \u_lcd|Add1~41\ = CARRY((\u_lcd|delay_cnt\(20)) # (!\u_lcd|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(20),
	datad => VCC,
	cin => \u_lcd|Add1~39\,
	combout => \u_lcd|Add1~40_combout\,
	cout => \u_lcd|Add1~41\);

-- Location: LCCOMB_X42_Y29_N6
\u_lcd|delay_cnt[20]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[20]~11_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~40_combout\,
	combout => \u_lcd|delay_cnt[20]~11_combout\);

-- Location: FF_X42_Y29_N7
\u_lcd|delay_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[20]~11_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(20));

-- Location: LCCOMB_X41_Y29_N10
\u_lcd|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~42_combout\ = (\u_lcd|delay_cnt\(21) & (\u_lcd|Add1~41\ & VCC)) # (!\u_lcd|delay_cnt\(21) & (!\u_lcd|Add1~41\))
-- \u_lcd|Add1~43\ = CARRY((!\u_lcd|delay_cnt\(21) & !\u_lcd|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(21),
	datad => VCC,
	cin => \u_lcd|Add1~41\,
	combout => \u_lcd|Add1~42_combout\,
	cout => \u_lcd|Add1~43\);

-- Location: LCCOMB_X42_Y29_N12
\u_lcd|delay_cnt[21]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[21]~10_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~42_combout\,
	combout => \u_lcd|delay_cnt[21]~10_combout\);

-- Location: FF_X42_Y29_N13
\u_lcd|delay_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[21]~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(21));

-- Location: LCCOMB_X41_Y29_N12
\u_lcd|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~44_combout\ = (\u_lcd|delay_cnt\(22) & ((GND) # (!\u_lcd|Add1~43\))) # (!\u_lcd|delay_cnt\(22) & (\u_lcd|Add1~43\ $ (GND)))
-- \u_lcd|Add1~45\ = CARRY((\u_lcd|delay_cnt\(22)) # (!\u_lcd|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(22),
	datad => VCC,
	cin => \u_lcd|Add1~43\,
	combout => \u_lcd|Add1~44_combout\,
	cout => \u_lcd|Add1~45\);

-- Location: LCCOMB_X42_Y29_N14
\u_lcd|delay_cnt[22]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[22]~9_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~44_combout\,
	combout => \u_lcd|delay_cnt[22]~9_combout\);

-- Location: FF_X42_Y29_N15
\u_lcd|delay_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[22]~9_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(22));

-- Location: LCCOMB_X41_Y29_N14
\u_lcd|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~46_combout\ = (\u_lcd|delay_cnt\(23) & (\u_lcd|Add1~45\ & VCC)) # (!\u_lcd|delay_cnt\(23) & (!\u_lcd|Add1~45\))
-- \u_lcd|Add1~47\ = CARRY((!\u_lcd|delay_cnt\(23) & !\u_lcd|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(23),
	datad => VCC,
	cin => \u_lcd|Add1~45\,
	combout => \u_lcd|Add1~46_combout\,
	cout => \u_lcd|Add1~47\);

-- Location: LCCOMB_X42_Y29_N16
\u_lcd|delay_cnt[23]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[23]~8_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~46_combout\,
	combout => \u_lcd|delay_cnt[23]~8_combout\);

-- Location: FF_X42_Y29_N17
\u_lcd|delay_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[23]~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(23));

-- Location: LCCOMB_X41_Y29_N16
\u_lcd|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~48_combout\ = (\u_lcd|delay_cnt\(24) & ((GND) # (!\u_lcd|Add1~47\))) # (!\u_lcd|delay_cnt\(24) & (\u_lcd|Add1~47\ $ (GND)))
-- \u_lcd|Add1~49\ = CARRY((\u_lcd|delay_cnt\(24)) # (!\u_lcd|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(24),
	datad => VCC,
	cin => \u_lcd|Add1~47\,
	combout => \u_lcd|Add1~48_combout\,
	cout => \u_lcd|Add1~49\);

-- Location: LCCOMB_X42_Y29_N28
\u_lcd|delay_cnt[24]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[24]~7_combout\ = (\u_lcd|Add1~48_combout\ & \u_lcd|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|Add1~48_combout\,
	datad => \u_lcd|LessThan0~10_combout\,
	combout => \u_lcd|delay_cnt[24]~7_combout\);

-- Location: FF_X42_Y29_N29
\u_lcd|delay_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[24]~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(24));

-- Location: LCCOMB_X41_Y29_N18
\u_lcd|Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~50_combout\ = (\u_lcd|delay_cnt\(25) & (\u_lcd|Add1~49\ & VCC)) # (!\u_lcd|delay_cnt\(25) & (!\u_lcd|Add1~49\))
-- \u_lcd|Add1~51\ = CARRY((!\u_lcd|delay_cnt\(25) & !\u_lcd|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(25),
	datad => VCC,
	cin => \u_lcd|Add1~49\,
	combout => \u_lcd|Add1~50_combout\,
	cout => \u_lcd|Add1~51\);

-- Location: LCCOMB_X42_Y29_N2
\u_lcd|delay_cnt[25]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[25]~6_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~50_combout\,
	combout => \u_lcd|delay_cnt[25]~6_combout\);

-- Location: FF_X42_Y29_N3
\u_lcd|delay_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[25]~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(25));

-- Location: LCCOMB_X41_Y29_N20
\u_lcd|Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~52_combout\ = (\u_lcd|delay_cnt\(26) & ((GND) # (!\u_lcd|Add1~51\))) # (!\u_lcd|delay_cnt\(26) & (\u_lcd|Add1~51\ $ (GND)))
-- \u_lcd|Add1~53\ = CARRY((\u_lcd|delay_cnt\(26)) # (!\u_lcd|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(26),
	datad => VCC,
	cin => \u_lcd|Add1~51\,
	combout => \u_lcd|Add1~52_combout\,
	cout => \u_lcd|Add1~53\);

-- Location: LCCOMB_X42_Y29_N8
\u_lcd|delay_cnt[26]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[26]~5_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~52_combout\,
	combout => \u_lcd|delay_cnt[26]~5_combout\);

-- Location: FF_X42_Y29_N9
\u_lcd|delay_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[26]~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(26));

-- Location: LCCOMB_X41_Y29_N22
\u_lcd|Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~54_combout\ = (\u_lcd|delay_cnt\(27) & (\u_lcd|Add1~53\ & VCC)) # (!\u_lcd|delay_cnt\(27) & (!\u_lcd|Add1~53\))
-- \u_lcd|Add1~55\ = CARRY((!\u_lcd|delay_cnt\(27) & !\u_lcd|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(27),
	datad => VCC,
	cin => \u_lcd|Add1~53\,
	combout => \u_lcd|Add1~54_combout\,
	cout => \u_lcd|Add1~55\);

-- Location: LCCOMB_X42_Y29_N30
\u_lcd|delay_cnt[27]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[27]~4_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~54_combout\,
	combout => \u_lcd|delay_cnt[27]~4_combout\);

-- Location: FF_X42_Y29_N31
\u_lcd|delay_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[27]~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(27));

-- Location: LCCOMB_X42_Y29_N26
\u_lcd|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan0~1_combout\ = (\u_lcd|delay_cnt\(27)) # ((\u_lcd|delay_cnt\(25)) # ((\u_lcd|delay_cnt\(26)) # (\u_lcd|delay_cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(27),
	datab => \u_lcd|delay_cnt\(25),
	datac => \u_lcd|delay_cnt\(26),
	datad => \u_lcd|delay_cnt\(24),
	combout => \u_lcd|LessThan0~1_combout\);

-- Location: LCCOMB_X42_Y30_N4
\u_lcd|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan0~3_combout\ = (\u_lcd|delay_cnt\(18)) # ((\u_lcd|delay_cnt\(16)) # ((\u_lcd|delay_cnt\(17)) # (\u_lcd|delay_cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(18),
	datab => \u_lcd|delay_cnt\(16),
	datac => \u_lcd|delay_cnt\(17),
	datad => \u_lcd|delay_cnt\(19),
	combout => \u_lcd|LessThan0~3_combout\);

-- Location: LCCOMB_X41_Y29_N24
\u_lcd|Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~56_combout\ = (\u_lcd|delay_cnt\(28) & ((GND) # (!\u_lcd|Add1~55\))) # (!\u_lcd|delay_cnt\(28) & (\u_lcd|Add1~55\ $ (GND)))
-- \u_lcd|Add1~57\ = CARRY((\u_lcd|delay_cnt\(28)) # (!\u_lcd|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(28),
	datad => VCC,
	cin => \u_lcd|Add1~55\,
	combout => \u_lcd|Add1~56_combout\,
	cout => \u_lcd|Add1~57\);

-- Location: LCCOMB_X42_Y29_N18
\u_lcd|delay_cnt[28]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[28]~3_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~56_combout\,
	combout => \u_lcd|delay_cnt[28]~3_combout\);

-- Location: FF_X42_Y29_N19
\u_lcd|delay_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[28]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(28));

-- Location: LCCOMB_X41_Y29_N26
\u_lcd|Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~58_combout\ = (\u_lcd|delay_cnt\(29) & (\u_lcd|Add1~57\ & VCC)) # (!\u_lcd|delay_cnt\(29) & (!\u_lcd|Add1~57\))
-- \u_lcd|Add1~59\ = CARRY((!\u_lcd|delay_cnt\(29) & !\u_lcd|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(29),
	datad => VCC,
	cin => \u_lcd|Add1~57\,
	combout => \u_lcd|Add1~58_combout\,
	cout => \u_lcd|Add1~59\);

-- Location: LCCOMB_X42_Y29_N20
\u_lcd|delay_cnt[29]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[29]~2_combout\ = (\u_lcd|Add1~58_combout\ & \u_lcd|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|Add1~58_combout\,
	datad => \u_lcd|LessThan0~10_combout\,
	combout => \u_lcd|delay_cnt[29]~2_combout\);

-- Location: FF_X42_Y29_N21
\u_lcd|delay_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[29]~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(29));

-- Location: LCCOMB_X41_Y29_N28
\u_lcd|Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~60_combout\ = (\u_lcd|delay_cnt\(30) & ((GND) # (!\u_lcd|Add1~59\))) # (!\u_lcd|delay_cnt\(30) & (\u_lcd|Add1~59\ $ (GND)))
-- \u_lcd|Add1~61\ = CARRY((\u_lcd|delay_cnt\(30)) # (!\u_lcd|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|delay_cnt\(30),
	datad => VCC,
	cin => \u_lcd|Add1~59\,
	combout => \u_lcd|Add1~60_combout\,
	cout => \u_lcd|Add1~61\);

-- Location: LCCOMB_X42_Y29_N10
\u_lcd|delay_cnt[30]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[30]~1_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~60_combout\,
	combout => \u_lcd|delay_cnt[30]~1_combout\);

-- Location: FF_X42_Y29_N11
\u_lcd|delay_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[30]~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(30));

-- Location: LCCOMB_X41_Y29_N30
\u_lcd|Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add1~62_combout\ = \u_lcd|Add1~61\ $ (!\u_lcd|delay_cnt\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_lcd|delay_cnt\(31),
	cin => \u_lcd|Add1~61\,
	combout => \u_lcd|Add1~62_combout\);

-- Location: LCCOMB_X42_Y29_N4
\u_lcd|delay_cnt[31]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|delay_cnt[31]~0_combout\ = (\u_lcd|LessThan0~10_combout\ & \u_lcd|Add1~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|Add1~62_combout\,
	combout => \u_lcd|delay_cnt[31]~0_combout\);

-- Location: FF_X42_Y29_N5
\u_lcd|delay_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|delay_cnt[31]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|delay_cnt\(31));

-- Location: LCCOMB_X42_Y29_N0
\u_lcd|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan0~0_combout\ = (\u_lcd|delay_cnt\(30)) # ((\u_lcd|delay_cnt\(29)) # ((\u_lcd|delay_cnt\(31)) # (\u_lcd|delay_cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(30),
	datab => \u_lcd|delay_cnt\(29),
	datac => \u_lcd|delay_cnt\(31),
	datad => \u_lcd|delay_cnt\(28),
	combout => \u_lcd|LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y29_N24
\u_lcd|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan0~2_combout\ = (\u_lcd|delay_cnt\(21)) # ((\u_lcd|delay_cnt\(23)) # ((\u_lcd|delay_cnt\(22)) # (\u_lcd|delay_cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(21),
	datab => \u_lcd|delay_cnt\(23),
	datac => \u_lcd|delay_cnt\(22),
	datad => \u_lcd|delay_cnt\(20),
	combout => \u_lcd|LessThan0~2_combout\);

-- Location: LCCOMB_X42_Y30_N26
\u_lcd|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan0~4_combout\ = (\u_lcd|LessThan0~1_combout\) # ((\u_lcd|LessThan0~3_combout\) # ((\u_lcd|LessThan0~0_combout\) # (\u_lcd|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan0~1_combout\,
	datab => \u_lcd|LessThan0~3_combout\,
	datac => \u_lcd|LessThan0~0_combout\,
	datad => \u_lcd|LessThan0~2_combout\,
	combout => \u_lcd|LessThan0~4_combout\);

-- Location: LCCOMB_X43_Y30_N8
\u_lcd|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan0~6_combout\ = (\u_lcd|delay_cnt\(8)) # ((\u_lcd|delay_cnt\(9)) # ((\u_lcd|delay_cnt\(10)) # (\u_lcd|delay_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(8),
	datab => \u_lcd|delay_cnt\(9),
	datac => \u_lcd|delay_cnt\(10),
	datad => \u_lcd|delay_cnt\(11),
	combout => \u_lcd|LessThan0~6_combout\);

-- Location: LCCOMB_X42_Y30_N0
\u_lcd|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan0~5_combout\ = (\u_lcd|delay_cnt\(13)) # ((\u_lcd|delay_cnt\(15)) # ((\u_lcd|delay_cnt\(14)) # (\u_lcd|delay_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|delay_cnt\(13),
	datab => \u_lcd|delay_cnt\(15),
	datac => \u_lcd|delay_cnt\(14),
	datad => \u_lcd|delay_cnt\(12),
	combout => \u_lcd|LessThan0~5_combout\);

-- Location: LCCOMB_X42_Y30_N18
\u_lcd|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan0~7_combout\ = (\u_lcd|LessThan0~6_combout\) # (\u_lcd|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|LessThan0~6_combout\,
	datad => \u_lcd|LessThan0~5_combout\,
	combout => \u_lcd|LessThan0~7_combout\);

-- Location: LCCOMB_X42_Y30_N14
\u_lcd|LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan0~10_combout\ = (\u_lcd|LessThan0~9_combout\) # ((\u_lcd|LessThan0~8_combout\) # ((\u_lcd|LessThan0~4_combout\) # (\u_lcd|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan0~9_combout\,
	datab => \u_lcd|LessThan0~8_combout\,
	datac => \u_lcd|LessThan0~4_combout\,
	datad => \u_lcd|LessThan0~7_combout\,
	combout => \u_lcd|LessThan0~10_combout\);

-- Location: LCCOMB_X43_Y31_N0
\u_lcd|bit_cnt[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|bit_cnt[3]~3_combout\ = (!\u_lcd|LessThan1~0_combout\ & ((\u_lcd|WideNor0~combout\ & (\u_lcd|state.STATE_SEND_INIT~q\)) # (!\u_lcd|WideNor0~combout\ & ((\u_lcd|state.STATE_SET_AXIS~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|state.STATE_SEND_INIT~q\,
	datab => \u_lcd|WideNor0~combout\,
	datac => \u_lcd|state.STATE_SET_AXIS~q\,
	datad => \u_lcd|LessThan1~0_combout\,
	combout => \u_lcd|bit_cnt[3]~3_combout\);

-- Location: LCCOMB_X45_Y30_N0
\u_lcd|clk_div~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|clk_div~9_combout\ = \u_lcd|clk_div.0001~q\ $ (((\u_lcd|LessThan1~0_combout\ & !\u_lcd|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan1~0_combout\,
	datab => \u_lcd|LessThan0~10_combout\,
	datac => \u_lcd|clk_div.0001~q\,
	combout => \u_lcd|clk_div~9_combout\);

-- Location: FF_X45_Y30_N1
\u_lcd|clk_div.0001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|clk_div~9_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|clk_div.0001~q\);

-- Location: LCCOMB_X44_Y31_N16
\u_lcd|bit_cnt[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|bit_cnt[3]~2_combout\ = (\u_lcd|LessThan1~0_combout\ & (((!\u_lcd|clk_div.0001~q\)))) # (!\u_lcd|LessThan1~0_combout\ & ((\u_lcd|state.STATE_INIT_CMD~q\) # ((!\u_lcd|state.STATE_HW_RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|state.STATE_INIT_CMD~q\,
	datab => \u_lcd|state.STATE_HW_RESET~q\,
	datac => \u_lcd|clk_div.0001~q\,
	datad => \u_lcd|LessThan1~0_combout\,
	combout => \u_lcd|bit_cnt[3]~2_combout\);

-- Location: LCCOMB_X44_Y30_N30
\u_lcd|bit_cnt[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|bit_cnt[3]~4_combout\ = (\u_lcd|LessThan0~10_combout\) # ((\u_lcd|bit_cnt[3]~3_combout\) # (\u_lcd|bit_cnt[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan0~10_combout\,
	datac => \u_lcd|bit_cnt[3]~3_combout\,
	datad => \u_lcd|bit_cnt[3]~2_combout\,
	combout => \u_lcd|bit_cnt[3]~4_combout\);

-- Location: LCCOMB_X45_Y30_N12
\u_lcd|bit_cnt[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|bit_cnt[0]~7_combout\ = (\u_lcd|bit_cnt\(0) & ((\u_lcd|bit_cnt[3]~4_combout\))) # (!\u_lcd|bit_cnt\(0) & (\u_lcd|LessThan1~0_combout\ & !\u_lcd|bit_cnt[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan1~0_combout\,
	datac => \u_lcd|bit_cnt\(0),
	datad => \u_lcd|bit_cnt[3]~4_combout\,
	combout => \u_lcd|bit_cnt[0]~7_combout\);

-- Location: FF_X45_Y30_N13
\u_lcd|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|bit_cnt[0]~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|bit_cnt\(0));

-- Location: LCCOMB_X45_Y30_N2
\u_lcd|bit_cnt[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|bit_cnt[1]~8_combout\ = (\u_lcd|bit_cnt[3]~4_combout\ & (((\u_lcd|bit_cnt\(1))))) # (!\u_lcd|bit_cnt[3]~4_combout\ & (\u_lcd|LessThan1~0_combout\ & (\u_lcd|bit_cnt\(1) $ (!\u_lcd|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan1~0_combout\,
	datab => \u_lcd|bit_cnt[3]~4_combout\,
	datac => \u_lcd|bit_cnt\(1),
	datad => \u_lcd|bit_cnt\(0),
	combout => \u_lcd|bit_cnt[1]~8_combout\);

-- Location: FF_X45_Y30_N3
\u_lcd|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|bit_cnt[1]~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|bit_cnt\(1));

-- Location: LCCOMB_X45_Y30_N8
\u_lcd|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add2~1_combout\ = \u_lcd|bit_cnt\(2) $ (((\u_lcd|bit_cnt\(0)) # (\u_lcd|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|bit_cnt\(0),
	datab => \u_lcd|bit_cnt\(2),
	datad => \u_lcd|bit_cnt\(1),
	combout => \u_lcd|Add2~1_combout\);

-- Location: LCCOMB_X45_Y30_N16
\u_lcd|bit_cnt[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|bit_cnt[2]~6_combout\ = (\u_lcd|bit_cnt[3]~4_combout\ & (((\u_lcd|bit_cnt\(2))))) # (!\u_lcd|bit_cnt[3]~4_combout\ & (\u_lcd|LessThan1~0_combout\ & (!\u_lcd|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan1~0_combout\,
	datab => \u_lcd|Add2~1_combout\,
	datac => \u_lcd|bit_cnt\(2),
	datad => \u_lcd|bit_cnt[3]~4_combout\,
	combout => \u_lcd|bit_cnt[2]~6_combout\);

-- Location: FF_X45_Y30_N17
\u_lcd|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|bit_cnt[2]~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|bit_cnt\(2));

-- Location: LCCOMB_X45_Y30_N6
\u_lcd|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add2~2_combout\ = \u_lcd|bit_cnt\(3) $ (((\u_lcd|bit_cnt\(0)) # ((\u_lcd|bit_cnt\(2)) # (\u_lcd|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|bit_cnt\(0),
	datab => \u_lcd|bit_cnt\(2),
	datac => \u_lcd|bit_cnt\(3),
	datad => \u_lcd|bit_cnt\(1),
	combout => \u_lcd|Add2~2_combout\);

-- Location: LCCOMB_X45_Y30_N14
\u_lcd|bit_cnt[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|bit_cnt[3]~5_combout\ = (\u_lcd|bit_cnt[3]~4_combout\ & ((\u_lcd|bit_cnt\(3)))) # (!\u_lcd|bit_cnt[3]~4_combout\ & (!\u_lcd|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|Add2~2_combout\,
	datac => \u_lcd|bit_cnt\(3),
	datad => \u_lcd|bit_cnt[3]~4_combout\,
	combout => \u_lcd|bit_cnt[3]~5_combout\);

-- Location: FF_X45_Y30_N15
\u_lcd|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|bit_cnt[3]~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|bit_cnt\(3));

-- Location: LCCOMB_X45_Y30_N30
\u_lcd|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|LessThan1~0_combout\ = (\u_lcd|bit_cnt\(0)) # ((\u_lcd|bit_cnt\(2)) # ((\u_lcd|bit_cnt\(3)) # (\u_lcd|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|bit_cnt\(0),
	datab => \u_lcd|bit_cnt\(2),
	datac => \u_lcd|bit_cnt\(3),
	datad => \u_lcd|bit_cnt\(1),
	combout => \u_lcd|LessThan1~0_combout\);

-- Location: LCCOMB_X45_Y30_N20
\u_lcd|SCL~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|SCL~0_combout\ = (\u_lcd|LessThan1~0_combout\ & ((\u_lcd|LessThan0~10_combout\ & (\u_lcd|SCL~q\)) # (!\u_lcd|LessThan0~10_combout\ & ((!\u_lcd|clk_div.0001~q\))))) # (!\u_lcd|LessThan1~0_combout\ & (((\u_lcd|SCL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan1~0_combout\,
	datab => \u_lcd|LessThan0~10_combout\,
	datac => \u_lcd|SCL~q\,
	datad => \u_lcd|clk_div.0001~q\,
	combout => \u_lcd|SCL~0_combout\);

-- Location: FF_X45_Y30_N21
\u_lcd|SCL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|SCL~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|SCL~q\);

-- Location: LCCOMB_X42_Y31_N14
\u_lcd|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector22~0_combout\ = (!\u_lcd|cmd_idx.00010000~q\ & (!\u_lcd|cmd_idx.00001100~q\ & (!\u_lcd|cmd_idx.00000111~q\ & !\u_lcd|cmd_idx.00001011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|cmd_idx.00010000~q\,
	datab => \u_lcd|cmd_idx.00001100~q\,
	datac => \u_lcd|cmd_idx.00000111~q\,
	datad => \u_lcd|cmd_idx.00001011~q\,
	combout => \u_lcd|Selector22~0_combout\);

-- Location: LCCOMB_X43_Y29_N26
\u_lcd|Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector22~1_combout\ = ((!\u_lcd|WideNor0~combout\ & \u_lcd|spi_data\(1))) # (!\u_lcd|Selector22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|Selector22~0_combout\,
	datac => \u_lcd|WideNor0~combout\,
	datad => \u_lcd|spi_data\(1),
	combout => \u_lcd|Selector22~1_combout\);

-- Location: LCCOMB_X43_Y32_N26
\u_lcd|spi_data[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|spi_data[2]~2_combout\ = (\u_lcd|state.STATE_SCAN_DRAW~q\ & ((!\u_lcd|p_idx~q\))) # (!\u_lcd|state.STATE_SCAN_DRAW~q\ & (\u_lcd|state.STATE_SET_AXIS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|state.STATE_SCAN_DRAW~q\,
	datac => \u_lcd|state.STATE_SET_AXIS~q\,
	datad => \u_lcd|p_idx~q\,
	combout => \u_lcd|spi_data[2]~2_combout\);

-- Location: LCCOMB_X43_Y30_N12
\u_lcd|ram_raddr[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|ram_raddr[7]~0_combout\ = (\u_lcd|y_cnt\(0) & (\u_lcd|x_cnt\(7) $ (VCC))) # (!\u_lcd|y_cnt\(0) & (\u_lcd|x_cnt\(7) & VCC))
-- \u_lcd|ram_raddr[7]~1\ = CARRY((\u_lcd|y_cnt\(0) & \u_lcd|x_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|y_cnt\(0),
	datab => \u_lcd|x_cnt\(7),
	datad => VCC,
	combout => \u_lcd|ram_raddr[7]~0_combout\,
	cout => \u_lcd|ram_raddr[7]~1\);

-- Location: LCCOMB_X43_Y30_N14
\u_lcd|ram_raddr[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|ram_raddr[8]~2_combout\ = (\u_lcd|y_cnt\(1) & (!\u_lcd|ram_raddr[7]~1\)) # (!\u_lcd|y_cnt\(1) & ((\u_lcd|ram_raddr[7]~1\) # (GND)))
-- \u_lcd|ram_raddr[8]~3\ = CARRY((!\u_lcd|ram_raddr[7]~1\) # (!\u_lcd|y_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|y_cnt\(1),
	datad => VCC,
	cin => \u_lcd|ram_raddr[7]~1\,
	combout => \u_lcd|ram_raddr[8]~2_combout\,
	cout => \u_lcd|ram_raddr[8]~3\);

-- Location: LCCOMB_X43_Y30_N16
\u_lcd|ram_raddr[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|ram_raddr[9]~4_combout\ = (\u_lcd|y_cnt\(2) & (\u_lcd|ram_raddr[8]~3\ $ (GND))) # (!\u_lcd|y_cnt\(2) & (!\u_lcd|ram_raddr[8]~3\ & VCC))
-- \u_lcd|ram_raddr[9]~5\ = CARRY((\u_lcd|y_cnt\(2) & !\u_lcd|ram_raddr[8]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|y_cnt\(2),
	datad => VCC,
	cin => \u_lcd|ram_raddr[8]~3\,
	combout => \u_lcd|ram_raddr[9]~4_combout\,
	cout => \u_lcd|ram_raddr[9]~5\);

-- Location: LCCOMB_X43_Y30_N18
\u_lcd|ram_raddr[10]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|ram_raddr[10]~6_combout\ = (\u_lcd|y_cnt\(3) & (!\u_lcd|ram_raddr[9]~5\)) # (!\u_lcd|y_cnt\(3) & ((\u_lcd|ram_raddr[9]~5\) # (GND)))
-- \u_lcd|ram_raddr[10]~7\ = CARRY((!\u_lcd|ram_raddr[9]~5\) # (!\u_lcd|y_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|y_cnt\(3),
	datad => VCC,
	cin => \u_lcd|ram_raddr[9]~5\,
	combout => \u_lcd|ram_raddr[10]~6_combout\,
	cout => \u_lcd|ram_raddr[10]~7\);

-- Location: LCCOMB_X43_Y30_N20
\u_lcd|ram_raddr[11]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|ram_raddr[11]~8_combout\ = (\u_lcd|y_cnt\(4) & (\u_lcd|ram_raddr[10]~7\ $ (GND))) # (!\u_lcd|y_cnt\(4) & (!\u_lcd|ram_raddr[10]~7\ & VCC))
-- \u_lcd|ram_raddr[11]~9\ = CARRY((\u_lcd|y_cnt\(4) & !\u_lcd|ram_raddr[10]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|y_cnt\(4),
	datad => VCC,
	cin => \u_lcd|ram_raddr[10]~7\,
	combout => \u_lcd|ram_raddr[11]~8_combout\,
	cout => \u_lcd|ram_raddr[11]~9\);

-- Location: LCCOMB_X43_Y30_N22
\u_lcd|ram_raddr[12]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|ram_raddr[12]~10_combout\ = (\u_lcd|y_cnt\(5) & (!\u_lcd|ram_raddr[11]~9\)) # (!\u_lcd|y_cnt\(5) & ((\u_lcd|ram_raddr[11]~9\) # (GND)))
-- \u_lcd|ram_raddr[12]~11\ = CARRY((!\u_lcd|ram_raddr[11]~9\) # (!\u_lcd|y_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|y_cnt\(5),
	datad => VCC,
	cin => \u_lcd|ram_raddr[11]~9\,
	combout => \u_lcd|ram_raddr[12]~10_combout\,
	cout => \u_lcd|ram_raddr[12]~11\);

-- Location: LCCOMB_X43_Y30_N24
\u_lcd|ram_raddr[13]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|ram_raddr[13]~12_combout\ = (\u_lcd|y_cnt\(6) & (\u_lcd|ram_raddr[12]~11\ $ (GND))) # (!\u_lcd|y_cnt\(6) & (!\u_lcd|ram_raddr[12]~11\ & VCC))
-- \u_lcd|ram_raddr[13]~13\ = CARRY((\u_lcd|y_cnt\(6) & !\u_lcd|ram_raddr[12]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|y_cnt\(6),
	datad => VCC,
	cin => \u_lcd|ram_raddr[12]~11\,
	combout => \u_lcd|ram_raddr[13]~12_combout\,
	cout => \u_lcd|ram_raddr[13]~13\);

-- Location: LCCOMB_X43_Y30_N26
\u_lcd|ram_raddr[14]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|ram_raddr[14]~14_combout\ = \u_lcd|ram_raddr[13]~13\ $ (\u_lcd|y_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_lcd|y_cnt\(7),
	cin => \u_lcd|ram_raddr[13]~13\,
	combout => \u_lcd|ram_raddr[14]~14_combout\);

-- Location: FF_X43_Y30_N27
\u_buffer|mem_rtl_0|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|ram_raddr[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1));

-- Location: IOIBUF_X67_Y34_N8
\J2_PCLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J2_PCLK,
	o => \J2_PCLK~input_o\);

-- Location: IOIBUF_X67_Y39_N8
\J2_HREF~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J2_HREF,
	o => \J2_HREF~input_o\);

-- Location: IOIBUF_X63_Y43_N29
\J2_VSYNC~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J2_VSYNC,
	o => \J2_VSYNC~input_o\);

-- Location: FF_X61_Y32_N21
\u_capture|vsync_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	asdata => \J2_VSYNC~input_o\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|vsync_d~q\);

-- Location: LCCOMB_X61_Y32_N26
\u_capture|vsync_negedge\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|vsync_negedge~combout\ = (!\J2_VSYNC~input_o\ & \u_capture|vsync_d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \J2_VSYNC~input_o\,
	datad => \u_capture|vsync_d~q\,
	combout => \u_capture|vsync_negedge~combout\);

-- Location: LCCOMB_X59_Y32_N16
\u_capture|byte_flag~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|byte_flag~0_combout\ = (\J2_HREF~input_o\ & (!\u_capture|vsync_negedge~combout\ & (\u_capture|LessThan0~0_combout\ $ (!\u_capture|byte_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_capture|LessThan0~0_combout\,
	datab => \J2_HREF~input_o\,
	datac => \u_capture|byte_flag~q\,
	datad => \u_capture|vsync_negedge~combout\,
	combout => \u_capture|byte_flag~0_combout\);

-- Location: FF_X59_Y32_N17
\u_capture|byte_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|byte_flag~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|byte_flag~q\);

-- Location: LCCOMB_X60_Y32_N0
\u_capture|ram_addr[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[0]~17_combout\ = (\u_capture|byte_flag~q\ & (\u_capture|ram_addr\(0) $ (VCC))) # (!\u_capture|byte_flag~q\ & (\u_capture|ram_addr\(0) & VCC))
-- \u_capture|ram_addr[0]~18\ = CARRY((\u_capture|byte_flag~q\ & \u_capture|ram_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_capture|byte_flag~q\,
	datab => \u_capture|ram_addr\(0),
	datad => VCC,
	combout => \u_capture|ram_addr[0]~17_combout\,
	cout => \u_capture|ram_addr[0]~18\);

-- Location: LCCOMB_X61_Y32_N12
\u_capture|ram_addr[4]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[4]~47_combout\ = (\J2_HREF~input_o\ & (((!\J2_VSYNC~input_o\ & \u_capture|vsync_d~q\)) # (!\u_capture|LessThan0~0_combout\))) # (!\J2_HREF~input_o\ & (!\J2_VSYNC~input_o\ & (\u_capture|vsync_d~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \J2_HREF~input_o\,
	datab => \J2_VSYNC~input_o\,
	datac => \u_capture|vsync_d~q\,
	datad => \u_capture|LessThan0~0_combout\,
	combout => \u_capture|ram_addr[4]~47_combout\);

-- Location: FF_X60_Y32_N1
\u_capture|ram_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[0]~17_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(0));

-- Location: LCCOMB_X60_Y32_N2
\u_capture|ram_addr[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[1]~19_combout\ = (\u_capture|ram_addr\(1) & (!\u_capture|ram_addr[0]~18\)) # (!\u_capture|ram_addr\(1) & ((\u_capture|ram_addr[0]~18\) # (GND)))
-- \u_capture|ram_addr[1]~20\ = CARRY((!\u_capture|ram_addr[0]~18\) # (!\u_capture|ram_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_capture|ram_addr\(1),
	datad => VCC,
	cin => \u_capture|ram_addr[0]~18\,
	combout => \u_capture|ram_addr[1]~19_combout\,
	cout => \u_capture|ram_addr[1]~20\);

-- Location: FF_X60_Y32_N3
\u_capture|ram_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[1]~19_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(1));

-- Location: LCCOMB_X60_Y32_N4
\u_capture|ram_addr[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[2]~21_combout\ = (\u_capture|ram_addr\(2) & (\u_capture|ram_addr[1]~20\ $ (GND))) # (!\u_capture|ram_addr\(2) & (!\u_capture|ram_addr[1]~20\ & VCC))
-- \u_capture|ram_addr[2]~22\ = CARRY((\u_capture|ram_addr\(2) & !\u_capture|ram_addr[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_capture|ram_addr\(2),
	datad => VCC,
	cin => \u_capture|ram_addr[1]~20\,
	combout => \u_capture|ram_addr[2]~21_combout\,
	cout => \u_capture|ram_addr[2]~22\);

-- Location: FF_X60_Y32_N5
\u_capture|ram_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[2]~21_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(2));

-- Location: LCCOMB_X60_Y32_N6
\u_capture|ram_addr[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[3]~23_combout\ = (\u_capture|ram_addr\(3) & (!\u_capture|ram_addr[2]~22\)) # (!\u_capture|ram_addr\(3) & ((\u_capture|ram_addr[2]~22\) # (GND)))
-- \u_capture|ram_addr[3]~24\ = CARRY((!\u_capture|ram_addr[2]~22\) # (!\u_capture|ram_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_capture|ram_addr\(3),
	datad => VCC,
	cin => \u_capture|ram_addr[2]~22\,
	combout => \u_capture|ram_addr[3]~23_combout\,
	cout => \u_capture|ram_addr[3]~24\);

-- Location: FF_X60_Y32_N7
\u_capture|ram_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[3]~23_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(3));

-- Location: LCCOMB_X60_Y32_N8
\u_capture|ram_addr[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[4]~25_combout\ = (\u_capture|ram_addr\(4) & (\u_capture|ram_addr[3]~24\ $ (GND))) # (!\u_capture|ram_addr\(4) & (!\u_capture|ram_addr[3]~24\ & VCC))
-- \u_capture|ram_addr[4]~26\ = CARRY((\u_capture|ram_addr\(4) & !\u_capture|ram_addr[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_capture|ram_addr\(4),
	datad => VCC,
	cin => \u_capture|ram_addr[3]~24\,
	combout => \u_capture|ram_addr[4]~25_combout\,
	cout => \u_capture|ram_addr[4]~26\);

-- Location: FF_X60_Y32_N9
\u_capture|ram_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[4]~25_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(4));

-- Location: LCCOMB_X60_Y32_N10
\u_capture|ram_addr[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[5]~27_combout\ = (\u_capture|ram_addr\(5) & (!\u_capture|ram_addr[4]~26\)) # (!\u_capture|ram_addr\(5) & ((\u_capture|ram_addr[4]~26\) # (GND)))
-- \u_capture|ram_addr[5]~28\ = CARRY((!\u_capture|ram_addr[4]~26\) # (!\u_capture|ram_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_capture|ram_addr\(5),
	datad => VCC,
	cin => \u_capture|ram_addr[4]~26\,
	combout => \u_capture|ram_addr[5]~27_combout\,
	cout => \u_capture|ram_addr[5]~28\);

-- Location: FF_X60_Y32_N11
\u_capture|ram_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[5]~27_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(5));

-- Location: LCCOMB_X60_Y32_N12
\u_capture|ram_addr[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[6]~29_combout\ = (\u_capture|ram_addr\(6) & (\u_capture|ram_addr[5]~28\ $ (GND))) # (!\u_capture|ram_addr\(6) & (!\u_capture|ram_addr[5]~28\ & VCC))
-- \u_capture|ram_addr[6]~30\ = CARRY((\u_capture|ram_addr\(6) & !\u_capture|ram_addr[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_capture|ram_addr\(6),
	datad => VCC,
	cin => \u_capture|ram_addr[5]~28\,
	combout => \u_capture|ram_addr[6]~29_combout\,
	cout => \u_capture|ram_addr[6]~30\);

-- Location: FF_X60_Y32_N13
\u_capture|ram_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[6]~29_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(6));

-- Location: LCCOMB_X60_Y32_N14
\u_capture|ram_addr[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[7]~31_combout\ = (\u_capture|ram_addr\(7) & (!\u_capture|ram_addr[6]~30\)) # (!\u_capture|ram_addr\(7) & ((\u_capture|ram_addr[6]~30\) # (GND)))
-- \u_capture|ram_addr[7]~32\ = CARRY((!\u_capture|ram_addr[6]~30\) # (!\u_capture|ram_addr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_capture|ram_addr\(7),
	datad => VCC,
	cin => \u_capture|ram_addr[6]~30\,
	combout => \u_capture|ram_addr[7]~31_combout\,
	cout => \u_capture|ram_addr[7]~32\);

-- Location: FF_X60_Y32_N15
\u_capture|ram_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[7]~31_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(7));

-- Location: LCCOMB_X60_Y32_N16
\u_capture|ram_addr[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[8]~33_combout\ = (\u_capture|ram_addr\(8) & (\u_capture|ram_addr[7]~32\ $ (GND))) # (!\u_capture|ram_addr\(8) & (!\u_capture|ram_addr[7]~32\ & VCC))
-- \u_capture|ram_addr[8]~34\ = CARRY((\u_capture|ram_addr\(8) & !\u_capture|ram_addr[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_capture|ram_addr\(8),
	datad => VCC,
	cin => \u_capture|ram_addr[7]~32\,
	combout => \u_capture|ram_addr[8]~33_combout\,
	cout => \u_capture|ram_addr[8]~34\);

-- Location: FF_X60_Y32_N17
\u_capture|ram_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[8]~33_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(8));

-- Location: LCCOMB_X60_Y32_N18
\u_capture|ram_addr[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[9]~35_combout\ = (\u_capture|ram_addr\(9) & (!\u_capture|ram_addr[8]~34\)) # (!\u_capture|ram_addr\(9) & ((\u_capture|ram_addr[8]~34\) # (GND)))
-- \u_capture|ram_addr[9]~36\ = CARRY((!\u_capture|ram_addr[8]~34\) # (!\u_capture|ram_addr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_capture|ram_addr\(9),
	datad => VCC,
	cin => \u_capture|ram_addr[8]~34\,
	combout => \u_capture|ram_addr[9]~35_combout\,
	cout => \u_capture|ram_addr[9]~36\);

-- Location: FF_X60_Y32_N19
\u_capture|ram_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[9]~35_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(9));

-- Location: LCCOMB_X60_Y32_N20
\u_capture|ram_addr[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[10]~37_combout\ = (\u_capture|ram_addr\(10) & (\u_capture|ram_addr[9]~36\ $ (GND))) # (!\u_capture|ram_addr\(10) & (!\u_capture|ram_addr[9]~36\ & VCC))
-- \u_capture|ram_addr[10]~38\ = CARRY((\u_capture|ram_addr\(10) & !\u_capture|ram_addr[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_capture|ram_addr\(10),
	datad => VCC,
	cin => \u_capture|ram_addr[9]~36\,
	combout => \u_capture|ram_addr[10]~37_combout\,
	cout => \u_capture|ram_addr[10]~38\);

-- Location: FF_X60_Y32_N21
\u_capture|ram_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[10]~37_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(10));

-- Location: LCCOMB_X60_Y32_N22
\u_capture|ram_addr[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[11]~39_combout\ = (\u_capture|ram_addr\(11) & (!\u_capture|ram_addr[10]~38\)) # (!\u_capture|ram_addr\(11) & ((\u_capture|ram_addr[10]~38\) # (GND)))
-- \u_capture|ram_addr[11]~40\ = CARRY((!\u_capture|ram_addr[10]~38\) # (!\u_capture|ram_addr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_capture|ram_addr\(11),
	datad => VCC,
	cin => \u_capture|ram_addr[10]~38\,
	combout => \u_capture|ram_addr[11]~39_combout\,
	cout => \u_capture|ram_addr[11]~40\);

-- Location: FF_X60_Y32_N23
\u_capture|ram_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[11]~39_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(11));

-- Location: LCCOMB_X60_Y32_N24
\u_capture|ram_addr[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[12]~41_combout\ = (\u_capture|ram_addr\(12) & (\u_capture|ram_addr[11]~40\ $ (GND))) # (!\u_capture|ram_addr\(12) & (!\u_capture|ram_addr[11]~40\ & VCC))
-- \u_capture|ram_addr[12]~42\ = CARRY((\u_capture|ram_addr\(12) & !\u_capture|ram_addr[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_capture|ram_addr\(12),
	datad => VCC,
	cin => \u_capture|ram_addr[11]~40\,
	combout => \u_capture|ram_addr[12]~41_combout\,
	cout => \u_capture|ram_addr[12]~42\);

-- Location: FF_X60_Y32_N25
\u_capture|ram_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[12]~41_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(12));

-- Location: LCCOMB_X60_Y32_N26
\u_capture|ram_addr[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[13]~43_combout\ = (\u_capture|ram_addr\(13) & (!\u_capture|ram_addr[12]~42\)) # (!\u_capture|ram_addr\(13) & ((\u_capture|ram_addr[12]~42\) # (GND)))
-- \u_capture|ram_addr[13]~44\ = CARRY((!\u_capture|ram_addr[12]~42\) # (!\u_capture|ram_addr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_capture|ram_addr\(13),
	datad => VCC,
	cin => \u_capture|ram_addr[12]~42\,
	combout => \u_capture|ram_addr[13]~43_combout\,
	cout => \u_capture|ram_addr[13]~44\);

-- Location: FF_X60_Y32_N27
\u_capture|ram_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[13]~43_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(13));

-- Location: LCCOMB_X60_Y32_N28
\u_capture|ram_addr[14]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|ram_addr[14]~45_combout\ = \u_capture|ram_addr[13]~44\ $ (!\u_capture|ram_addr\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_capture|ram_addr\(14),
	cin => \u_capture|ram_addr[13]~44\,
	combout => \u_capture|ram_addr[14]~45_combout\);

-- Location: FF_X60_Y32_N29
\u_capture|ram_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|ram_addr[14]~45_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_capture|vsync_negedge~combout\,
	ena => \u_capture|ram_addr[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|ram_addr\(14));

-- Location: LCCOMB_X60_Y32_N30
\u_capture|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|LessThan0~0_combout\ = (\u_capture|ram_addr\(14) & ((\u_capture|ram_addr\(13)) # (\u_capture|ram_addr\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_capture|ram_addr\(14),
	datac => \u_capture|ram_addr\(13),
	datad => \u_capture|ram_addr\(12),
	combout => \u_capture|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y32_N6
\u_capture|pixel_valid~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|pixel_valid~0_combout\ = (!\u_capture|LessThan0~0_combout\ & (\J2_HREF~input_o\ & (\u_capture|byte_flag~q\ & !\u_capture|vsync_negedge~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_capture|LessThan0~0_combout\,
	datab => \J2_HREF~input_o\,
	datac => \u_capture|byte_flag~q\,
	datad => \u_capture|vsync_negedge~combout\,
	combout => \u_capture|pixel_valid~0_combout\);

-- Location: LCCOMB_X59_Y32_N24
\u_capture|pixel_valid~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|pixel_valid~feeder_combout\ = \u_capture|pixel_valid~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_capture|pixel_valid~0_combout\,
	combout => \u_capture|pixel_valid~feeder_combout\);

-- Location: FF_X59_Y32_N25
\u_capture|pixel_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|pixel_valid~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_valid~q\);

-- Location: LCCOMB_X59_Y32_N30
\u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\ = (\u_capture|pixel_valid~q\ & (\u_capture|ram_addr\(14) & !\u_capture|ram_addr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_capture|pixel_valid~q\,
	datab => \u_capture|ram_addr\(14),
	datad => \u_capture|ram_addr\(13),
	combout => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\);

-- Location: LCCOMB_X43_Y30_N10
\u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode491w[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode491w\(2) = (\u_lcd|ram_raddr[14]~14_combout\ & !\u_lcd|ram_raddr[13]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|ram_raddr[14]~14_combout\,
	datad => \u_lcd|ram_raddr[13]~12_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode491w\(2));

-- Location: IOIBUF_X61_Y43_N15
\J2_Y[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J2_Y(3),
	o => \J2_Y[3]~input_o\);

-- Location: LCCOMB_X63_Y32_N14
\u_capture|pixel_data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|pixel_data[1]~feeder_combout\ = \J2_Y[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \J2_Y[3]~input_o\,
	combout => \u_capture|pixel_data[1]~feeder_combout\);

-- Location: FF_X63_Y32_N15
\u_capture|pixel_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|pixel_data[1]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(1));

-- Location: IOIBUF_X56_Y43_N22
\J2_Y[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J2_Y(5),
	o => \J2_Y[5]~input_o\);

-- Location: LCCOMB_X59_Y32_N28
\u_capture|pixel_data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|pixel_data[3]~feeder_combout\ = \J2_Y[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \J2_Y[5]~input_o\,
	combout => \u_capture|pixel_data[3]~feeder_combout\);

-- Location: FF_X59_Y32_N29
\u_capture|pixel_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|pixel_data[3]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(3));

-- Location: M9K_X24_Y28_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a33\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode491w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\);

-- Location: FF_X43_Y30_N11
\u_buffer|mem_rtl_0|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_lcd|ram_raddr[13]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0));

-- Location: LCCOMB_X59_Y32_N0
\u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\ = (\u_capture|pixel_valid~q\ & (!\u_capture|ram_addr\(13) & !\u_capture|ram_addr\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_capture|pixel_valid~q\,
	datab => \u_capture|ram_addr\(13),
	datad => \u_capture|ram_addr\(14),
	combout => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\);

-- Location: LCCOMB_X43_Y30_N2
\u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2) = (!\u_lcd|ram_raddr[14]~14_combout\ & !\u_lcd|ram_raddr[13]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|ram_raddr[14]~14_combout\,
	datad => \u_lcd|ram_raddr[13]~12_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2));

-- Location: M9K_X40_Y28_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X59_Y32_N18
\u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2) = (\u_capture|pixel_valid~q\ & (\u_capture|ram_addr\(13) & !\u_capture|ram_addr\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_capture|pixel_valid~q\,
	datab => \u_capture|ram_addr\(13),
	datad => \u_capture|ram_addr\(14),
	combout => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2));

-- Location: LCCOMB_X43_Y30_N0
\u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2) = (!\u_lcd|ram_raddr[14]~14_combout\ & \u_lcd|ram_raddr[13]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|ram_raddr[14]~14_combout\,
	datad => \u_lcd|ram_raddr[13]~12_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2));

-- Location: M9K_X58_Y37_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a17\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X43_Y32_N6
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[1]~16_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a17~portbdataout\))) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a1~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[1]~16_combout\);

-- Location: LCCOMB_X43_Y32_N4
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[1]~17_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[1]~16_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- \u_buffer|mem_rtl_0|auto_generated|ram_block1a33~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a33~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[1]~16_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[1]~17_combout\);

-- Location: LCCOMB_X43_Y32_N12
\u_lcd|pixel_buf[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|pixel_buf[6]~0_combout\ = (\u_lcd|state.STATE_SCAN_DRAW~q\ & (!\u_lcd|p_idx~q\ & (!\u_lcd|LessThan1~0_combout\ & !\u_lcd|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|state.STATE_SCAN_DRAW~q\,
	datab => \u_lcd|p_idx~q\,
	datac => \u_lcd|LessThan1~0_combout\,
	datad => \u_lcd|LessThan0~10_combout\,
	combout => \u_lcd|pixel_buf[6]~0_combout\);

-- Location: FF_X43_Y32_N5
\u_lcd|pixel_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[1]~17_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|pixel_buf[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|pixel_buf\(1));

-- Location: LCCOMB_X43_Y29_N28
\u_lcd|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector6~0_combout\ = ((\u_lcd|spi_data\(1) & (!\u_lcd|cmd_idx.00000101~q\ & \u_lcd|WideNor0~0_combout\))) # (!\u_lcd|WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|spi_data\(1),
	datab => \u_lcd|cmd_idx.00000101~q\,
	datac => \u_lcd|WideNor0~1_combout\,
	datad => \u_lcd|WideNor0~0_combout\,
	combout => \u_lcd|Selector6~0_combout\);

-- Location: LCCOMB_X43_Y29_N14
\u_lcd|Selector97~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector97~0_combout\ = (\u_lcd|state.STATE_SCAN_DRAW~q\ & ((\u_lcd|pixel_buf\(1)) # ((\u_lcd|spi_data[2]~2_combout\)))) # (!\u_lcd|state.STATE_SCAN_DRAW~q\ & (((\u_lcd|Selector6~0_combout\ & !\u_lcd|spi_data[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|pixel_buf\(1),
	datab => \u_lcd|Selector6~0_combout\,
	datac => \u_lcd|state.STATE_SCAN_DRAW~q\,
	datad => \u_lcd|spi_data[2]~2_combout\,
	combout => \u_lcd|Selector97~0_combout\);

-- Location: LCCOMB_X61_Y34_N12
\u_capture|high_byte[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|high_byte[1]~feeder_combout\ = \J2_Y[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \J2_Y[3]~input_o\,
	combout => \u_capture|high_byte[1]~feeder_combout\);

-- Location: LCCOMB_X61_Y34_N28
\u_capture|high_byte[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|high_byte[0]~0_combout\ = (!\u_capture|byte_flag~q\ & (\J2_HREF~input_o\ & (!\u_capture|vsync_negedge~combout\ & !\u_capture|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_capture|byte_flag~q\,
	datab => \J2_HREF~input_o\,
	datac => \u_capture|vsync_negedge~combout\,
	datad => \u_capture|LessThan0~0_combout\,
	combout => \u_capture|high_byte[0]~0_combout\);

-- Location: FF_X61_Y34_N13
\u_capture|high_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|high_byte[1]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|high_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|high_byte\(1));

-- Location: FF_X59_Y32_N19
\u_capture|pixel_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	asdata => \u_capture|high_byte\(1),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(9));

-- Location: FF_X61_Y34_N23
\u_capture|high_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	asdata => \J2_Y[5]~input_o\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_capture|high_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|high_byte\(3));

-- Location: LCCOMB_X59_Y32_N4
\u_capture|pixel_data[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|pixel_data[11]~feeder_combout\ = \u_capture|high_byte\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_capture|high_byte\(3),
	combout => \u_capture|pixel_data[11]~feeder_combout\);

-- Location: FF_X59_Y32_N5
\u_capture|pixel_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|pixel_data[11]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(11));

-- Location: M9K_X58_Y27_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a41\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode491w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\);

-- Location: M9K_X24_Y27_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a25\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: M9K_X58_Y29_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a9\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X43_Y29_N16
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[9]~0_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a25~portbdataout\)) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a9~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[9]~0_combout\);

-- Location: LCCOMB_X43_Y29_N6
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[9]~1_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[9]~0_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a41~portbdataout\ & 
-- \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|ram_block1a41~portbdataout\,
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[9]~0_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[9]~1_combout\);

-- Location: LCCOMB_X43_Y29_N0
\u_lcd|Selector97~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector97~1_combout\ = (\u_lcd|spi_data[2]~2_combout\ & ((\u_lcd|Selector97~0_combout\ & ((\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[9]~1_combout\))) # (!\u_lcd|Selector97~0_combout\ & (\u_lcd|Selector22~1_combout\)))) # 
-- (!\u_lcd|spi_data[2]~2_combout\ & (((\u_lcd|Selector97~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|Selector22~1_combout\,
	datab => \u_lcd|spi_data[2]~2_combout\,
	datac => \u_lcd|Selector97~0_combout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[9]~1_combout\,
	combout => \u_lcd|Selector97~1_combout\);

-- Location: LCCOMB_X43_Y29_N4
\u_lcd|spi_data[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|spi_data[6]~1_combout\ = (!\u_lcd|state.STATE_INIT_CMD~q\ & \u_lcd|state.STATE_HW_RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lcd|state.STATE_INIT_CMD~q\,
	datad => \u_lcd|state.STATE_HW_RESET~q\,
	combout => \u_lcd|spi_data[6]~1_combout\);

-- Location: LCCOMB_X42_Y29_N22
\u_lcd|spi_data[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|spi_data[6]~3_combout\ = (\u_lcd|spi_data[6]~1_combout\ & (\rst_n~input_o\ & (!\u_lcd|LessThan1~0_combout\ & !\u_lcd|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|spi_data[6]~1_combout\,
	datab => \rst_n~input_o\,
	datac => \u_lcd|LessThan1~0_combout\,
	datad => \u_lcd|LessThan0~10_combout\,
	combout => \u_lcd|spi_data[6]~3_combout\);

-- Location: FF_X43_Y29_N1
\u_lcd|spi_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|Selector97~1_combout\,
	ena => \u_lcd|spi_data[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|spi_data\(1));

-- Location: LCCOMB_X45_Y30_N18
\u_lcd|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Add2~0_combout\ = \u_lcd|bit_cnt\(0) $ (\u_lcd|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|bit_cnt\(0),
	datad => \u_lcd|bit_cnt\(1),
	combout => \u_lcd|Add2~0_combout\);

-- Location: LCCOMB_X43_Y28_N20
\u_lcd|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector4~0_combout\ = (\u_lcd|cmd_idx.00000010~q\) # ((\u_lcd|cmd_idx.00000110~q\) # ((\u_lcd|WideNor0~combout\ & \u_lcd|spi_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|WideNor0~combout\,
	datab => \u_lcd|cmd_idx.00000010~q\,
	datac => \u_lcd|spi_data\(3),
	datad => \u_lcd|cmd_idx.00000110~q\,
	combout => \u_lcd|Selector4~0_combout\);

-- Location: M9K_X58_Y25_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: M9K_X58_Y23_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a19\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X43_Y27_N10
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[3]~18_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a19~portbdataout\))) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a3~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[3]~18_combout\);

-- Location: LCCOMB_X43_Y27_N30
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[3]~19_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[3]~18_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & \u_buffer|mem_rtl_0|auto_generated|ram_block1a35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a35\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[3]~18_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[3]~19_combout\);

-- Location: FF_X43_Y27_N31
\u_lcd|pixel_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[3]~19_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|pixel_buf[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|pixel_buf\(3));

-- Location: LCCOMB_X43_Y27_N12
\u_lcd|Selector95~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector95~0_combout\ = (\u_lcd|spi_data[2]~2_combout\ & (((\u_lcd|state.STATE_SCAN_DRAW~q\)))) # (!\u_lcd|spi_data[2]~2_combout\ & ((\u_lcd|state.STATE_SCAN_DRAW~q\ & ((\u_lcd|pixel_buf\(3)))) # (!\u_lcd|state.STATE_SCAN_DRAW~q\ & 
-- (\u_lcd|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|Selector4~0_combout\,
	datab => \u_lcd|spi_data[2]~2_combout\,
	datac => \u_lcd|pixel_buf\(3),
	datad => \u_lcd|state.STATE_SCAN_DRAW~q\,
	combout => \u_lcd|Selector95~0_combout\);

-- Location: LCCOMB_X43_Y27_N4
\u_lcd|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector20~0_combout\ = ((\u_lcd|cmd_idx.00010001~q\) # ((!\u_lcd|WideNor0~combout\ & \u_lcd|spi_data\(3)))) # (!\u_lcd|Selector22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|Selector22~0_combout\,
	datab => \u_lcd|WideNor0~combout\,
	datac => \u_lcd|cmd_idx.00010001~q\,
	datad => \u_lcd|spi_data\(3),
	combout => \u_lcd|Selector20~0_combout\);

-- Location: M9K_X40_Y25_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a11\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y23_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a27\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X43_Y27_N18
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[11]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[11]~2_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a27~portbdataout\))) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a11~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[11]~2_combout\);

-- Location: LCCOMB_X43_Y27_N28
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[11]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[11]~3_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[11]~2_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & \u_buffer|mem_rtl_0|auto_generated|ram_block1a43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a43\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[11]~2_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[11]~3_combout\);

-- Location: LCCOMB_X43_Y27_N24
\u_lcd|Selector95~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector95~1_combout\ = (\u_lcd|Selector95~0_combout\ & (((\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[11]~3_combout\)) # (!\u_lcd|spi_data[2]~2_combout\))) # (!\u_lcd|Selector95~0_combout\ & (\u_lcd|spi_data[2]~2_combout\ & 
-- (\u_lcd|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|Selector95~0_combout\,
	datab => \u_lcd|spi_data[2]~2_combout\,
	datac => \u_lcd|Selector20~0_combout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[11]~3_combout\,
	combout => \u_lcd|Selector95~1_combout\);

-- Location: FF_X43_Y27_N25
\u_lcd|spi_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|Selector95~1_combout\,
	ena => \u_lcd|spi_data[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|spi_data\(3));

-- Location: LCCOMB_X41_Y31_N6
\u_lcd|Selector22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector22~2_combout\ = (!\u_lcd|cmd_idx.00010000~q\ & !\u_lcd|cmd_idx.00001011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|cmd_idx.00010000~q\,
	datad => \u_lcd|cmd_idx.00001011~q\,
	combout => \u_lcd|Selector22~2_combout\);

-- Location: LCCOMB_X43_Y27_N22
\u_lcd|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector21~0_combout\ = (\u_lcd|cmd_idx.00010001~q\) # (((!\u_lcd|WideNor0~combout\ & \u_lcd|spi_data\(2))) # (!\u_lcd|Selector22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|cmd_idx.00010001~q\,
	datab => \u_lcd|WideNor0~combout\,
	datac => \u_lcd|Selector22~2_combout\,
	datad => \u_lcd|spi_data\(2),
	combout => \u_lcd|Selector21~0_combout\);

-- Location: IOIBUF_X67_Y40_N22
\J2_Y[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J2_Y(2),
	o => \J2_Y[2]~input_o\);

-- Location: LCCOMB_X59_Y32_N14
\u_capture|pixel_data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|pixel_data[0]~feeder_combout\ = \J2_Y[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \J2_Y[2]~input_o\,
	combout => \u_capture|pixel_data[0]~feeder_combout\);

-- Location: FF_X59_Y32_N15
\u_capture|pixel_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|pixel_data[0]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(0));

-- Location: IOIBUF_X59_Y43_N15
\J2_Y[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J2_Y(4),
	o => \J2_Y[4]~input_o\);

-- Location: LCCOMB_X63_Y32_N16
\u_capture|pixel_data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|pixel_data[2]~feeder_combout\ = \J2_Y[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \J2_Y[4]~input_o\,
	combout => \u_capture|pixel_data[2]~feeder_combout\);

-- Location: FF_X63_Y32_N17
\u_capture|pixel_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|pixel_data[2]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(2));

-- Location: M9K_X24_Y32_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a32\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode491w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\);

-- Location: M9K_X58_Y26_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X58_Y24_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a18\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X43_Y27_N0
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[2]~20_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a18~portbdataout\))) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[2]~20_combout\);

-- Location: LCCOMB_X43_Y27_N20
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[2]~21_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[2]~20_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & \u_buffer|mem_rtl_0|auto_generated|ram_block1a34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a34\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[2]~20_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[2]~21_combout\);

-- Location: FF_X43_Y27_N21
\u_lcd|pixel_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[2]~21_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|pixel_buf[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|pixel_buf\(2));

-- Location: LCCOMB_X43_Y27_N26
\u_lcd|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector5~0_combout\ = (\u_lcd|cmd_idx.00000011~q\) # ((\u_lcd|cmd_idx.00000100~q\) # ((\u_lcd|spi_data\(2) & \u_lcd|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|cmd_idx.00000011~q\,
	datab => \u_lcd|spi_data\(2),
	datac => \u_lcd|cmd_idx.00000100~q\,
	datad => \u_lcd|WideNor0~combout\,
	combout => \u_lcd|Selector5~0_combout\);

-- Location: LCCOMB_X43_Y27_N8
\u_lcd|Selector96~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector96~0_combout\ = (\u_lcd|state.STATE_SCAN_DRAW~q\ & ((\u_lcd|pixel_buf\(2)) # ((\u_lcd|spi_data[2]~2_combout\)))) # (!\u_lcd|state.STATE_SCAN_DRAW~q\ & (((\u_lcd|Selector5~0_combout\ & !\u_lcd|spi_data[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|state.STATE_SCAN_DRAW~q\,
	datab => \u_lcd|pixel_buf\(2),
	datac => \u_lcd|Selector5~0_combout\,
	datad => \u_lcd|spi_data[2]~2_combout\,
	combout => \u_lcd|Selector96~0_combout\);

-- Location: LCCOMB_X61_Y34_N20
\u_capture|high_byte[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|high_byte[2]~feeder_combout\ = \J2_Y[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \J2_Y[4]~input_o\,
	combout => \u_capture|high_byte[2]~feeder_combout\);

-- Location: FF_X61_Y34_N21
\u_capture|high_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|high_byte[2]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|high_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|high_byte\(2));

-- Location: FF_X59_Y32_N1
\u_capture|pixel_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	asdata => \u_capture|high_byte\(2),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(10));

-- Location: M9K_X40_Y26_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a10\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y27_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a26\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X43_Y27_N14
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[10]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[10]~4_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a26~portbdataout\))) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a10~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[10]~4_combout\);

-- Location: FF_X61_Y34_N31
\u_capture|high_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	asdata => \J2_Y[2]~input_o\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_capture|high_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|high_byte\(0));

-- Location: FF_X59_Y32_N31
\u_capture|pixel_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	asdata => \u_capture|high_byte\(0),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(8));

-- Location: M9K_X58_Y28_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a40\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode491w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X43_Y27_N16
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[10]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[10]~5_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[10]~4_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & \u_buffer|mem_rtl_0|auto_generated|ram_block1a42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[10]~4_combout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a42\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[10]~5_combout\);

-- Location: LCCOMB_X43_Y27_N2
\u_lcd|Selector96~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector96~1_combout\ = (\u_lcd|spi_data[2]~2_combout\ & ((\u_lcd|Selector96~0_combout\ & ((\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[10]~5_combout\))) # (!\u_lcd|Selector96~0_combout\ & (\u_lcd|Selector21~0_combout\)))) # 
-- (!\u_lcd|spi_data[2]~2_combout\ & (((\u_lcd|Selector96~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|Selector21~0_combout\,
	datab => \u_lcd|spi_data[2]~2_combout\,
	datac => \u_lcd|Selector96~0_combout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[10]~5_combout\,
	combout => \u_lcd|Selector96~1_combout\);

-- Location: FF_X43_Y27_N3
\u_lcd|spi_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|Selector96~1_combout\,
	ena => \u_lcd|spi_data[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|spi_data\(2));

-- Location: LCCOMB_X44_Y30_N26
\u_lcd|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Mux0~0_combout\ = (\u_lcd|bit_cnt\(0) & (((\u_lcd|spi_data\(2)) # (!\u_lcd|bit_cnt\(1))))) # (!\u_lcd|bit_cnt\(0) & (\u_lcd|spi_data\(3) & ((!\u_lcd|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|spi_data\(3),
	datab => \u_lcd|bit_cnt\(0),
	datac => \u_lcd|spi_data\(2),
	datad => \u_lcd|bit_cnt\(1),
	combout => \u_lcd|Mux0~0_combout\);

-- Location: LCCOMB_X43_Y29_N12
\u_lcd|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector23~0_combout\ = (\u_lcd|cmd_idx.00001100~q\) # (((!\u_lcd|WideNor0~combout\ & \u_lcd|spi_data\(0))) # (!\u_lcd|Selector22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|cmd_idx.00001100~q\,
	datab => \u_lcd|WideNor0~combout\,
	datac => \u_lcd|spi_data\(0),
	datad => \u_lcd|Selector22~2_combout\,
	combout => \u_lcd|Selector23~0_combout\);

-- Location: M9K_X40_Y36_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a16\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: M9K_X58_Y33_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X43_Y32_N10
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[0]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[0]~22_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a16~portbdataout\)) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[0]~22_combout\);

-- Location: LCCOMB_X43_Y32_N14
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[0]~23_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[0]~22_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- \u_buffer|mem_rtl_0|auto_generated|ram_block1a32~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a32~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[0]~22_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[0]~23_combout\);

-- Location: FF_X43_Y32_N15
\u_lcd|pixel_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[0]~23_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|pixel_buf[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|pixel_buf\(0));

-- Location: LCCOMB_X43_Y29_N22
\u_lcd|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector7~0_combout\ = ((\u_lcd|spi_data\(0) & (!\u_lcd|cmd_idx.00000101~q\ & \u_lcd|WideNor0~1_combout\))) # (!\u_lcd|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|spi_data\(0),
	datab => \u_lcd|cmd_idx.00000101~q\,
	datac => \u_lcd|WideNor0~1_combout\,
	datad => \u_lcd|WideNor0~0_combout\,
	combout => \u_lcd|Selector7~0_combout\);

-- Location: LCCOMB_X43_Y29_N8
\u_lcd|Selector98~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector98~0_combout\ = (\u_lcd|state.STATE_SCAN_DRAW~q\ & ((\u_lcd|pixel_buf\(0)) # ((\u_lcd|spi_data[2]~2_combout\)))) # (!\u_lcd|state.STATE_SCAN_DRAW~q\ & (((\u_lcd|Selector7~0_combout\ & !\u_lcd|spi_data[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|state.STATE_SCAN_DRAW~q\,
	datab => \u_lcd|pixel_buf\(0),
	datac => \u_lcd|Selector7~0_combout\,
	datad => \u_lcd|spi_data[2]~2_combout\,
	combout => \u_lcd|Selector98~0_combout\);

-- Location: M9K_X40_Y29_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: M9K_X24_Y29_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a24\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X43_Y29_N2
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[8]~6_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a24~portbdataout\))) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a8~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[8]~6_combout\);

-- Location: LCCOMB_X43_Y29_N24
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[8]~7_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[8]~6_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- \u_buffer|mem_rtl_0|auto_generated|ram_block1a40~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a40~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[8]~6_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[8]~7_combout\);

-- Location: LCCOMB_X43_Y29_N30
\u_lcd|Selector98~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector98~1_combout\ = (\u_lcd|spi_data[2]~2_combout\ & ((\u_lcd|Selector98~0_combout\ & ((\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[8]~7_combout\))) # (!\u_lcd|Selector98~0_combout\ & (\u_lcd|Selector23~0_combout\)))) # 
-- (!\u_lcd|spi_data[2]~2_combout\ & (((\u_lcd|Selector98~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|Selector23~0_combout\,
	datab => \u_lcd|spi_data[2]~2_combout\,
	datac => \u_lcd|Selector98~0_combout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[8]~7_combout\,
	combout => \u_lcd|Selector98~1_combout\);

-- Location: FF_X43_Y29_N31
\u_lcd|spi_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|Selector98~1_combout\,
	ena => \u_lcd|spi_data[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|spi_data\(0));

-- Location: LCCOMB_X44_Y30_N28
\u_lcd|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Mux0~1_combout\ = (\u_lcd|Add2~0_combout\ & ((\u_lcd|Mux0~0_combout\ & ((\u_lcd|spi_data\(0)))) # (!\u_lcd|Mux0~0_combout\ & (\u_lcd|spi_data\(1))))) # (!\u_lcd|Add2~0_combout\ & (((\u_lcd|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|spi_data\(1),
	datab => \u_lcd|Add2~0_combout\,
	datac => \u_lcd|Mux0~0_combout\,
	datad => \u_lcd|spi_data\(0),
	combout => \u_lcd|Mux0~1_combout\);

-- Location: IOIBUF_X48_Y43_N8
\J2_Y[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J2_Y(7),
	o => \J2_Y[7]~input_o\);

-- Location: FF_X59_Y32_N9
\u_capture|pixel_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	asdata => \J2_Y[7]~input_o\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(5));

-- Location: IOIBUF_X45_Y43_N15
\J2_Y[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J2_Y(9),
	o => \J2_Y[9]~input_o\);

-- Location: LCCOMB_X59_Y32_N10
\u_capture|pixel_data[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|pixel_data[7]~feeder_combout\ = \J2_Y[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \J2_Y[9]~input_o\,
	combout => \u_capture|pixel_data[7]~feeder_combout\);

-- Location: FF_X59_Y32_N11
\u_capture|pixel_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|pixel_data[7]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(7));

-- Location: M9K_X24_Y31_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a37\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode491w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y24_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a21\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: M9K_X24_Y30_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a5\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y32_N0
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[5]~24_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a21~portbdataout\)) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a5~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[5]~24_combout\);

-- Location: LCCOMB_X41_Y32_N18
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[5]~25_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[5]~24_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- \u_buffer|mem_rtl_0|auto_generated|ram_block1a37~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a37~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[5]~24_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[5]~25_combout\);

-- Location: FF_X41_Y32_N19
\u_lcd|pixel_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[5]~25_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|pixel_buf[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|pixel_buf\(5));

-- Location: LCCOMB_X41_Y32_N16
\u_lcd|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector2~0_combout\ = ((\u_lcd|cmd_idx.00000110~q\) # ((\u_lcd|WideNor0~combout\ & \u_lcd|spi_data\(5)))) # (!\u_lcd|WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|WideNor0~1_combout\,
	datab => \u_lcd|cmd_idx.00000110~q\,
	datac => \u_lcd|WideNor0~combout\,
	datad => \u_lcd|spi_data\(5),
	combout => \u_lcd|Selector2~0_combout\);

-- Location: LCCOMB_X41_Y32_N26
\u_lcd|Selector93~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector93~0_combout\ = (\u_lcd|spi_data[2]~2_combout\ & (((\u_lcd|state.STATE_SCAN_DRAW~q\)))) # (!\u_lcd|spi_data[2]~2_combout\ & ((\u_lcd|state.STATE_SCAN_DRAW~q\ & (\u_lcd|pixel_buf\(5))) # (!\u_lcd|state.STATE_SCAN_DRAW~q\ & 
-- ((\u_lcd|Selector2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|pixel_buf\(5),
	datab => \u_lcd|spi_data[2]~2_combout\,
	datac => \u_lcd|state.STATE_SCAN_DRAW~q\,
	datad => \u_lcd|Selector2~0_combout\,
	combout => \u_lcd|Selector93~0_combout\);

-- Location: LCCOMB_X42_Y32_N16
\u_lcd|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector18~0_combout\ = (\u_lcd|cmd_idx.00001011~q\) # ((\u_lcd|cmd_idx.00001100~q\) # ((\u_lcd|cmd_idx.00000111~q\) # (\u_lcd|cmd_idx.00010001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|cmd_idx.00001011~q\,
	datab => \u_lcd|cmd_idx.00001100~q\,
	datac => \u_lcd|cmd_idx.00000111~q\,
	datad => \u_lcd|cmd_idx.00010001~q\,
	combout => \u_lcd|Selector18~0_combout\);

-- Location: LCCOMB_X41_Y32_N4
\u_lcd|Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector18~1_combout\ = (\u_lcd|Selector18~0_combout\) # ((\u_lcd|spi_data\(5) & !\u_lcd|WideNor0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|spi_data\(5),
	datac => \u_lcd|WideNor0~combout\,
	datad => \u_lcd|Selector18~0_combout\,
	combout => \u_lcd|Selector18~1_combout\);

-- Location: LCCOMB_X61_Y34_N0
\u_capture|high_byte[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|high_byte[5]~feeder_combout\ = \J2_Y[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \J2_Y[7]~input_o\,
	combout => \u_capture|high_byte[5]~feeder_combout\);

-- Location: FF_X61_Y34_N1
\u_capture|high_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|high_byte[5]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|high_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|high_byte\(5));

-- Location: LCCOMB_X59_Y32_N2
\u_capture|pixel_data[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|pixel_data[13]~feeder_combout\ = \u_capture|high_byte\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_capture|high_byte\(5),
	combout => \u_capture|pixel_data[13]~feeder_combout\);

-- Location: FF_X59_Y32_N3
\u_capture|pixel_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|pixel_data[13]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(13));

-- Location: FF_X61_Y34_N3
\u_capture|high_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	asdata => \J2_Y[9]~input_o\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_capture|high_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|high_byte\(7));

-- Location: LCCOMB_X59_Y32_N12
\u_capture|pixel_data[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|pixel_data[15]~feeder_combout\ = \u_capture|high_byte\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_capture|high_byte\(7),
	combout => \u_capture|pixel_data[15]~feeder_combout\);

-- Location: FF_X59_Y32_N13
\u_capture|pixel_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|pixel_data[15]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(15));

-- Location: M9K_X40_Y34_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a45\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode491w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\);

-- Location: M9K_X24_Y35_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a13\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M9K_X58_Y36_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a29\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y32_N20
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[13]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[13]~8_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a29~portbdataout\))) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a13~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \u_buffer|mem_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	datac => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[13]~8_combout\);

-- Location: LCCOMB_X41_Y32_N10
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[13]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[13]~9_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[13]~8_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- \u_buffer|mem_rtl_0|auto_generated|ram_block1a45~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a45~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[13]~8_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[13]~9_combout\);

-- Location: LCCOMB_X41_Y32_N24
\u_lcd|Selector93~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector93~1_combout\ = (\u_lcd|Selector93~0_combout\ & (((\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[13]~9_combout\)) # (!\u_lcd|spi_data[2]~2_combout\))) # (!\u_lcd|Selector93~0_combout\ & (\u_lcd|spi_data[2]~2_combout\ & 
-- (\u_lcd|Selector18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|Selector93~0_combout\,
	datab => \u_lcd|spi_data[2]~2_combout\,
	datac => \u_lcd|Selector18~1_combout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[13]~9_combout\,
	combout => \u_lcd|Selector93~1_combout\);

-- Location: FF_X41_Y32_N25
\u_lcd|spi_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|Selector93~1_combout\,
	ena => \u_lcd|spi_data[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|spi_data\(5));

-- Location: LCCOMB_X41_Y31_N2
\u_lcd|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector17~0_combout\ = (\u_lcd|cmd_idx.00001011~q\) # ((\u_lcd|spi_data\(6) & !\u_lcd|WideNor0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|spi_data\(6),
	datac => \u_lcd|WideNor0~combout\,
	datad => \u_lcd|cmd_idx.00001011~q\,
	combout => \u_lcd|Selector17~0_combout\);

-- Location: IOIBUF_X50_Y43_N1
\J2_Y[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J2_Y(6),
	o => \J2_Y[6]~input_o\);

-- Location: FF_X59_Y32_N27
\u_capture|pixel_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	asdata => \J2_Y[6]~input_o\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(4));

-- Location: IOIBUF_X45_Y43_N1
\J2_Y[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J2_Y(8),
	o => \J2_Y[8]~input_o\);

-- Location: LCCOMB_X59_Y32_N20
\u_capture|pixel_data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|pixel_data[6]~feeder_combout\ = \J2_Y[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \J2_Y[8]~input_o\,
	combout => \u_capture|pixel_data[6]~feeder_combout\);

-- Location: FF_X59_Y32_N21
\u_capture|pixel_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|pixel_data[6]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(6));

-- Location: M9K_X58_Y32_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a36\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode491w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\);

-- Location: M9K_X58_Y30_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y32_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a22\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X43_Y32_N2
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[6]~28_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a22~portbdataout\))) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a6~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[6]~28_combout\);

-- Location: LCCOMB_X43_Y32_N18
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[6]~29_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[6]~28_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & \u_buffer|mem_rtl_0|auto_generated|ram_block1a38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a38\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[6]~28_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[6]~29_combout\);

-- Location: FF_X43_Y32_N19
\u_lcd|pixel_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[6]~29_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|pixel_buf[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|pixel_buf\(6));

-- Location: LCCOMB_X43_Y29_N20
\u_lcd|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector1~0_combout\ = (\u_lcd|cmd_idx.00000101~q\) # ((\u_lcd|spi_data\(6) & (\u_lcd|WideNor0~0_combout\ & \u_lcd|WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|spi_data\(6),
	datab => \u_lcd|WideNor0~0_combout\,
	datac => \u_lcd|WideNor0~1_combout\,
	datad => \u_lcd|cmd_idx.00000101~q\,
	combout => \u_lcd|Selector1~0_combout\);

-- Location: LCCOMB_X42_Y31_N30
\u_lcd|Selector92~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector92~0_combout\ = (\u_lcd|state.STATE_SCAN_DRAW~q\ & ((\u_lcd|pixel_buf\(6)) # ((\u_lcd|spi_data[2]~2_combout\)))) # (!\u_lcd|state.STATE_SCAN_DRAW~q\ & (((\u_lcd|Selector1~0_combout\ & !\u_lcd|spi_data[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|pixel_buf\(6),
	datab => \u_lcd|state.STATE_SCAN_DRAW~q\,
	datac => \u_lcd|Selector1~0_combout\,
	datad => \u_lcd|spi_data[2]~2_combout\,
	combout => \u_lcd|Selector92~0_combout\);

-- Location: FF_X61_Y34_N27
\u_capture|high_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	asdata => \J2_Y[6]~input_o\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_capture|high_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|high_byte\(4));

-- Location: LCCOMB_X63_Y32_N12
\u_capture|pixel_data[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|pixel_data[12]~feeder_combout\ = \u_capture|high_byte\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_capture|high_byte\(4),
	combout => \u_capture|pixel_data[12]~feeder_combout\);

-- Location: FF_X63_Y32_N13
\u_capture|pixel_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|pixel_data[12]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(12));

-- Location: LCCOMB_X61_Y34_N24
\u_capture|high_byte[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|high_byte[6]~feeder_combout\ = \J2_Y[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \J2_Y[8]~input_o\,
	combout => \u_capture|high_byte[6]~feeder_combout\);

-- Location: FF_X61_Y34_N25
\u_capture|high_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|high_byte[6]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|high_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|high_byte\(6));

-- Location: LCCOMB_X59_Y32_N22
\u_capture|pixel_data[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_capture|pixel_data[14]~feeder_combout\ = \u_capture|high_byte\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_capture|high_byte\(6),
	combout => \u_capture|pixel_data[14]~feeder_combout\);

-- Location: FF_X59_Y32_N23
\u_capture|pixel_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \J2_PCLK~input_o\,
	d => \u_capture|pixel_data[14]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_capture|pixel_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_capture|pixel_data\(14));

-- Location: M9K_X40_Y33_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a44\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode451w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode491w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y31_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a30\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: M9K_X58_Y31_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a14\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y31_N16
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[14]~12_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a30~portbdataout\)) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a14~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \u_buffer|mem_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	datac => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[14]~12_combout\);

-- Location: LCCOMB_X41_Y31_N10
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[14]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[14]~13_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[14]~12_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a46\ & \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|ram_block1a46\,
	datac => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[14]~12_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[14]~13_combout\);

-- Location: LCCOMB_X41_Y31_N12
\u_lcd|Selector92~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector92~1_combout\ = (\u_lcd|spi_data[2]~2_combout\ & ((\u_lcd|Selector92~0_combout\ & ((\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[14]~13_combout\))) # (!\u_lcd|Selector92~0_combout\ & (\u_lcd|Selector17~0_combout\)))) # 
-- (!\u_lcd|spi_data[2]~2_combout\ & (((\u_lcd|Selector92~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|spi_data[2]~2_combout\,
	datab => \u_lcd|Selector17~0_combout\,
	datac => \u_lcd|Selector92~0_combout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[14]~13_combout\,
	combout => \u_lcd|Selector92~1_combout\);

-- Location: FF_X41_Y31_N13
\u_lcd|spi_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|Selector92~1_combout\,
	ena => \u_lcd|spi_data[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|spi_data\(6));

-- Location: M9K_X58_Y35_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a7\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: M9K_X24_Y34_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a23\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X43_Y32_N0
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[7]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[7]~26_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a23~portbdataout\))) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a7~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[7]~26_combout\);

-- Location: LCCOMB_X43_Y32_N24
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[7]~27_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[7]~26_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & \u_buffer|mem_rtl_0|auto_generated|ram_block1a39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a39\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[7]~26_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[7]~27_combout\);

-- Location: FF_X43_Y32_N25
\u_lcd|pixel_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[7]~27_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|pixel_buf[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|pixel_buf\(7));

-- Location: LCCOMB_X43_Y29_N10
\u_lcd|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector0~0_combout\ = (\u_lcd|cmd_idx.00000101~q\) # ((\u_lcd|spi_data\(7) & (\u_lcd|WideNor0~0_combout\ & \u_lcd|WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|spi_data\(7),
	datab => \u_lcd|WideNor0~0_combout\,
	datac => \u_lcd|WideNor0~1_combout\,
	datad => \u_lcd|cmd_idx.00000101~q\,
	combout => \u_lcd|Selector0~0_combout\);

-- Location: LCCOMB_X42_Y31_N28
\u_lcd|Selector91~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector91~0_combout\ = (\u_lcd|state.STATE_SCAN_DRAW~q\ & ((\u_lcd|pixel_buf\(7)) # ((\u_lcd|spi_data[2]~2_combout\)))) # (!\u_lcd|state.STATE_SCAN_DRAW~q\ & (((\u_lcd|Selector0~0_combout\ & !\u_lcd|spi_data[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|pixel_buf\(7),
	datab => \u_lcd|state.STATE_SCAN_DRAW~q\,
	datac => \u_lcd|Selector0~0_combout\,
	datad => \u_lcd|spi_data[2]~2_combout\,
	combout => \u_lcd|Selector91~0_combout\);

-- Location: LCCOMB_X41_Y31_N4
\u_lcd|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector16~0_combout\ = (\u_lcd|cmd_idx.00010000~q\) # ((!\u_lcd|WideNor0~combout\ & \u_lcd|spi_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|cmd_idx.00010000~q\,
	datac => \u_lcd|WideNor0~combout\,
	datad => \u_lcd|spi_data\(7),
	combout => \u_lcd|Selector16~0_combout\);

-- Location: M9K_X40_Y37_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a31\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y30_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a15\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y31_N18
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[15]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[15]~10_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a31~portbdataout\)) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a15~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[15]~10_combout\);

-- Location: LCCOMB_X41_Y31_N20
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[15]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[15]~11_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[15]~10_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & \u_buffer|mem_rtl_0|auto_generated|ram_block1a47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a47\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[15]~10_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[15]~11_combout\);

-- Location: LCCOMB_X41_Y31_N14
\u_lcd|Selector91~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector91~1_combout\ = (\u_lcd|spi_data[2]~2_combout\ & ((\u_lcd|Selector91~0_combout\ & ((\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[15]~11_combout\))) # (!\u_lcd|Selector91~0_combout\ & (\u_lcd|Selector16~0_combout\)))) # 
-- (!\u_lcd|spi_data[2]~2_combout\ & (\u_lcd|Selector91~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|spi_data[2]~2_combout\,
	datab => \u_lcd|Selector91~0_combout\,
	datac => \u_lcd|Selector16~0_combout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[15]~11_combout\,
	combout => \u_lcd|Selector91~1_combout\);

-- Location: FF_X41_Y31_N15
\u_lcd|spi_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|Selector91~1_combout\,
	ena => \u_lcd|spi_data[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|spi_data\(7));

-- Location: LCCOMB_X45_Y30_N28
\u_lcd|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Mux0~2_combout\ = (\u_lcd|bit_cnt\(0) & ((\u_lcd|spi_data\(6)) # ((!\u_lcd|bit_cnt\(1))))) # (!\u_lcd|bit_cnt\(0) & (((\u_lcd|spi_data\(7) & !\u_lcd|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|bit_cnt\(0),
	datab => \u_lcd|spi_data\(6),
	datac => \u_lcd|spi_data\(7),
	datad => \u_lcd|bit_cnt\(1),
	combout => \u_lcd|Mux0~2_combout\);

-- Location: LCCOMB_X41_Y31_N28
\u_lcd|Selector19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector19~2_combout\ = (\u_lcd|cmd_idx.00010000~q\) # ((\u_lcd|cmd_idx.00001011~q\) # ((\u_lcd|spi_data\(4) & !\u_lcd|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|spi_data\(4),
	datab => \u_lcd|cmd_idx.00010000~q\,
	datac => \u_lcd|WideNor0~combout\,
	datad => \u_lcd|cmd_idx.00001011~q\,
	combout => \u_lcd|Selector19~2_combout\);

-- Location: LCCOMB_X41_Y32_N12
\u_lcd|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector3~0_combout\ = (\u_lcd|cmd_idx.00000001~q\) # (((\u_lcd|spi_data\(4) & \u_lcd|WideNor0~combout\)) # (!\u_lcd|WideNor0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|spi_data\(4),
	datab => \u_lcd|cmd_idx.00000001~q\,
	datac => \u_lcd|WideNor0~combout\,
	datad => \u_lcd|WideNor0~1_combout\,
	combout => \u_lcd|Selector3~0_combout\);

-- Location: M9K_X58_Y34_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: M9K_X24_Y36_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a20\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X43_Y32_N28
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[4]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[4]~30_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a20~portbdataout\))) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a4~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[4]~30_combout\);

-- Location: LCCOMB_X43_Y32_N8
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[4]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[4]~31_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[4]~30_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- \u_buffer|mem_rtl_0|auto_generated|ram_block1a36~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a36~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[4]~30_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[4]~31_combout\);

-- Location: FF_X43_Y32_N9
\u_lcd|pixel_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[4]~31_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|pixel_buf[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|pixel_buf\(4));

-- Location: LCCOMB_X41_Y32_N22
\u_lcd|Selector94~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector94~0_combout\ = (\u_lcd|spi_data[2]~2_combout\ & (((\u_lcd|state.STATE_SCAN_DRAW~q\)))) # (!\u_lcd|spi_data[2]~2_combout\ & ((\u_lcd|state.STATE_SCAN_DRAW~q\ & ((\u_lcd|pixel_buf\(4)))) # (!\u_lcd|state.STATE_SCAN_DRAW~q\ & 
-- (\u_lcd|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|Selector3~0_combout\,
	datab => \u_lcd|spi_data[2]~2_combout\,
	datac => \u_lcd|state.STATE_SCAN_DRAW~q\,
	datad => \u_lcd|pixel_buf\(4),
	combout => \u_lcd|Selector94~0_combout\);

-- Location: M9K_X40_Y35_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a28\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode443w\(2),
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode482w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: M9K_X24_Y33_N0
\u_buffer|mem_rtl_0|auto_generated|ram_block1a12\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "frame_buffer:u_buffer|altsyncram:mem_rtl_0|altsyncram_07f1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 20480,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 20480,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	portbre => VCC,
	clk0 => \J2_PCLK~input_o\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \u_buffer|mem_rtl_0|auto_generated|decode2|w_anode430w[2]~0_combout\,
	ena1 => \u_buffer|mem_rtl_0|auto_generated|rden_decode_b|w_anode468w\(2),
	portadatain => \u_buffer|mem_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \u_buffer|mem_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_buffer|mem_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y32_N28
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[12]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[12]~14_combout\ = (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & (\u_buffer|mem_rtl_0|auto_generated|ram_block1a28~portbdataout\)) # 
-- (!\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0) & ((\u_buffer|mem_rtl_0|auto_generated|ram_block1a12~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datab => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(0),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[12]~14_combout\);

-- Location: LCCOMB_X41_Y32_N6
\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[12]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[12]~15_combout\ = (\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[12]~14_combout\) # ((\u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1) & 
-- \u_buffer|mem_rtl_0|auto_generated|ram_block1a44~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_buffer|mem_rtl_0|auto_generated|address_reg_b\(1),
	datac => \u_buffer|mem_rtl_0|auto_generated|ram_block1a44~portbdataout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[12]~14_combout\,
	combout => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[12]~15_combout\);

-- Location: LCCOMB_X41_Y32_N30
\u_lcd|Selector94~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector94~1_combout\ = (\u_lcd|spi_data[2]~2_combout\ & ((\u_lcd|Selector94~0_combout\ & ((\u_buffer|mem_rtl_0|auto_generated|mux3|result_node[12]~15_combout\))) # (!\u_lcd|Selector94~0_combout\ & (\u_lcd|Selector19~2_combout\)))) # 
-- (!\u_lcd|spi_data[2]~2_combout\ & (((\u_lcd|Selector94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|Selector19~2_combout\,
	datab => \u_lcd|spi_data[2]~2_combout\,
	datac => \u_lcd|Selector94~0_combout\,
	datad => \u_buffer|mem_rtl_0|auto_generated|mux3|result_node[12]~15_combout\,
	combout => \u_lcd|Selector94~1_combout\);

-- Location: FF_X41_Y32_N31
\u_lcd|spi_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|Selector94~1_combout\,
	ena => \u_lcd|spi_data[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|spi_data\(4));

-- Location: LCCOMB_X45_Y30_N10
\u_lcd|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Mux0~3_combout\ = (\u_lcd|Mux0~2_combout\ & (((\u_lcd|spi_data\(4)) # (!\u_lcd|Add2~0_combout\)))) # (!\u_lcd|Mux0~2_combout\ & (\u_lcd|spi_data\(5) & ((\u_lcd|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|spi_data\(5),
	datab => \u_lcd|Mux0~2_combout\,
	datac => \u_lcd|spi_data\(4),
	datad => \u_lcd|Add2~0_combout\,
	combout => \u_lcd|Mux0~3_combout\);

-- Location: LCCOMB_X45_Y30_N22
\u_lcd|SDA~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|SDA~1_combout\ = (\u_lcd|Add2~1_combout\ & (\u_lcd|Mux0~1_combout\)) # (!\u_lcd|Add2~1_combout\ & ((\u_lcd|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|Mux0~1_combout\,
	datac => \u_lcd|Add2~1_combout\,
	datad => \u_lcd|Mux0~3_combout\,
	combout => \u_lcd|SDA~1_combout\);

-- Location: LCCOMB_X45_Y30_N24
\u_lcd|SDA~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|SDA~2_combout\ = (\u_lcd|LessThan1~0_combout\ & (!\u_lcd|LessThan0~10_combout\ & !\u_lcd|clk_div.0001~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|LessThan1~0_combout\,
	datac => \u_lcd|LessThan0~10_combout\,
	datad => \u_lcd|clk_div.0001~q\,
	combout => \u_lcd|SDA~2_combout\);

-- Location: LCCOMB_X45_Y30_N26
\u_lcd|SDA~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|SDA~3_combout\ = (\u_lcd|SDA~2_combout\ & (\u_lcd|SDA~1_combout\)) # (!\u_lcd|SDA~2_combout\ & ((\u_lcd|SDA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|SDA~1_combout\,
	datac => \u_lcd|SDA~q\,
	datad => \u_lcd|SDA~2_combout\,
	combout => \u_lcd|SDA~3_combout\);

-- Location: FF_X45_Y30_N27
\u_lcd|SDA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|SDA~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|SDA~q\);

-- Location: LCCOMB_X44_Y31_N28
\u_lcd|Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector35~0_combout\ = (!\u_lcd|state.STATE_INIT_CMD~q\ & ((\u_lcd|RES~q\) # (!\u_lcd|state.STATE_HW_RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|state.STATE_HW_RESET~q\,
	datac => \u_lcd|RES~q\,
	datad => \u_lcd|state.STATE_INIT_CMD~q\,
	combout => \u_lcd|Selector35~0_combout\);

-- Location: FF_X44_Y31_N29
\u_lcd|RES\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|Selector35~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|spi_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|RES~q\);

-- Location: LCCOMB_X43_Y28_N10
\u_lcd|Selector99~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector99~0_combout\ = (\u_lcd|cmd_idx.00000101~q\) # ((\u_lcd|cmd_idx.00000011~q\) # (!\u_lcd|state.STATE_SEND_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lcd|cmd_idx.00000101~q\,
	datac => \u_lcd|cmd_idx.00000011~q\,
	datad => \u_lcd|state.STATE_SEND_INIT~q\,
	combout => \u_lcd|Selector99~0_combout\);

-- Location: LCCOMB_X43_Y28_N30
\u_lcd|Selector99~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector99~1_combout\ = (\u_lcd|DC~q\ & ((\u_lcd|WideNor0~combout\) # ((\u_lcd|Selector99~0_combout\)))) # (!\u_lcd|DC~q\ & (((\u_lcd|Selector99~0_combout\ & \u_lcd|spi_data[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|WideNor0~combout\,
	datab => \u_lcd|DC~q\,
	datac => \u_lcd|Selector99~0_combout\,
	datad => \u_lcd|spi_data[6]~1_combout\,
	combout => \u_lcd|Selector99~1_combout\);

-- Location: LCCOMB_X42_Y31_N4
\u_lcd|Selector99~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector99~4_combout\ = (\u_lcd|cmd_idx.00001101~q\) # ((\u_lcd|cmd_idx.00001111~q\) # ((\u_lcd|cmd_idx.00001110~q\) # (\u_lcd|cmd_idx.00001010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|cmd_idx.00001101~q\,
	datab => \u_lcd|cmd_idx.00001111~q\,
	datac => \u_lcd|cmd_idx.00001110~q\,
	datad => \u_lcd|cmd_idx.00001010~q\,
	combout => \u_lcd|Selector99~4_combout\);

-- Location: LCCOMB_X42_Y31_N10
\u_lcd|Selector99~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector99~2_combout\ = (\u_lcd|cmd_idx.00010000~q\) # ((\u_lcd|cmd_idx.00001011~q\) # ((\u_lcd|cmd_idx.00001000~q\) # (\u_lcd|cmd_idx.00001001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|cmd_idx.00010000~q\,
	datab => \u_lcd|cmd_idx.00001011~q\,
	datac => \u_lcd|cmd_idx.00001000~q\,
	datad => \u_lcd|cmd_idx.00001001~q\,
	combout => \u_lcd|Selector99~2_combout\);

-- Location: LCCOMB_X43_Y28_N28
\u_lcd|Selector99~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector99~3_combout\ = (\u_lcd|Selector99~2_combout\) # ((!\u_lcd|WideNor0~combout\ & \u_lcd|DC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|WideNor0~combout\,
	datab => \u_lcd|DC~q\,
	datad => \u_lcd|Selector99~2_combout\,
	combout => \u_lcd|Selector99~3_combout\);

-- Location: LCCOMB_X43_Y28_N16
\u_lcd|Selector99~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|Selector99~5_combout\ = (\u_lcd|Selector99~1_combout\ & (((\u_lcd|Selector99~4_combout\) # (\u_lcd|Selector99~3_combout\)) # (!\u_lcd|state.STATE_SET_AXIS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lcd|Selector99~1_combout\,
	datab => \u_lcd|state.STATE_SET_AXIS~q\,
	datac => \u_lcd|Selector99~4_combout\,
	datad => \u_lcd|Selector99~3_combout\,
	combout => \u_lcd|Selector99~5_combout\);

-- Location: FF_X43_Y28_N17
\u_lcd|DC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|Selector99~5_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_lcd|spi_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|DC~q\);

-- Location: LCCOMB_X66_Y23_N4
\u_lcd|CS~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_lcd|CS~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_lcd|CS~feeder_combout\);

-- Location: FF_X66_Y23_N5
\u_lcd|CS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_lcd|CS~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_lcd|CS~q\);

-- Location: IOIBUF_X67_Y31_N22
\J2_Y[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J2_Y(0),
	o => \J2_Y[0]~input_o\);

-- Location: IOIBUF_X67_Y35_N1
\J2_Y[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J2_Y(1),
	o => \J2_Y[1]~input_o\);

-- Location: IOIBUF_X56_Y43_N15
\J2_SIO_D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => J2_SIO_D,
	o => \J2_SIO_D~input_o\);

ww_J2_SIO_C <= \J2_SIO_C~output_o\;

ww_J2_RESET <= \J2_RESET~output_o\;

ww_J2_PWDN <= \J2_PWDN~output_o\;

ww_J2_XCLK <= \J2_XCLK~output_o\;

ww_SCL <= \SCL~output_o\;

ww_SDA <= \SDA~output_o\;

ww_RES <= \RES~output_o\;

ww_DC <= \DC~output_o\;

ww_CS <= \CS~output_o\;

ww_BLK <= \BLK~output_o\;

J2_SIO_D <= \J2_SIO_D~output_o\;
END structure;


