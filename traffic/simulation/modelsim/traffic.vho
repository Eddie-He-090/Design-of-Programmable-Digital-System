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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/13/2019 17:55:33"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	traffic IS
    PORT (
	seg7com : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	key5 : IN std_logic;
	seg7data : OUT std_logic_vector(7 DOWNTO 0)
	);
END traffic;

-- Design Ports Information
-- seg7com[3]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7com[2]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7com[1]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7com[0]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7data[7]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7data[6]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7data[5]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7data[4]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7data[3]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7data[2]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7data[1]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg7data[0]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key5	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF traffic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_seg7com : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_key5 : std_logic;
SIGNAL ww_seg7data : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \inst|q~regout\ : std_logic;
SIGNAL \inst2|Selector12~3_combout\ : std_logic;
SIGNAL \inst1|LessThan1~2_combout\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|Add0~41_combout\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~47_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|LessThan1~3_combout\ : std_logic;
SIGNAL \inst|LessThan1~4_combout\ : std_logic;
SIGNAL \inst|LessThan1~5_combout\ : std_logic;
SIGNAL \inst|LessThan1~6_combout\ : std_logic;
SIGNAL \inst|LessThan1~7_combout\ : std_logic;
SIGNAL \inst|Add0~52_combout\ : std_logic;
SIGNAL \inst|Add0~53_combout\ : std_logic;
SIGNAL \inst|Add0~54_combout\ : std_logic;
SIGNAL \inst|Add0~55_combout\ : std_logic;
SIGNAL \inst|Add0~56_combout\ : std_logic;
SIGNAL \inst|Add0~57_combout\ : std_logic;
SIGNAL \inst|Add0~58_combout\ : std_logic;
SIGNAL \inst|Add0~59_combout\ : std_logic;
SIGNAL \inst|Add0~60_combout\ : std_logic;
SIGNAL \inst|Add0~61_combout\ : std_logic;
SIGNAL \inst|Add0~62_combout\ : std_logic;
SIGNAL \inst|Add0~63_combout\ : std_logic;
SIGNAL \inst|Add0~64_combout\ : std_logic;
SIGNAL \inst|Add0~65_combout\ : std_logic;
SIGNAL \inst|Add0~66_combout\ : std_logic;
SIGNAL \inst|Add0~67_combout\ : std_logic;
SIGNAL \inst|Add0~68_combout\ : std_logic;
SIGNAL \inst|Add0~69_combout\ : std_logic;
SIGNAL \inst|Add0~70_combout\ : std_logic;
SIGNAL \inst|Add0~71_combout\ : std_logic;
SIGNAL \inst|Add0~72_combout\ : std_logic;
SIGNAL \inst|Add0~73_combout\ : std_logic;
SIGNAL \inst|Add0~74_combout\ : std_logic;
SIGNAL \inst|Add0~75_combout\ : std_logic;
SIGNAL \inst|Add0~76_combout\ : std_logic;
SIGNAL \inst|Add0~77_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|COUNT[0]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \inst|q~clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~46_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~45_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~39_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~37_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Add0~35_combout\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Add0~33_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~3_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|Add0~43_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|q~regout\ : std_logic;
SIGNAL \inst1|q~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|CNT4[1]~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|TOseg7com[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \key5~combout\ : std_logic;
SIGNAL \inst2|Selector3~3_combout\ : std_logic;
SIGNAL \inst2|STATE.S4~regout\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|STATE.S1~regout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Selector9~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Selector8~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Selector3~2_combout\ : std_logic;
SIGNAL \inst2|COUNT[5]~4_combout\ : std_logic;
SIGNAL \inst2|COUNT[5]~5_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Selector7~2_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Selector6~0_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Selector5~0_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|Selector4~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Selector3~1_combout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|STATE.S2~regout\ : std_logic;
SIGNAL \inst2|Selector7~3_combout\ : std_logic;
SIGNAL \inst2|LIGHT2[0]~0_combout\ : std_logic;
SIGNAL \inst2|Selector2~1_combout\ : std_logic;
SIGNAL \inst2|STATE.S3~regout\ : std_logic;
SIGNAL \inst2|Selector12~2_combout\ : std_logic;
SIGNAL \inst2|Selector12~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \inst3|CNT4[0]~1_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~1_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \inst3|Mux4~1_combout\ : std_logic;
SIGNAL \inst3|Mux4~2_combout\ : std_logic;
SIGNAL \inst2|Selector15~0_combout\ : std_logic;
SIGNAL \inst2|LIGHT2[2]~1_combout\ : std_logic;
SIGNAL \inst3|Mux5~1_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~2_combout\ : std_logic;
SIGNAL \inst2|Selector13~0_combout\ : std_logic;
SIGNAL \inst2|Selector13~1_combout\ : std_logic;
SIGNAL \inst2|Selector13~2_combout\ : std_logic;
SIGNAL \inst2|Selector13~3_combout\ : std_logic;
SIGNAL \inst3|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst3|Mux7~1_combout\ : std_logic;
SIGNAL \inst3|Mux8~0_combout\ : std_logic;
SIGNAL \inst3|Mux9~0_combout\ : std_logic;
SIGNAL \inst3|Mux10~0_combout\ : std_logic;
SIGNAL \inst3|Mux11~0_combout\ : std_logic;
SIGNAL \inst3|Mux12~0_combout\ : std_logic;
SIGNAL \inst3|Mux13~0_combout\ : std_logic;
SIGNAL \inst3|Mux14~0_combout\ : std_logic;
SIGNAL \inst2|COUNT\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|SHUJU\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst1|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|TOseg7com\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|LIGHT1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|CNT4\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|LIGHT2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Mux8~0_combout\ : std_logic;

BEGIN

seg7com <= ww_seg7com;
ww_clk <= clk;
ww_key5 <= key5;
seg7data <= ww_seg7data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|q~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|q~regout\);

\inst|q~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|q~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\inst3|ALT_INV_Mux8~0_combout\ <= NOT \inst3|Mux8~0_combout\;

-- Location: LCCOMB_X24_Y3_N18
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst2|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\)))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X24_Y3_N20
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\)))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X24_Y3_N22
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X22_Y3_N10
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\)))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X4_Y12_N0
\inst1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|count\(0) $ (GND)
-- \inst1|Add0~1\ = CARRY(!\inst1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X4_Y12_N16
\inst1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|count\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|count\(8) & ((GND) # (!\inst1|Add0~15\)))
-- \inst1|Add0~17\ = CARRY((!\inst1|Add0~15\) # (!\inst1|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X4_Y12_N24
\inst1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|count\(12) & ((GND) # (!\inst1|Add0~23\))) # (!\inst1|count\(12) & (\inst1|Add0~23\ $ (GND)))
-- \inst1|Add0~25\ = CARRY((\inst1|count\(12)) # (!\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X4_Y12_N26
\inst1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|count\(13) & (\inst1|Add0~25\ & VCC)) # (!\inst1|count\(13) & (!\inst1|Add0~25\))
-- \inst1|Add0~27\ = CARRY((!\inst1|count\(13) & !\inst1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X14_Y10_N6
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|count\(0) $ (GND)
-- \inst|Add0~1\ = CARRY(!\inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X14_Y10_N8
\inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|count\(1) & (!\inst|Add0~1\)) # (!\inst|count\(1) & (\inst|Add0~1\ & VCC))
-- \inst|Add0~3\ = CARRY((\inst|count\(1) & !\inst|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X14_Y10_N10
\inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|count\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|count\(2) & ((GND) # (!\inst|Add0~3\)))
-- \inst|Add0~5\ = CARRY((!\inst|Add0~3\) # (!\inst|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X14_Y10_N12
\inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|count\(3) & (!\inst|Add0~5\)) # (!\inst|count\(3) & (\inst|Add0~5\ & VCC))
-- \inst|Add0~7\ = CARRY((\inst|count\(3) & !\inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X14_Y10_N14
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|count\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|count\(4) & ((GND) # (!\inst|Add0~7\)))
-- \inst|Add0~9\ = CARRY((!\inst|Add0~7\) # (!\inst|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X14_Y10_N16
\inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|count\(5) & (!\inst|Add0~9\)) # (!\inst|count\(5) & (\inst|Add0~9\ & VCC))
-- \inst|Add0~11\ = CARRY((\inst|count\(5) & !\inst|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X14_Y10_N18
\inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|count\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|count\(6) & ((GND) # (!\inst|Add0~11\)))
-- \inst|Add0~13\ = CARRY((!\inst|Add0~11\) # (!\inst|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X14_Y10_N20
\inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|count\(7) & (\inst|Add0~13\ & VCC)) # (!\inst|count\(7) & (!\inst|Add0~13\))
-- \inst|Add0~15\ = CARRY((!\inst|count\(7) & !\inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X14_Y10_N22
\inst|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|count\(8) & ((GND) # (!\inst|Add0~15\))) # (!\inst|count\(8) & (\inst|Add0~15\ $ (GND)))
-- \inst|Add0~17\ = CARRY((\inst|count\(8)) # (!\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X14_Y10_N24
\inst|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|count\(9) & (\inst|Add0~17\ & VCC)) # (!\inst|count\(9) & (!\inst|Add0~17\))
-- \inst|Add0~19\ = CARRY((!\inst|count\(9) & !\inst|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X14_Y10_N26
\inst|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|count\(10) & ((GND) # (!\inst|Add0~19\))) # (!\inst|count\(10) & (\inst|Add0~19\ $ (GND)))
-- \inst|Add0~21\ = CARRY((\inst|count\(10)) # (!\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X14_Y10_N28
\inst|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|count\(11) & (\inst|Add0~21\ & VCC)) # (!\inst|count\(11) & (!\inst|Add0~21\))
-- \inst|Add0~23\ = CARRY((!\inst|count\(11) & !\inst|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X14_Y10_N30
\inst|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|count\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|count\(12) & ((GND) # (!\inst|Add0~23\)))
-- \inst|Add0~25\ = CARRY((!\inst|Add0~23\) # (!\inst|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X14_Y9_N0
\inst|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|count\(13) & (!\inst|Add0~25\)) # (!\inst|count\(13) & (\inst|Add0~25\ & VCC))
-- \inst|Add0~27\ = CARRY((\inst|count\(13) & !\inst|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X14_Y9_N2
\inst|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|count\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|count\(14) & ((GND) # (!\inst|Add0~27\)))
-- \inst|Add0~29\ = CARRY((!\inst|Add0~27\) # (!\inst|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X14_Y9_N4
\inst|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|count\(15) & (!\inst|Add0~29\)) # (!\inst|count\(15) & (\inst|Add0~29\ & VCC))
-- \inst|Add0~31\ = CARRY((\inst|count\(15) & !\inst|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X14_Y9_N6
\inst|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|count\(16) & ((GND) # (!\inst|Add0~31\))) # (!\inst|count\(16) & (\inst|Add0~31\ $ (GND)))
-- \inst|Add0~33\ = CARRY((\inst|count\(16)) # (!\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X14_Y9_N8
\inst|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|count\(17) & (!\inst|Add0~33\)) # (!\inst|count\(17) & (\inst|Add0~33\ & VCC))
-- \inst|Add0~35\ = CARRY((\inst|count\(17) & !\inst|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X14_Y9_N10
\inst|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|count\(18) & ((GND) # (!\inst|Add0~35\))) # (!\inst|count\(18) & (\inst|Add0~35\ $ (GND)))
-- \inst|Add0~37\ = CARRY((\inst|count\(18)) # (!\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X14_Y9_N12
\inst|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|count\(19) & (!\inst|Add0~37\)) # (!\inst|count\(19) & (\inst|Add0~37\ & VCC))
-- \inst|Add0~39\ = CARRY((\inst|count\(19) & !\inst|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X14_Y9_N14
\inst|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|count\(20) & (\inst|Add0~39\ $ (GND))) # (!\inst|count\(20) & ((GND) # (!\inst|Add0~39\)))
-- \inst|Add0~41\ = CARRY((!\inst|Add0~39\) # (!\inst|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X14_Y9_N16
\inst|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|count\(21) & (!\inst|Add0~41\)) # (!\inst|count\(21) & (\inst|Add0~41\ & VCC))
-- \inst|Add0~43\ = CARRY((\inst|count\(21) & !\inst|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X14_Y9_N18
\inst|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|count\(22) & (\inst|Add0~43\ $ (GND))) # (!\inst|count\(22) & ((GND) # (!\inst|Add0~43\)))
-- \inst|Add0~45\ = CARRY((!\inst|Add0~43\) # (!\inst|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(22),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: LCCOMB_X14_Y9_N20
\inst|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|count\(23) & (!\inst|Add0~45\)) # (!\inst|count\(23) & (\inst|Add0~45\ & VCC))
-- \inst|Add0~47\ = CARRY((\inst|count\(23) & !\inst|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(23),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: LCCOMB_X14_Y9_N22
\inst|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|count\(24) & ((GND) # (!\inst|Add0~47\))) # (!\inst|count\(24) & (\inst|Add0~47\ $ (GND)))
-- \inst|Add0~49\ = CARRY((\inst|count\(24)) # (!\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(24),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: LCCOMB_X14_Y9_N24
\inst|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = \inst|Add0~49\ $ (\inst|count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|count\(25),
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\);

-- Location: LCCOMB_X25_Y3_N4
\inst2|Div0|auto_generated|divider|divider|StageOut[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\inst2|COUNT\(5) & \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(5),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X24_Y3_N16
\inst2|Div0|auto_generated|divider|divider|StageOut[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X24_Y3_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\inst2|COUNT\(3) & \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|COUNT\(3),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X24_Y3_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\inst2|COUNT\(2) & \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|COUNT\(2),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X20_Y3_N16
\inst2|Div0|auto_generated|divider|divider|StageOut[23]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X20_Y3_N24
\inst2|Div0|auto_generated|divider|divider|StageOut[22]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ = (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X20_Y3_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[21]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X20_Y3_N20
\inst2|Div0|auto_generated|divider|divider|StageOut[20]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ = (\inst2|COUNT\(1) & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(1),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X22_Y4_N4
\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\inst2|COUNT\(5) & \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|COUNT\(5),
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X22_Y4_N16
\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\inst2|COUNT\(4) & \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|COUNT\(4),
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X22_Y4_N20
\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\inst2|COUNT\(2) & \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|COUNT\(2),
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X21_Y4_N18
\inst2|Mod0|auto_generated|divider|divider|StageOut[24]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst2|COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|COUNT\(1),
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\);

-- Location: LCCOMB_X22_Y3_N20
\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X21_Y3_N8
\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ = (\inst2|COUNT\(2) & \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|COUNT\(2),
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCFF_X24_Y4_N3
\inst2|LIGHT1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	datain => \inst2|Selector12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|LIGHT1\(1));

-- Location: LCFF_X3_Y12_N21
\inst1|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(12));

-- Location: LCFF_X3_Y12_N3
\inst1|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(8));

-- Location: LCFF_X3_Y12_N13
\inst1|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(13));

-- Location: LCFF_X13_Y9_N17
\inst|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|q~regout\);

-- Location: LCCOMB_X24_Y4_N2
\inst2|Selector12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector12~3_combout\ = (\inst2|Selector3~1_combout\) # ((!\inst2|Equal0~4_combout\ & (\inst2|Selector12~2_combout\ & \inst2|LIGHT1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \inst2|Selector12~2_combout\,
	datac => \inst2|LIGHT1\(1),
	datad => \inst2|Selector3~1_combout\,
	combout => \inst2|Selector12~3_combout\);

-- Location: LCFF_X3_Y12_N15
\inst1|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(0));

-- Location: LCCOMB_X2_Y12_N10
\inst1|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~2_combout\ = ((\inst1|count\(13)) # ((!\inst1|count\(14)) # (!\inst1|count\(15)))) # (!\inst1|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(8),
	datab => \inst1|count\(13),
	datac => \inst1|count\(15),
	datad => \inst1|count\(14),
	combout => \inst1|LessThan1~2_combout\);

-- Location: LCCOMB_X3_Y12_N20
\inst1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|LessThan1~3_combout\ & \inst1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan1~3_combout\,
	datad => \inst1|Add0~24_combout\,
	combout => \inst1|Add0~36_combout\);

-- Location: LCCOMB_X3_Y12_N2
\inst1|Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~41_combout\ = (!\inst1|Add0~16_combout\ & \inst1|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~16_combout\,
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add0~41_combout\);

-- Location: LCCOMB_X3_Y12_N12
\inst1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = (\inst1|Add0~26_combout\ & \inst1|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~26_combout\,
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add0~44_combout\);

-- Location: LCFF_X13_Y9_N15
\inst|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(25));

-- Location: LCFF_X13_Y9_N25
\inst|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(23));

-- Location: LCFF_X13_Y9_N5
\inst|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(22));

-- Location: LCFF_X15_Y9_N29
\inst|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(19));

-- Location: LCFF_X15_Y9_N23
\inst|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(20));

-- Location: LCFF_X14_Y9_N31
\inst|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(21));

-- Location: LCFF_X15_Y9_N17
\inst|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(18));

-- Location: LCCOMB_X15_Y9_N26
\inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ((\inst|count\(20)) # ((\inst|count\(21)) # (\inst|count\(19)))) # (!\inst|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(18),
	datab => \inst|count\(20),
	datac => \inst|count\(21),
	datad => \inst|count\(19),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y9_N2
\inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|count\(22)) # (\inst|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(22),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LCFF_X15_Y9_N25
\inst|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(17));

-- Location: LCFF_X13_Y9_N31
\inst|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(15));

-- Location: LCFF_X15_Y9_N7
\inst|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(12));

-- Location: LCFF_X13_Y9_N21
\inst|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(13));

-- Location: LCFF_X13_Y9_N29
\inst|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(14));

-- Location: LCFF_X15_Y9_N1
\inst|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(11));

-- Location: LCCOMB_X13_Y9_N0
\inst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|count\(13)) # ((\inst|count\(14)) # ((\inst|count\(12)) # (!\inst|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(13),
	datab => \inst|count\(14),
	datac => \inst|count\(11),
	datad => \inst|count\(12),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCFF_X13_Y10_N29
\inst|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(6));

-- Location: LCFF_X13_Y10_N7
\inst|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(7));

-- Location: LCFF_X13_Y10_N25
\inst|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(8));

-- Location: LCFF_X13_Y10_N31
\inst|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(9));

-- Location: LCCOMB_X13_Y10_N16
\inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (!\inst|count\(7) & (\inst|count\(6) & (!\inst|count\(8) & !\inst|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datab => \inst|count\(6),
	datac => \inst|count\(8),
	datad => \inst|count\(9),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCFF_X15_Y9_N3
\inst|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(10));

-- Location: LCCOMB_X13_Y9_N8
\inst|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (\inst|count\(15) & ((\inst|LessThan0~2_combout\) # ((\inst|LessThan0~3_combout\ & !\inst|count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~3_combout\,
	datab => \inst|count\(15),
	datac => \inst|count\(10),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~4_combout\);

-- Location: LCFF_X13_Y9_N27
\inst|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(16));

-- Location: LCCOMB_X13_Y9_N22
\inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = (\inst|LessThan0~1_combout\) # ((\inst|count\(17) & ((\inst|LessThan0~4_combout\) # (!\inst|count\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(17),
	datab => \inst|count\(16),
	datac => \inst|LessThan0~4_combout\,
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~5_combout\);

-- Location: LCFF_X13_Y9_N19
\inst|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(24));

-- Location: LCCOMB_X13_Y9_N16
\inst|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (\inst|count\(25) & (((\inst|count\(23) & \inst|LessThan0~5_combout\)) # (!\inst|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(23),
	datab => \inst|count\(24),
	datac => \inst|count\(25),
	datad => \inst|LessThan0~5_combout\,
	combout => \inst|LessThan0~6_combout\);

-- Location: LCCOMB_X3_Y12_N14
\inst1|Add0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~47_combout\ = (!\inst1|Add0~0_combout\ & \inst1|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add0~47_combout\);

-- Location: LCFF_X15_Y9_N13
\inst|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(5));

-- Location: LCFF_X15_Y9_N19
\inst|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(4));

-- Location: LCFF_X15_Y10_N25
\inst|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(3));

-- Location: LCFF_X15_Y10_N15
\inst|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(2));

-- Location: LCFF_X14_Y10_N1
\inst|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(1));

-- Location: LCFF_X14_Y10_N3
\inst|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(0));

-- Location: LCCOMB_X14_Y10_N4
\inst|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (((!\inst|count\(3)) # (!\inst|count\(2))) # (!\inst|count\(1))) # (!\inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(1),
	datac => \inst|count\(2),
	datad => \inst|count\(3),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X15_Y9_N20
\inst|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (((\inst|count\(11)) # (!\inst|count\(12))) # (!\inst|count\(4))) # (!\inst|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(5),
	datab => \inst|count\(4),
	datac => \inst|count\(12),
	datad => \inst|count\(11),
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X14_Y9_N28
\inst|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = (\inst|count\(10)) # ((\inst|LessThan1~1_combout\) # ((\inst|LessThan1~0_combout\) # (!\inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(10),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|LessThan0~3_combout\,
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X13_Y9_N10
\inst|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_combout\ = (\inst|count\(16)) # (((!\inst|count\(14)) # (!\inst|count\(13))) # (!\inst|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(16),
	datab => \inst|count\(15),
	datac => \inst|count\(13),
	datad => \inst|count\(14),
	combout => \inst|LessThan1~3_combout\);

-- Location: LCCOMB_X15_Y9_N30
\inst|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~4_combout\ = (((\inst|count\(18)) # (!\inst|count\(20))) # (!\inst|count\(19))) # (!\inst|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(17),
	datab => \inst|count\(19),
	datac => \inst|count\(18),
	datad => \inst|count\(20),
	combout => \inst|LessThan1~4_combout\);

-- Location: LCCOMB_X13_Y9_N12
\inst|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_combout\ = ((\inst|count\(24)) # ((!\inst|count\(21)) # (!\inst|count\(22)))) # (!\inst|count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(23),
	datab => \inst|count\(24),
	datac => \inst|count\(22),
	datad => \inst|count\(21),
	combout => \inst|LessThan1~5_combout\);

-- Location: LCCOMB_X13_Y9_N6
\inst|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~6_combout\ = (\inst|LessThan1~5_combout\) # (!\inst|count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(25),
	datad => \inst|LessThan1~5_combout\,
	combout => \inst|LessThan1~6_combout\);

-- Location: LCCOMB_X14_Y9_N26
\inst|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~7_combout\ = (\inst|LessThan1~3_combout\) # ((\inst|LessThan1~4_combout\) # ((\inst|LessThan1~6_combout\) # (\inst|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~3_combout\,
	datab => \inst|LessThan1~4_combout\,
	datac => \inst|LessThan1~6_combout\,
	datad => \inst|LessThan1~2_combout\,
	combout => \inst|LessThan1~7_combout\);

-- Location: LCCOMB_X13_Y9_N14
\inst|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~52_combout\ = (\inst|LessThan1~7_combout\ & !\inst|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~50_combout\,
	combout => \inst|Add0~52_combout\);

-- Location: LCCOMB_X13_Y9_N24
\inst|Add0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~53_combout\ = (\inst|LessThan1~7_combout\ & !\inst|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~7_combout\,
	datac => \inst|Add0~46_combout\,
	combout => \inst|Add0~53_combout\);

-- Location: LCCOMB_X13_Y9_N4
\inst|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~54_combout\ = (\inst|LessThan1~7_combout\ & !\inst|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~44_combout\,
	combout => \inst|Add0~54_combout\);

-- Location: LCCOMB_X15_Y9_N28
\inst|Add0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~55_combout\ = (\inst|LessThan1~7_combout\ & !\inst|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~38_combout\,
	combout => \inst|Add0~55_combout\);

-- Location: LCCOMB_X15_Y9_N22
\inst|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~56_combout\ = (\inst|LessThan1~7_combout\ & !\inst|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~40_combout\,
	combout => \inst|Add0~56_combout\);

-- Location: LCCOMB_X14_Y9_N30
\inst|Add0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~57_combout\ = (!\inst|Add0~42_combout\ & \inst|LessThan1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~42_combout\,
	datad => \inst|LessThan1~7_combout\,
	combout => \inst|Add0~57_combout\);

-- Location: LCCOMB_X15_Y9_N16
\inst|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~58_combout\ = (\inst|LessThan1~7_combout\ & \inst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~36_combout\,
	combout => \inst|Add0~58_combout\);

-- Location: LCCOMB_X15_Y9_N24
\inst|Add0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~59_combout\ = (\inst|LessThan1~7_combout\ & !\inst|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~34_combout\,
	combout => \inst|Add0~59_combout\);

-- Location: LCCOMB_X13_Y9_N30
\inst|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~60_combout\ = (\inst|LessThan1~7_combout\ & !\inst|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~30_combout\,
	combout => \inst|Add0~60_combout\);

-- Location: LCCOMB_X15_Y9_N6
\inst|Add0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~61_combout\ = (!\inst|Add0~24_combout\ & \inst|LessThan1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~24_combout\,
	datad => \inst|LessThan1~7_combout\,
	combout => \inst|Add0~61_combout\);

-- Location: LCCOMB_X13_Y9_N20
\inst|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~62_combout\ = (\inst|LessThan1~7_combout\ & !\inst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~7_combout\,
	datac => \inst|Add0~26_combout\,
	combout => \inst|Add0~62_combout\);

-- Location: LCCOMB_X13_Y9_N28
\inst|Add0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~63_combout\ = (\inst|LessThan1~7_combout\ & !\inst|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~28_combout\,
	combout => \inst|Add0~63_combout\);

-- Location: LCCOMB_X15_Y9_N0
\inst|Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~64_combout\ = (\inst|Add0~22_combout\ & \inst|LessThan1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~22_combout\,
	datad => \inst|LessThan1~7_combout\,
	combout => \inst|Add0~64_combout\);

-- Location: LCCOMB_X13_Y10_N28
\inst|Add0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~65_combout\ = (\inst|LessThan1~7_combout\ & !\inst|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|Add0~65_combout\);

-- Location: LCCOMB_X13_Y10_N6
\inst|Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~66_combout\ = (\inst|LessThan1~7_combout\ & \inst|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~14_combout\,
	combout => \inst|Add0~66_combout\);

-- Location: LCCOMB_X13_Y10_N24
\inst|Add0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~67_combout\ = (\inst|LessThan1~7_combout\ & \inst|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|Add0~67_combout\);

-- Location: LCCOMB_X13_Y10_N30
\inst|Add0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~68_combout\ = (\inst|LessThan1~7_combout\ & \inst|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~18_combout\,
	combout => \inst|Add0~68_combout\);

-- Location: LCCOMB_X15_Y9_N2
\inst|Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~69_combout\ = (\inst|Add0~20_combout\ & \inst|LessThan1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~20_combout\,
	datad => \inst|LessThan1~7_combout\,
	combout => \inst|Add0~69_combout\);

-- Location: LCCOMB_X13_Y9_N26
\inst|Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~70_combout\ = (\inst|LessThan1~7_combout\ & \inst|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst|Add0~70_combout\);

-- Location: LCCOMB_X13_Y9_N18
\inst|Add0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~71_combout\ = (\inst|LessThan1~7_combout\ & \inst|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~48_combout\,
	combout => \inst|Add0~71_combout\);

-- Location: LCCOMB_X15_Y9_N12
\inst|Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~72_combout\ = (!\inst|Add0~10_combout\ & \inst|LessThan1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~10_combout\,
	datad => \inst|LessThan1~7_combout\,
	combout => \inst|Add0~72_combout\);

-- Location: LCCOMB_X15_Y9_N18
\inst|Add0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~73_combout\ = (!\inst|Add0~8_combout\ & \inst|LessThan1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~8_combout\,
	datad => \inst|LessThan1~7_combout\,
	combout => \inst|Add0~73_combout\);

-- Location: LCCOMB_X15_Y10_N24
\inst|Add0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~74_combout\ = (\inst|LessThan1~7_combout\ & !\inst|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|Add0~74_combout\);

-- Location: LCCOMB_X15_Y10_N14
\inst|Add0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~75_combout\ = (\inst|LessThan1~7_combout\ & !\inst|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~7_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst|Add0~75_combout\);

-- Location: LCCOMB_X14_Y10_N0
\inst|Add0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~76_combout\ = (!\inst|Add0~2_combout\ & \inst|LessThan1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~2_combout\,
	datad => \inst|LessThan1~7_combout\,
	combout => \inst|Add0~76_combout\);

-- Location: LCCOMB_X14_Y10_N2
\inst|Add0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~77_combout\ = (!\inst|Add0~0_combout\ & \inst|LessThan1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datad => \inst|LessThan1~7_combout\,
	combout => \inst|Add0~77_combout\);

-- Location: LCCOMB_X24_Y4_N20
\inst2|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (!\inst2|COUNT\(5) & (\inst2|Equal0~2_combout\ & !\inst2|COUNT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT\(5),
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|COUNT\(4),
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y4_N10
\inst2|COUNT[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|COUNT[0]~6_combout\ = (!\inst2|COUNT\(5) & (\inst2|Equal0~2_combout\ & (!\inst2|STATE.S3~regout\ & !\inst2|COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT\(5),
	datab => \inst2|Equal0~2_combout\,
	datac => \inst2|STATE.S3~regout\,
	datad => \inst2|COUNT\(4),
	combout => \inst2|COUNT[0]~6_combout\);

-- Location: LCCOMB_X21_Y4_N0
\inst2|Mod0|auto_generated|divider|divider|StageOut[28]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst2|COUNT\(5))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT\(5),
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X22_Y3_N24
\inst2|Mod0|auto_generated|divider|divider|StageOut[27]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst2|COUNT\(4))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT\(4),
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\inst|q~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|q~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X4_Y12_N2
\inst1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|count\(1) & (!\inst1|Add0~1\)) # (!\inst1|count\(1) & (\inst1|Add0~1\ & VCC))
-- \inst1|Add0~3\ = CARRY((\inst1|count\(1) & !\inst1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X3_Y12_N28
\inst1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~46_combout\ = (\inst1|LessThan1~3_combout\ & !\inst1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan1~3_combout\,
	datad => \inst1|Add0~2_combout\,
	combout => \inst1|Add0~46_combout\);

-- Location: LCFF_X3_Y12_N29
\inst1|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(1));

-- Location: LCCOMB_X4_Y12_N4
\inst1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|count\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|count\(2) & ((GND) # (!\inst1|Add0~3\)))
-- \inst1|Add0~5\ = CARRY((!\inst1|Add0~3\) # (!\inst1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X3_Y12_N6
\inst1|Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~45_combout\ = (\inst1|LessThan1~3_combout\ & !\inst1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan1~3_combout\,
	datad => \inst1|Add0~4_combout\,
	combout => \inst1|Add0~45_combout\);

-- Location: LCFF_X3_Y12_N7
\inst1|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(2));

-- Location: LCCOMB_X4_Y12_N6
\inst1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|count\(3) & (!\inst1|Add0~5\)) # (!\inst1|count\(3) & (\inst1|Add0~5\ & VCC))
-- \inst1|Add0~7\ = CARRY((\inst1|count\(3) & !\inst1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X4_Y12_N8
\inst1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|count\(4) & ((GND) # (!\inst1|Add0~7\))) # (!\inst1|count\(4) & (\inst1|Add0~7\ $ (GND)))
-- \inst1|Add0~9\ = CARRY((\inst1|count\(4)) # (!\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X3_Y12_N22
\inst1|Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~39_combout\ = (\inst1|Add0~8_combout\ & \inst1|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~8_combout\,
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add0~39_combout\);

-- Location: LCFF_X3_Y12_N23
\inst1|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(4));

-- Location: LCCOMB_X4_Y12_N10
\inst1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|count\(5) & (\inst1|Add0~9\ & VCC)) # (!\inst1|count\(5) & (!\inst1|Add0~9\))
-- \inst1|Add0~11\ = CARRY((!\inst1|count\(5) & !\inst1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X4_Y12_N12
\inst1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|count\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|count\(6) & ((GND) # (!\inst1|Add0~11\)))
-- \inst1|Add0~13\ = CARRY((!\inst1|Add0~11\) # (!\inst1|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X3_Y12_N26
\inst1|Add0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~37_combout\ = (!\inst1|Add0~12_combout\ & \inst1|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~12_combout\,
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add0~37_combout\);

-- Location: LCFF_X3_Y12_N27
\inst1|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(6));

-- Location: LCCOMB_X4_Y12_N14
\inst1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|count\(7) & (\inst1|Add0~13\ & VCC)) # (!\inst1|count\(7) & (!\inst1|Add0~13\))
-- \inst1|Add0~15\ = CARRY((!\inst1|count\(7) & !\inst1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X3_Y12_N4
\inst1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|Add0~14_combout\ & \inst1|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~14_combout\,
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add0~42_combout\);

-- Location: LCFF_X3_Y12_N5
\inst1|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(7));

-- Location: LCCOMB_X4_Y12_N18
\inst1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|count\(9) & (!\inst1|Add0~17\)) # (!\inst1|count\(9) & (\inst1|Add0~17\ & VCC))
-- \inst1|Add0~19\ = CARRY((\inst1|count\(9) & !\inst1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X4_Y12_N20
\inst1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|count\(10) & ((GND) # (!\inst1|Add0~19\))) # (!\inst1|count\(10) & (\inst1|Add0~19\ $ (GND)))
-- \inst1|Add0~21\ = CARRY((\inst1|count\(10)) # (!\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X3_Y12_N24
\inst1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|LessThan1~3_combout\ & \inst1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan1~3_combout\,
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|Add0~34_combout\);

-- Location: LCFF_X3_Y12_N25
\inst1|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(10));

-- Location: LCCOMB_X4_Y12_N22
\inst1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|count\(11) & (\inst1|Add0~21\ & VCC)) # (!\inst1|count\(11) & (!\inst1|Add0~21\))
-- \inst1|Add0~23\ = CARRY((!\inst1|count\(11) & !\inst1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X3_Y12_N18
\inst1|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~35_combout\ = (\inst1|LessThan1~3_combout\ & \inst1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan1~3_combout\,
	datad => \inst1|Add0~22_combout\,
	combout => \inst1|Add0~35_combout\);

-- Location: LCFF_X3_Y12_N19
\inst1|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(11));

-- Location: LCCOMB_X3_Y12_N10
\inst1|Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~33_combout\ = (\inst1|LessThan1~3_combout\ & !\inst1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan1~3_combout\,
	datad => \inst1|Add0~18_combout\,
	combout => \inst1|Add0~33_combout\);

-- Location: LCFF_X3_Y12_N11
\inst1|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(9));

-- Location: LCCOMB_X2_Y12_N0
\inst1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (!\inst1|count\(12) & (!\inst1|count\(11) & (\inst1|count\(9) & !\inst1|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(12),
	datab => \inst1|count\(11),
	datac => \inst1|count\(9),
	datad => \inst1|count\(10),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X3_Y12_N8
\inst1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|Add0~10_combout\ & \inst1|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~10_combout\,
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|Add0~40_combout\);

-- Location: LCFF_X3_Y12_N9
\inst1|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(5));

-- Location: LCCOMB_X2_Y12_N20
\inst1|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = ((\inst1|count\(5)) # ((\inst1|count\(7)) # (!\inst1|count\(6)))) # (!\inst1|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(2),
	datab => \inst1|count\(5),
	datac => \inst1|count\(6),
	datad => \inst1|count\(7),
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X3_Y12_N0
\inst1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|LessThan1~3_combout\ & !\inst1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan1~3_combout\,
	datad => \inst1|Add0~6_combout\,
	combout => \inst1|Add0~38_combout\);

-- Location: LCFF_X3_Y12_N1
\inst1|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(3));

-- Location: LCCOMB_X2_Y12_N30
\inst1|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (((\inst1|count\(4)) # (!\inst1|count\(3))) # (!\inst1|count\(1))) # (!\inst1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(0),
	datab => \inst1|count\(1),
	datac => \inst1|count\(3),
	datad => \inst1|count\(4),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X2_Y12_N16
\inst1|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_combout\ = (\inst1|LessThan1~2_combout\) # (((\inst1|LessThan1~1_combout\) # (\inst1|LessThan1~0_combout\)) # (!\inst1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~2_combout\,
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|LessThan1~1_combout\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|LessThan1~3_combout\);

-- Location: LCCOMB_X4_Y12_N28
\inst1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|count\(14) & (\inst1|Add0~27\ $ (GND))) # (!\inst1|count\(14) & ((GND) # (!\inst1|Add0~27\)))
-- \inst1|Add0~29\ = CARRY((!\inst1|Add0~27\) # (!\inst1|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCCOMB_X3_Y12_N30
\inst1|Add0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~43_combout\ = (\inst1|LessThan1~3_combout\ & !\inst1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan1~3_combout\,
	datad => \inst1|Add0~28_combout\,
	combout => \inst1|Add0~43_combout\);

-- Location: LCFF_X3_Y12_N31
\inst1|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(14));

-- Location: LCCOMB_X2_Y12_N14
\inst1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (\inst1|count\(6) & (((\inst1|count\(3) & !\inst1|count\(4))) # (!\inst1|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(6),
	datab => \inst1|count\(5),
	datac => \inst1|count\(3),
	datad => \inst1|count\(4),
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y12_N8
\inst1|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = (\inst1|LessThan0~0_combout\ & ((\inst1|count\(8)) # ((\inst1|LessThan0~1_combout\) # (!\inst1|count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(8),
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|LessThan0~1_combout\,
	datad => \inst1|count\(7),
	combout => \inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X4_Y12_N30
\inst1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = \inst1|Add0~29\ $ (\inst1|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|count\(15),
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\);

-- Location: LCCOMB_X3_Y12_N16
\inst1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|LessThan1~3_combout\ & !\inst1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan1~3_combout\,
	datad => \inst1|Add0~30_combout\,
	combout => \inst1|Add0~32_combout\);

-- Location: LCFF_X3_Y12_N17
\inst1|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(15));

-- Location: LCCOMB_X1_Y12_N12
\inst1|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = (\inst1|count\(15) & (((\inst1|count\(14)) # (\inst1|LessThan0~2_combout\)) # (!\inst1|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(13),
	datab => \inst1|count\(14),
	datac => \inst1|LessThan0~2_combout\,
	datad => \inst1|count\(15),
	combout => \inst1|LessThan0~3_combout\);

-- Location: LCFF_X1_Y12_N13
\inst1|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|q~regout\);

-- Location: CLKCTRL_G0
\inst1|q~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|q~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y3_N30
\inst3|CNT4[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|CNT4[1]~0_combout\ = \inst3|CNT4\(0) $ (\inst3|CNT4\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|CNT4\(0),
	datac => \inst3|CNT4\(1),
	combout => \inst3|CNT4[1]~0_combout\);

-- Location: LCFF_X21_Y3_N31
\inst3|CNT4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	datain => \inst3|CNT4[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|CNT4\(1));

-- Location: LCCOMB_X21_Y3_N12
\inst3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst3|CNT4\(0)) # (\inst3|CNT4\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|CNT4\(0),
	datad => \inst3|CNT4\(1),
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y3_N0
\inst3|TOseg7com[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|TOseg7com[3]~feeder_combout\ = \inst3|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Mux4~0_combout\,
	combout => \inst3|TOseg7com[3]~feeder_combout\);

-- Location: LCFF_X21_Y3_N1
\inst3|TOseg7com[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	datain => \inst3|TOseg7com[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|TOseg7com\(3));

-- Location: LCCOMB_X21_Y3_N26
\inst3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\inst3|CNT4\(1)) # (!\inst3|CNT4\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|CNT4\(0),
	datac => \inst3|CNT4\(1),
	combout => \inst3|Mux1~0_combout\);

-- Location: LCFF_X21_Y3_N27
\inst3|TOseg7com[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	datain => \inst3|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|TOseg7com\(2));

-- Location: LCCOMB_X21_Y3_N20
\inst3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\inst3|CNT4\(0)) # (!\inst3|CNT4\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|CNT4\(0),
	datac => \inst3|CNT4\(1),
	combout => \inst3|Mux2~0_combout\);

-- Location: LCFF_X21_Y3_N21
\inst3|TOseg7com[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	datain => \inst3|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|TOseg7com\(1));

-- Location: LCCOMB_X21_Y3_N18
\inst3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (!\inst3|CNT4\(1)) # (!\inst3|CNT4\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|CNT4\(0),
	datac => \inst3|CNT4\(1),
	combout => \inst3|Mux3~0_combout\);

-- Location: LCFF_X21_Y3_N19
\inst3|TOseg7com[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	datain => \inst3|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|TOseg7com\(0));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key5,
	combout => \key5~combout\);

-- Location: LCCOMB_X25_Y4_N20
\inst2|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~3_combout\ = (\inst2|Equal0~4_combout\ & (\inst2|STATE.S3~regout\)) # (!\inst2|Equal0~4_combout\ & ((\inst2|STATE.S4~regout\) # ((\inst2|STATE.S3~regout\ & \key5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \inst2|STATE.S3~regout\,
	datac => \inst2|STATE.S4~regout\,
	datad => \key5~combout\,
	combout => \inst2|Selector3~3_combout\);

-- Location: LCFF_X25_Y4_N21
\inst2|STATE.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	datain => \inst2|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|STATE.S4~regout\);

-- Location: LCCOMB_X24_Y4_N14
\inst2|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (\inst2|Equal0~4_combout\ & (!\inst2|STATE.S4~regout\ & ((\inst2|STATE.S1~regout\) # (!\key5~combout\)))) # (!\inst2|Equal0~4_combout\ & (((\inst2|STATE.S1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \key5~combout\,
	datac => \inst2|STATE.S1~regout\,
	datad => \inst2|STATE.S4~regout\,
	combout => \inst2|Selector0~0_combout\);

-- Location: LCFF_X24_Y4_N15
\inst2|STATE.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	datain => \inst2|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|STATE.S1~regout\);

-- Location: LCCOMB_X25_Y4_N0
\inst2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|COUNT\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X24_Y4_N28
\inst2|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector9~0_combout\ = (\inst2|COUNT[0]~6_combout\) # ((\inst2|Selector3~1_combout\) # ((\inst2|Add0~0_combout\) # (\inst2|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT[0]~6_combout\,
	datab => \inst2|Selector3~1_combout\,
	datac => \inst2|Add0~0_combout\,
	datad => \inst2|Selector3~2_combout\,
	combout => \inst2|Selector9~0_combout\);

-- Location: LCFF_X24_Y4_N29
\inst2|COUNT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	datain => \inst2|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|COUNT\(0));

-- Location: LCCOMB_X25_Y4_N2
\inst2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|COUNT\(1) & (\inst2|Add0~1\ & VCC)) # (!\inst2|COUNT\(1) & (!\inst2|Add0~1\))
-- \inst2|Add0~3\ = CARRY((!\inst2|COUNT\(1) & !\inst2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X24_Y4_N18
\inst2|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector8~0_combout\ = (!\inst2|COUNT[0]~6_combout\ & (!\inst2|Selector3~2_combout\ & (!\inst2|Selector3~1_combout\ & \inst2|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT[0]~6_combout\,
	datab => \inst2|Selector3~2_combout\,
	datac => \inst2|Selector3~1_combout\,
	datad => \inst2|Add0~2_combout\,
	combout => \inst2|Selector8~0_combout\);

-- Location: LCFF_X24_Y4_N19
\inst2|COUNT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	datain => \inst2|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|COUNT\(1));

-- Location: LCCOMB_X24_Y4_N16
\inst2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst2|COUNT\(2) & (!\inst2|COUNT\(0) & (!\inst2|COUNT\(3) & !\inst2|COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT\(2),
	datab => \inst2|COUNT\(0),
	datac => \inst2|COUNT\(3),
	datad => \inst2|COUNT\(1),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y4_N22
\inst2|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~2_combout\ = (\inst2|STATE.S3~regout\ & ((\key5~combout\) # ((\inst2|Equal0~2_combout\ & \inst2|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|STATE.S3~regout\,
	datab => \key5~combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|Equal0~3_combout\,
	combout => \inst2|Selector3~2_combout\);

-- Location: LCCOMB_X24_Y4_N4
\inst2|COUNT[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|COUNT[5]~4_combout\ = (!\inst2|STATE.S4~regout\ & (\inst2|STATE.S1~regout\ & !\inst2|STATE.S2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|STATE.S4~regout\,
	datac => \inst2|STATE.S1~regout\,
	datad => \inst2|STATE.S2~regout\,
	combout => \inst2|COUNT[5]~4_combout\);

-- Location: LCCOMB_X24_Y4_N30
\inst2|COUNT[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|COUNT[5]~5_combout\ = (\inst2|COUNT\(5)) # (((\inst2|COUNT[5]~4_combout\) # (\inst2|COUNT\(4))) # (!\inst2|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT\(5),
	datab => \inst2|Equal0~2_combout\,
	datac => \inst2|COUNT[5]~4_combout\,
	datad => \inst2|COUNT\(4),
	combout => \inst2|COUNT[5]~5_combout\);

-- Location: LCCOMB_X25_Y4_N4
\inst2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|COUNT\(2) & ((GND) # (!\inst2|Add0~3\))) # (!\inst2|COUNT\(2) & (\inst2|Add0~3\ $ (GND)))
-- \inst2|Add0~5\ = CARRY((\inst2|COUNT\(2)) # (!\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X24_Y4_N24
\inst2|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~2_combout\ = (\inst2|Selector3~2_combout\) # ((\inst2|COUNT[5]~5_combout\ & ((\inst2|Add0~4_combout\))) # (!\inst2|COUNT[5]~5_combout\ & (!\inst2|Selector7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector7~3_combout\,
	datab => \inst2|Selector3~2_combout\,
	datac => \inst2|COUNT[5]~5_combout\,
	datad => \inst2|Add0~4_combout\,
	combout => \inst2|Selector7~2_combout\);

-- Location: LCFF_X24_Y4_N25
\inst2|COUNT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	datain => \inst2|Selector7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|COUNT\(2));

-- Location: LCCOMB_X25_Y4_N6
\inst2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|COUNT\(3) & (\inst2|Add0~5\ & VCC)) # (!\inst2|COUNT\(3) & (!\inst2|Add0~5\))
-- \inst2|Add0~7\ = CARRY((!\inst2|COUNT\(3) & !\inst2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X24_Y4_N26
\inst2|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (!\inst2|Selector3~1_combout\ & ((\inst2|COUNT[0]~6_combout\) # ((!\inst2|Selector3~2_combout\ & \inst2|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT[0]~6_combout\,
	datab => \inst2|Selector3~2_combout\,
	datac => \inst2|Selector3~1_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|Selector6~0_combout\);

-- Location: LCFF_X24_Y4_N27
\inst2|COUNT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	datain => \inst2|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|COUNT\(3));

-- Location: LCCOMB_X25_Y4_N8
\inst2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|COUNT\(4) & ((GND) # (!\inst2|Add0~7\))) # (!\inst2|COUNT\(4) & (\inst2|Add0~7\ $ (GND)))
-- \inst2|Add0~9\ = CARRY((\inst2|COUNT\(4)) # (!\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X25_Y4_N28
\inst2|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~0_combout\ = (!\inst2|Selector3~2_combout\ & ((\inst2|COUNT[5]~5_combout\ & ((\inst2|Add0~8_combout\))) # (!\inst2|COUNT[5]~5_combout\ & (\inst2|Selector7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector7~3_combout\,
	datab => \inst2|Add0~8_combout\,
	datac => \inst2|COUNT[5]~5_combout\,
	datad => \inst2|Selector3~2_combout\,
	combout => \inst2|Selector5~0_combout\);

-- Location: LCFF_X25_Y4_N29
\inst2|COUNT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	datain => \inst2|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|COUNT\(4));

-- Location: LCCOMB_X25_Y4_N10
\inst2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = \inst2|Add0~9\ $ (!\inst2|COUNT\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|COUNT\(5),
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\);

-- Location: LCCOMB_X24_Y4_N12
\inst2|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (\inst2|Equal0~4_combout\ & (!\inst2|STATE.S2~regout\ & (!\inst2|COUNT[5]~4_combout\ & !\inst2|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \inst2|STATE.S2~regout\,
	datac => \inst2|COUNT[5]~4_combout\,
	datad => \inst2|Selector3~1_combout\,
	combout => \inst2|Selector4~0_combout\);

-- Location: LCCOMB_X24_Y4_N8
\inst2|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~1_combout\ = (!\inst2|Selector3~2_combout\ & ((\inst2|Selector4~0_combout\) # ((\inst2|COUNT[5]~5_combout\ & \inst2|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT[5]~5_combout\,
	datab => \inst2|Selector3~2_combout\,
	datac => \inst2|Add0~10_combout\,
	datad => \inst2|Selector4~0_combout\,
	combout => \inst2|Selector4~1_combout\);

-- Location: LCFF_X24_Y4_N9
\inst2|COUNT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	datain => \inst2|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|COUNT\(5));

-- Location: LCCOMB_X25_Y4_N24
\inst2|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|COUNT\(4) & !\inst2|COUNT\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(4),
	datad => \inst2|COUNT\(5),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y4_N6
\inst2|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~1_combout\ = (\inst2|Equal0~2_combout\ & (!\key5~combout\ & (!\inst2|STATE.S1~regout\ & \inst2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \key5~combout\,
	datac => \inst2|STATE.S1~regout\,
	datad => \inst2|Equal0~3_combout\,
	combout => \inst2|Selector3~1_combout\);

-- Location: LCCOMB_X25_Y4_N18
\inst2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (!\inst2|Selector3~2_combout\ & ((\inst2|Selector3~1_combout\) # ((!\inst2|Equal0~4_combout\ & \inst2|STATE.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \inst2|Selector3~1_combout\,
	datac => \inst2|STATE.S2~regout\,
	datad => \inst2|Selector3~2_combout\,
	combout => \inst2|Selector1~0_combout\);

-- Location: LCFF_X25_Y4_N19
\inst2|STATE.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	datain => \inst2|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|STATE.S2~regout\);

-- Location: LCCOMB_X24_Y4_N0
\inst2|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~3_combout\ = (!\inst2|COUNT\(5) & (\inst2|STATE.S2~regout\ & (\inst2|Equal0~2_combout\ & !\inst2|COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT\(5),
	datab => \inst2|STATE.S2~regout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|COUNT\(4),
	combout => \inst2|Selector7~3_combout\);

-- Location: LCCOMB_X26_Y4_N4
\inst2|LIGHT2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LIGHT2[0]~0_combout\ = (!\key5~combout\ & \inst2|STATE.S3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key5~combout\,
	datad => \inst2|STATE.S3~regout\,
	combout => \inst2|LIGHT2[0]~0_combout\);

-- Location: LCCOMB_X25_Y4_N14
\inst2|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~1_combout\ = (\inst2|Equal0~4_combout\ & (!\inst2|STATE.S4~regout\ & (\inst2|Selector7~3_combout\))) # (!\inst2|Equal0~4_combout\ & (((\inst2|Selector7~3_combout\) # (\inst2|LIGHT2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \inst2|STATE.S4~regout\,
	datac => \inst2|Selector7~3_combout\,
	datad => \inst2|LIGHT2[0]~0_combout\,
	combout => \inst2|Selector2~1_combout\);

-- Location: LCFF_X25_Y4_N15
\inst2|STATE.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	datain => \inst2|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|STATE.S3~regout\);

-- Location: LCCOMB_X25_Y4_N16
\inst2|Selector12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector12~2_combout\ = (\inst2|STATE.S4~regout\) # ((\inst2|STATE.S2~regout\) # ((!\key5~combout\ & \inst2|STATE.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key5~combout\,
	datab => \inst2|STATE.S3~regout\,
	datac => \inst2|STATE.S4~regout\,
	datad => \inst2|STATE.S2~regout\,
	combout => \inst2|Selector12~2_combout\);

-- Location: LCCOMB_X21_Y3_N2
\inst2|Selector12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector12~4_combout\ = ((!\inst2|COUNT\(4) & (!\inst2|COUNT\(5) & \inst2|Equal0~2_combout\))) # (!\inst2|Selector12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT\(4),
	datab => \inst2|COUNT\(5),
	datac => \inst2|Selector12~2_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|Selector12~4_combout\);

-- Location: LCFF_X21_Y3_N13
\inst2|LIGHT2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	sdata => \inst2|STATE.S3~regout\,
	sload => VCC,
	ena => \inst2|Selector12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|LIGHT2\(1));

-- Location: LCCOMB_X24_Y3_N4
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst2|COUNT\(3) $ (VCC)
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst2|COUNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(3),
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X24_Y3_N6
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst2|COUNT\(4) & (\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst2|COUNT\(4) & 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst2|COUNT\(4) & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(4),
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X24_Y3_N8
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst2|COUNT\(5) & (\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst2|COUNT\(5) & 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst2|COUNT\(5) & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(5),
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X24_Y3_N10
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X24_Y3_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X24_Y3_N2
\inst2|Div0|auto_generated|divider|divider|StageOut[17]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (\inst2|COUNT\(4) & \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|COUNT\(4),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X24_Y3_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X24_Y3_N14
\inst2|Div0|auto_generated|divider|divider|StageOut[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (\inst2|COUNT\(2) & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|COUNT\(2),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X24_Y3_N24
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ & 
-- !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y3_N26
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y4_N24
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst2|COUNT\(3) $ (VCC)
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst2|COUNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(3),
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X22_Y4_N26
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst2|COUNT\(4) & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst2|COUNT\(4) & 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst2|COUNT\(4) & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(4),
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X22_Y4_N28
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst2|COUNT\(5) & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst2|COUNT\(5) & 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst2|COUNT\(5) & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(5),
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X22_Y4_N30
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X22_Y4_N22
\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X22_Y4_N0
\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X21_Y4_N24
\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\inst2|COUNT\(3) & \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|COUNT\(3),
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X22_Y4_N18
\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (\inst2|COUNT\(2) & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|COUNT\(2),
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X22_Y4_N6
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X22_Y4_N8
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X22_Y4_N10
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\)))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X22_Y4_N12
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X22_Y4_N14
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y4_N16
\inst2|Mod0|auto_generated|divider|divider|StageOut[28]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ = (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X22_Y3_N26
\inst2|Mod0|auto_generated|divider|divider|StageOut[27]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ = (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X22_Y3_N22
\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst2|COUNT\(3))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT\(3),
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X22_Y3_N30
\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X22_Y3_N0
\inst2|Mod0|auto_generated|divider|divider|StageOut[24]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ = (\inst2|COUNT\(1) & !\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(1),
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\);

-- Location: LCCOMB_X22_Y3_N6
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst2|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\) # (\inst2|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\) # (\inst2|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X22_Y3_N8
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X22_Y3_N12
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst2|Mod0|auto_generated|divider|divider|StageOut[27]~41_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y3_N14
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[28]~40_combout\) # ((\inst2|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X22_Y3_N16
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X22_Y3_N4
\inst2|Mod0|auto_generated|divider|divider|StageOut[31]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst2|COUNT\(1))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ 
-- & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(1),
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X21_Y3_N24
\inst3|CNT4[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|CNT4[0]~1_combout\ = !\inst3|CNT4\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|CNT4\(0),
	combout => \inst3|CNT4[0]~1_combout\);

-- Location: LCFF_X21_Y3_N25
\inst3|CNT4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	datain => \inst3|CNT4[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|CNT4\(0));

-- Location: LCCOMB_X22_Y3_N18
\inst3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (\inst3|CNT4\(1) & (((\inst3|CNT4\(0))))) # (!\inst3|CNT4\(1) & ((\inst3|CNT4\(0) & (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\inst3|CNT4\(0) & 
-- ((\inst2|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|CNT4\(1),
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => \inst3|CNT4\(0),
	combout => \inst3|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y3_N28
\inst3|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux6~1_combout\ = (\inst3|CNT4\(1) & ((\inst3|Mux6~0_combout\ & (\inst2|LIGHT1\(1))) # (!\inst3|Mux6~0_combout\ & ((\inst2|LIGHT2\(1)))))) # (!\inst3|CNT4\(1) & (((\inst3|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LIGHT1\(1),
	datab => \inst2|LIGHT2\(1),
	datac => \inst3|CNT4\(1),
	datad => \inst3|Mux6~0_combout\,
	combout => \inst3|Mux6~1_combout\);

-- Location: LCFF_X22_Y3_N29
\inst3|SHUJU[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	datain => \inst3|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|SHUJU\(1));

-- Location: LCCOMB_X22_Y4_N2
\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X21_Y4_N10
\inst3|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux4~1_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\) # ((\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	combout => \inst3|Mux4~1_combout\);

-- Location: LCCOMB_X22_Y3_N2
\inst3|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux4~2_combout\ = (!\inst3|Mux4~0_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst3|Mux4~1_combout\))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \inst3|Mux4~1_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst3|Mux4~0_combout\,
	combout => \inst3|Mux4~2_combout\);

-- Location: LCFF_X22_Y3_N3
\inst3|SHUJU[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	datain => \inst3|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|SHUJU\(3));

-- Location: LCCOMB_X21_Y3_N10
\inst2|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector15~0_combout\ = (\inst2|STATE.S2~regout\) # (\inst2|STATE.S3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|STATE.S2~regout\,
	datad => \inst2|STATE.S3~regout\,
	combout => \inst2|Selector15~0_combout\);

-- Location: LCCOMB_X21_Y3_N6
\inst2|LIGHT2[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LIGHT2[2]~1_combout\ = !\inst2|Selector15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Selector15~0_combout\,
	combout => \inst2|LIGHT2[2]~1_combout\);

-- Location: LCFF_X21_Y3_N7
\inst2|LIGHT2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	datain => \inst2|LIGHT2[2]~1_combout\,
	ena => \inst2|Selector12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|LIGHT2\(2));

-- Location: LCFF_X21_Y3_N11
\inst2|LIGHT1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	datain => \inst2|Selector15~0_combout\,
	ena => \inst2|Selector12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|LIGHT1\(2));

-- Location: LCCOMB_X21_Y3_N4
\inst3|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux5~1_combout\ = (\inst3|CNT4\(0) & ((\inst3|CNT4\(1) & ((!\inst2|LIGHT1\(2)))) # (!\inst3|CNT4\(1) & (\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # (!\inst3|CNT4\(0) & (((\inst3|CNT4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst2|LIGHT1\(2),
	datac => \inst3|CNT4\(0),
	datad => \inst3|CNT4\(1),
	combout => \inst3|Mux5~1_combout\);

-- Location: LCCOMB_X21_Y3_N28
\inst3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\) # ((\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y3_N22
\inst3|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux5~2_combout\ = (\inst3|CNT4\(0) & (((!\inst3|Mux5~1_combout\)))) # (!\inst3|CNT4\(0) & ((\inst3|Mux5~1_combout\ & (\inst2|LIGHT2\(2))) # (!\inst3|Mux5~1_combout\ & ((\inst3|Mux5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|CNT4\(0),
	datab => \inst2|LIGHT2\(2),
	datac => \inst3|Mux5~1_combout\,
	datad => \inst3|Mux5~0_combout\,
	combout => \inst3|Mux5~2_combout\);

-- Location: LCFF_X21_Y3_N23
\inst3|SHUJU[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	datain => \inst3|Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|SHUJU\(2));

-- Location: LCCOMB_X25_Y4_N30
\inst2|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector13~0_combout\ = (\inst2|LIGHT1\(0) & ((\inst2|STATE.S2~regout\) # ((!\key5~combout\ & \inst2|STATE.S3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key5~combout\,
	datab => \inst2|STATE.S2~regout\,
	datac => \inst2|STATE.S3~regout\,
	datad => \inst2|LIGHT1\(0),
	combout => \inst2|Selector13~0_combout\);

-- Location: LCCOMB_X25_Y4_N12
\inst2|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector13~1_combout\ = (\inst2|STATE.S1~regout\ & (\inst2|Selector13~0_combout\ & ((!\inst2|Equal0~2_combout\) # (!\inst2|Equal0~3_combout\)))) # (!\inst2|STATE.S1~regout\ & (((!\inst2|Equal0~2_combout\) # (!\inst2|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|STATE.S1~regout\,
	datab => \inst2|Selector13~0_combout\,
	datac => \inst2|Equal0~3_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|Selector13~1_combout\);

-- Location: LCCOMB_X25_Y4_N26
\inst2|Selector13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector13~2_combout\ = (\inst2|STATE.S4~regout\ & ((\inst2|LIGHT1\(0)) # ((\inst2|Equal0~3_combout\ & \inst2|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|STATE.S4~regout\,
	datab => \inst2|LIGHT1\(0),
	datac => \inst2|Equal0~3_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|Selector13~2_combout\);

-- Location: LCCOMB_X25_Y4_N22
\inst2|Selector13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector13~3_combout\ = (\inst2|Selector13~1_combout\) # ((\inst2|Selector13~2_combout\) # ((!\inst2|STATE.S1~regout\ & \key5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|STATE.S1~regout\,
	datab => \key5~combout\,
	datac => \inst2|Selector13~1_combout\,
	datad => \inst2|Selector13~2_combout\,
	combout => \inst2|Selector13~3_combout\);

-- Location: LCFF_X25_Y4_N23
\inst2|LIGHT1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	datain => \inst2|Selector13~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|LIGHT1\(0));

-- Location: LCFF_X21_Y3_N15
\inst2|LIGHT2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|q~clkctrl_outclk\,
	sdata => \inst2|STATE.S2~regout\,
	sload => VCC,
	ena => \inst2|Selector12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|LIGHT2\(0));

-- Location: LCCOMB_X21_Y3_N14
\inst3|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux7~0_combout\ = (\inst3|CNT4\(0) & (((\inst3|CNT4\(1))))) # (!\inst3|CNT4\(0) & ((\inst3|CNT4\(1) & ((\inst2|LIGHT2\(0)))) # (!\inst3|CNT4\(1) & (\inst2|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|CNT4\(0),
	datab => \inst2|COUNT\(0),
	datac => \inst2|LIGHT2\(0),
	datad => \inst3|CNT4\(1),
	combout => \inst3|Mux7~0_combout\);

-- Location: LCCOMB_X20_Y3_N14
\inst2|Div0|auto_generated|divider|divider|StageOut[23]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst2|COUNT\(4))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT\(4),
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X20_Y3_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[22]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst2|COUNT\(3))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|COUNT\(3),
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X20_Y3_N22
\inst2|Div0|auto_generated|divider|divider|StageOut[21]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\inst2|COUNT\(2) & \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(2),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X20_Y3_N18
\inst2|Div0|auto_generated|divider|divider|StageOut[20]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ = (\inst2|COUNT\(1) & \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|COUNT\(1),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X20_Y3_N2
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datad => VCC,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X20_Y3_N4
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ & 
-- !\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X20_Y3_N6
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X20_Y3_N8
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ & 
-- !\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y3_N10
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y3_N16
\inst3|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux7~1_combout\ = (\inst3|CNT4\(0) & ((\inst3|Mux7~0_combout\ & (\inst2|LIGHT1\(0))) # (!\inst3|Mux7~0_combout\ & ((!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))) # (!\inst3|CNT4\(0) & 
-- (((\inst3|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|CNT4\(0),
	datab => \inst2|LIGHT1\(0),
	datac => \inst3|Mux7~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst3|Mux7~1_combout\);

-- Location: LCFF_X21_Y3_N17
\inst3|SHUJU[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	datain => \inst3|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|SHUJU\(0));

-- Location: LCCOMB_X14_Y1_N16
\inst3|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux8~0_combout\ = (\inst3|SHUJU\(3)) # ((\inst3|SHUJU\(1) & ((!\inst3|SHUJU\(0)) # (!\inst3|SHUJU\(2)))) # (!\inst3|SHUJU\(1) & (\inst3|SHUJU\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SHUJU\(1),
	datab => \inst3|SHUJU\(3),
	datac => \inst3|SHUJU\(2),
	datad => \inst3|SHUJU\(0),
	combout => \inst3|Mux8~0_combout\);

-- Location: LCCOMB_X14_Y1_N18
\inst3|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux9~0_combout\ = (!\inst3|SHUJU\(3) & ((\inst3|SHUJU\(1) & ((\inst3|SHUJU\(0)) # (!\inst3|SHUJU\(2)))) # (!\inst3|SHUJU\(1) & (!\inst3|SHUJU\(2) & \inst3|SHUJU\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SHUJU\(1),
	datab => \inst3|SHUJU\(3),
	datac => \inst3|SHUJU\(2),
	datad => \inst3|SHUJU\(0),
	combout => \inst3|Mux9~0_combout\);

-- Location: LCCOMB_X14_Y1_N12
\inst3|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux10~0_combout\ = (\inst3|SHUJU\(0)) # ((!\inst3|SHUJU\(1) & \inst3|SHUJU\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SHUJU\(1),
	datac => \inst3|SHUJU\(2),
	datad => \inst3|SHUJU\(0),
	combout => \inst3|Mux10~0_combout\);

-- Location: LCCOMB_X14_Y1_N6
\inst3|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux11~0_combout\ = (!\inst3|SHUJU\(3) & ((\inst3|SHUJU\(1) & (\inst3|SHUJU\(2) & \inst3|SHUJU\(0))) # (!\inst3|SHUJU\(1) & (\inst3|SHUJU\(2) $ (\inst3|SHUJU\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SHUJU\(1),
	datab => \inst3|SHUJU\(3),
	datac => \inst3|SHUJU\(2),
	datad => \inst3|SHUJU\(0),
	combout => \inst3|Mux11~0_combout\);

-- Location: LCCOMB_X14_Y1_N28
\inst3|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux12~0_combout\ = (\inst3|SHUJU\(1) & (!\inst3|SHUJU\(2) & !\inst3|SHUJU\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SHUJU\(1),
	datac => \inst3|SHUJU\(2),
	datad => \inst3|SHUJU\(0),
	combout => \inst3|Mux12~0_combout\);

-- Location: LCCOMB_X14_Y1_N10
\inst3|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux13~0_combout\ = (\inst3|SHUJU\(2) & (\inst3|SHUJU\(1) $ (\inst3|SHUJU\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SHUJU\(1),
	datac => \inst3|SHUJU\(2),
	datad => \inst3|SHUJU\(0),
	combout => \inst3|Mux13~0_combout\);

-- Location: LCCOMB_X14_Y1_N8
\inst3|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux14~0_combout\ = (!\inst3|SHUJU\(1) & (!\inst3|SHUJU\(3) & (\inst3|SHUJU\(2) $ (\inst3|SHUJU\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SHUJU\(1),
	datab => \inst3|SHUJU\(3),
	datac => \inst3|SHUJU\(2),
	datad => \inst3|SHUJU\(0),
	combout => \inst3|Mux14~0_combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7com[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|TOseg7com\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7com(3));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7com[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|TOseg7com\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7com(2));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7com[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|TOseg7com\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7com(1));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7com[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|TOseg7com\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7com(0));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7data(7));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|ALT_INV_Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7data(6));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7data(5));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7data(4));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7data(3));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7data(2));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7data(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg7data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg7data(0));
END structure;


