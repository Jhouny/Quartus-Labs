-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "06/05/2024 12:33:54"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	MEM_CTRL : OUT std_logic;
	CLK_BASE_SLOW : IN std_logic;
	CLK_BASE_FAST : IN std_logic;
	CONTINUE : IN std_logic;
	state : OUT std_logic_vector(3 DOWNTO 0);
	S : OUT std_logic_vector(7 DOWNTO 0);
	A : OUT std_logic_vector(7 DOWNTO 0);
	O : OUT std_logic_vector(7 DOWNTO 0);
	B : OUT std_logic_vector(7 DOWNTO 0);
	SERIAL_OUT : OUT std_logic;
	FAST_CLK : OUT std_logic;
	SLOW_CLK : OUT std_logic;
	STOPPED : OUT std_logic
	);
END main;

-- Design Ports Information
-- MEM_CTRL	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[0]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SERIAL_OUT	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FAST_CLK	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SLOW_CLK	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STOPPED	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTINUE	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_BASE_FAST	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_BASE_SLOW	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MEM_CTRL : std_logic;
SIGNAL ww_CLK_BASE_SLOW : std_logic;
SIGNAL ww_CLK_BASE_FAST : std_logic;
SIGNAL ww_CONTINUE : std_logic;
SIGNAL ww_state : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_O : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SERIAL_OUT : std_logic;
SIGNAL ww_FAST_CLK : std_logic;
SIGNAL ww_SLOW_CLK : std_logic;
SIGNAL ww_STOPPED : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst12|FAST_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|SLOW_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \MEM_CTRL~output_o\ : std_logic;
SIGNAL \state[3]~output_o\ : std_logic;
SIGNAL \state[2]~output_o\ : std_logic;
SIGNAL \state[1]~output_o\ : std_logic;
SIGNAL \state[0]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \O[7]~output_o\ : std_logic;
SIGNAL \O[6]~output_o\ : std_logic;
SIGNAL \O[5]~output_o\ : std_logic;
SIGNAL \O[4]~output_o\ : std_logic;
SIGNAL \O[3]~output_o\ : std_logic;
SIGNAL \O[2]~output_o\ : std_logic;
SIGNAL \O[1]~output_o\ : std_logic;
SIGNAL \O[0]~output_o\ : std_logic;
SIGNAL \B[7]~output_o\ : std_logic;
SIGNAL \B[6]~output_o\ : std_logic;
SIGNAL \B[5]~output_o\ : std_logic;
SIGNAL \B[4]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \SERIAL_OUT~output_o\ : std_logic;
SIGNAL \FAST_CLK~output_o\ : std_logic;
SIGNAL \SLOW_CLK~output_o\ : std_logic;
SIGNAL \STOPPED~output_o\ : std_logic;
SIGNAL \CLK_BASE_SLOW~input_o\ : std_logic;
SIGNAL \CLK_BASE_FAST~input_o\ : std_logic;
SIGNAL \inst12|FAST_CLK~combout\ : std_logic;
SIGNAL \inst12|FAST_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|count[0]~8_combout\ : std_logic;
SIGNAL \inst8|count[1]~7_combout\ : std_logic;
SIGNAL \inst8|count[2]~6_combout\ : std_logic;
SIGNAL \inst8|count[3]~5_combout\ : std_logic;
SIGNAL \inst8|Equal0~0_combout\ : std_logic;
SIGNAL \inst8|count[4]~4_combout\ : std_logic;
SIGNAL \inst8|count[5]~3_combout\ : std_logic;
SIGNAL \inst8|count~2_combout\ : std_logic;
SIGNAL \inst8|count~0_combout\ : std_logic;
SIGNAL \inst8|count~1_combout\ : std_logic;
SIGNAL \inst8|count[7]~feeder_combout\ : std_logic;
SIGNAL \inst6|dff7~0_combout\ : std_logic;
SIGNAL \inst6|dff7~feeder_combout\ : std_logic;
SIGNAL \inst6|dff6~0_combout\ : std_logic;
SIGNAL \inst6|dff6~feeder_combout\ : std_logic;
SIGNAL \inst6|dff5~0_combout\ : std_logic;
SIGNAL \inst6|dff5~feeder_combout\ : std_logic;
SIGNAL \inst6|dff4~0_combout\ : std_logic;
SIGNAL \inst6|dff4~feeder_combout\ : std_logic;
SIGNAL \inst6|dff3~0_combout\ : std_logic;
SIGNAL \inst6|dff3~feeder_combout\ : std_logic;
SIGNAL \inst6|dff2~0_combout\ : std_logic;
SIGNAL \inst6|dff2~feeder_combout\ : std_logic;
SIGNAL \inst6|dff1~0_combout\ : std_logic;
SIGNAL \inst6|dff1~feeder_combout\ : std_logic;
SIGNAL \inst6|ld0|Dout~0_combout\ : std_logic;
SIGNAL \inst6|dff0~q\ : std_logic;
SIGNAL \inst6|dff1~q\ : std_logic;
SIGNAL \inst6|dff2~q\ : std_logic;
SIGNAL \inst6|dff3~q\ : std_logic;
SIGNAL \inst6|dff4~q\ : std_logic;
SIGNAL \inst6|dff5~q\ : std_logic;
SIGNAL \inst6|dff6~q\ : std_logic;
SIGNAL \inst6|dff7~q\ : std_logic;
SIGNAL \inst6|S~feeder_combout\ : std_logic;
SIGNAL \inst6|S~q\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \CONTINUE~input_o\ : std_logic;
SIGNAL \inst12|STOPPED~0_combout\ : std_logic;
SIGNAL \inst12|SLOW_CLK~combout\ : std_logic;
SIGNAL \inst12|SLOW_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \inst9~feeder_combout\ : std_logic;
SIGNAL \inst9~q\ : std_logic;
SIGNAL \inst1~feeder_combout\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \inst2~feeder_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst|S[0]~0_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|estado\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|ALT_INV_SLOW_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \inst12|ALT_INV_SLOW_CLK~combout\ : std_logic;
SIGNAL \inst8|ALT_INV_count\ : std_logic_vector(7 DOWNTO 7);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

MEM_CTRL <= ww_MEM_CTRL;
ww_CLK_BASE_SLOW <= CLK_BASE_SLOW;
ww_CLK_BASE_FAST <= CLK_BASE_FAST;
ww_CONTINUE <= CONTINUE;
state <= ww_state;
S <= ww_S;
A <= ww_A;
O <= ww_O;
B <= ww_B;
SERIAL_OUT <= ww_SERIAL_OUT;
FAST_CLK <= ww_FAST_CLK;
SLOW_CLK <= ww_SLOW_CLK;
STOPPED <= ww_STOPPED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst8|count\(7) & \inst8|count\(6) & \inst8|count\(5) & \inst8|count\(4) & \inst8|count\(3) & \inst8|count\(2) & \inst8|count\(1) & \inst8|count\(0));

\inst3|altsyncram_component|auto_generated|q_a\(0) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(1) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst3|altsyncram_component|auto_generated|q_a\(2) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst3|altsyncram_component|auto_generated|q_a\(3) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst3|altsyncram_component|auto_generated|q_a\(4) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst3|altsyncram_component|auto_generated|q_a\(5) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst3|altsyncram_component|auto_generated|q_a\(6) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst3|altsyncram_component|auto_generated|q_a\(7) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst4|altsyncram_component|auto_generated|q_a\(0) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst4|altsyncram_component|auto_generated|q_a\(1) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst4|altsyncram_component|auto_generated|q_a\(2) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst4|altsyncram_component|auto_generated|q_a\(3) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst4|altsyncram_component|auto_generated|q_a\(4) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst4|altsyncram_component|auto_generated|q_a\(5) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst4|altsyncram_component|auto_generated|q_a\(6) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst4|altsyncram_component|auto_generated|q_a\(7) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst12|FAST_CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst12|FAST_CLK~combout\);

\inst12|SLOW_CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst12|SLOW_CLK~combout\);
\inst12|ALT_INV_SLOW_CLK~clkctrl_outclk\ <= NOT \inst12|SLOW_CLK~clkctrl_outclk\;
\inst12|ALT_INV_SLOW_CLK~combout\ <= NOT \inst12|SLOW_CLK~combout\;
\inst8|ALT_INV_count\(7) <= NOT \inst8|count\(7);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X54_Y54_N2
\MEM_CTRL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~q\,
	devoe => ww_devoe,
	o => \MEM_CTRL~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\state[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \state[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\state[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|estado\(2),
	devoe => ww_devoe,
	o => \state[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\state[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|estado\(1),
	devoe => ww_devoe,
	o => \state[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\state[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|estado\(0),
	devoe => ww_devoe,
	o => \state[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\S[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dff7~0_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\S[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dff6~0_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\S[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dff5~0_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\S[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dff4~0_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dff3~0_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dff2~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|dff1~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|S[0]~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\A[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\A[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\A[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\A[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\A[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\A[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\A[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\A[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\O[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|count\(7),
	devoe => ww_devoe,
	o => \O[7]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\O[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|count\(6),
	devoe => ww_devoe,
	o => \O[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\O[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|count\(5),
	devoe => ww_devoe,
	o => \O[5]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\O[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|count\(4),
	devoe => ww_devoe,
	o => \O[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\O[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|count\(3),
	devoe => ww_devoe,
	o => \O[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\O[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|count\(2),
	devoe => ww_devoe,
	o => \O[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\O[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|count\(1),
	devoe => ww_devoe,
	o => \O[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\O[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|count\(0),
	devoe => ww_devoe,
	o => \O[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\B[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \B[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\B[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\B[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\B[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\SERIAL_OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|S~q\,
	devoe => ww_devoe,
	o => \SERIAL_OUT~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\FAST_CLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|FAST_CLK~combout\,
	devoe => ww_devoe,
	o => \FAST_CLK~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\SLOW_CLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|SLOW_CLK~combout\,
	devoe => ww_devoe,
	o => \SLOW_CLK~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\STOPPED~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|STOPPED~0_combout\,
	devoe => ww_devoe,
	o => \STOPPED~output_o\);

-- Location: IOIBUF_X56_Y54_N29
\CLK_BASE_SLOW~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_BASE_SLOW,
	o => \CLK_BASE_SLOW~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\CLK_BASE_FAST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_BASE_FAST,
	o => \CLK_BASE_FAST~input_o\);

-- Location: LCCOMB_X55_Y53_N14
\inst12|FAST_CLK\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|FAST_CLK~combout\ = LCELL((!\inst12|STOPPED~0_combout\ & \CLK_BASE_FAST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|STOPPED~0_combout\,
	datad => \CLK_BASE_FAST~input_o\,
	combout => \inst12|FAST_CLK~combout\);

-- Location: CLKCTRL_G12
\inst12|FAST_CLK~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst12|FAST_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst12|FAST_CLK~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y53_N28
\inst8|count[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|count[0]~8_combout\ = !\inst8|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|count\(0),
	combout => \inst8|count[0]~8_combout\);

-- Location: FF_X52_Y53_N29
\inst8|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|SLOW_CLK~clkctrl_outclk\,
	d => \inst8|count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(0));

-- Location: LCCOMB_X52_Y53_N30
\inst8|count[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|count[1]~7_combout\ = \inst8|count\(1) $ (\inst8|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|count\(1),
	datad => \inst8|count\(0),
	combout => \inst8|count[1]~7_combout\);

-- Location: FF_X52_Y53_N31
\inst8|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|SLOW_CLK~clkctrl_outclk\,
	d => \inst8|count[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(1));

-- Location: LCCOMB_X52_Y53_N20
\inst8|count[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|count[2]~6_combout\ = \inst8|count\(2) $ (((\inst8|count\(1) & \inst8|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(1),
	datac => \inst8|count\(2),
	datad => \inst8|count\(0),
	combout => \inst8|count[2]~6_combout\);

-- Location: FF_X52_Y53_N21
\inst8|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|SLOW_CLK~clkctrl_outclk\,
	d => \inst8|count[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(2));

-- Location: LCCOMB_X52_Y53_N6
\inst8|count[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|count[3]~5_combout\ = \inst8|count\(3) $ (((\inst8|count\(1) & (\inst8|count\(2) & \inst8|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(1),
	datab => \inst8|count\(2),
	datac => \inst8|count\(3),
	datad => \inst8|count\(0),
	combout => \inst8|count[3]~5_combout\);

-- Location: FF_X52_Y53_N7
\inst8|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|SLOW_CLK~clkctrl_outclk\,
	d => \inst8|count[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(3));

-- Location: LCCOMB_X52_Y53_N24
\inst8|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Equal0~0_combout\ = (\inst8|count\(3) & (\inst8|count\(2) & (\inst8|count\(1) & \inst8|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(3),
	datab => \inst8|count\(2),
	datac => \inst8|count\(1),
	datad => \inst8|count\(0),
	combout => \inst8|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y53_N12
\inst8|count[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|count[4]~4_combout\ = \inst8|count\(4) $ (\inst8|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|count\(4),
	datad => \inst8|Equal0~0_combout\,
	combout => \inst8|count[4]~4_combout\);

-- Location: FF_X52_Y53_N13
\inst8|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|SLOW_CLK~clkctrl_outclk\,
	d => \inst8|count[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(4));

-- Location: LCCOMB_X52_Y53_N14
\inst8|count[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|count[5]~3_combout\ = \inst8|count\(5) $ (((\inst8|count\(4) & \inst8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(4),
	datac => \inst8|count\(5),
	datad => \inst8|Equal0~0_combout\,
	combout => \inst8|count[5]~3_combout\);

-- Location: FF_X52_Y53_N15
\inst8|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|SLOW_CLK~clkctrl_outclk\,
	d => \inst8|count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(5));

-- Location: LCCOMB_X52_Y53_N4
\inst8|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|count~2_combout\ = \inst8|count\(6) $ (((\inst8|count\(4) & (\inst8|count\(5) & \inst8|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(4),
	datab => \inst8|count\(5),
	datac => \inst8|count\(6),
	datad => \inst8|Equal0~0_combout\,
	combout => \inst8|count~2_combout\);

-- Location: FF_X52_Y53_N5
\inst8|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|SLOW_CLK~clkctrl_outclk\,
	d => \inst8|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(6));

-- Location: LCCOMB_X52_Y53_N26
\inst8|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|count~0_combout\ = (!\inst8|count\(4)) # (!\inst8|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|count\(6),
	datad => \inst8|count\(4),
	combout => \inst8|count~0_combout\);

-- Location: LCCOMB_X52_Y53_N22
\inst8|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|count~1_combout\ = \inst8|count\(7) $ (((\inst8|count\(5) & (!\inst8|count~0_combout\ & \inst8|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(7),
	datab => \inst8|count\(5),
	datac => \inst8|count~0_combout\,
	datad => \inst8|Equal0~0_combout\,
	combout => \inst8|count~1_combout\);

-- Location: LCCOMB_X52_Y53_N0
\inst8|count[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|count[7]~feeder_combout\ = \inst8|count~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count~1_combout\,
	combout => \inst8|count[7]~feeder_combout\);

-- Location: FF_X52_Y53_N1
\inst8|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|SLOW_CLK~clkctrl_outclk\,
	d => \inst8|count[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(7));

-- Location: M9K_X53_Y53_N0
\inst3|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0034001CF00A80037F012C005EF0198007F0021400990028C00B4F032000D2F038400F0F0434411CE04A84137E052C415EE0598417F1061441991068C41B4E07",
	mem_init1 => X"2041D2E078441F0E0834821CD08A88237D092C825ED0998827F20A14829920A8C82B4D0B2082D2D0B8482F0D0C34C31CC0CA8C337C0D2CC35EC0D98C37F30E14C39930E8CC3B4C0F20C3D2C0F84C3F0C1035041CB10A90437B112D045EB1199047F4121504994128D04B4B132104D2B138504F0B1435451CA14A94537A152D455EA1599457F5161545995168D45B4A172145D2A178545F0A1835861C918A986379192D865E91999867F61A15869961A8D86B491B2186D291B8586F091C35C71C81CA9C73781D2DC75E81D99C77F71E15C79971E8DC7B481F21C7D281F85C7F082036081C720AA08377212E085E7219A087F8221608998228E08B47232208D272",
	mem_init0 => X"38608F072436491C624AA49376252E495E6259A497F9261649999268E49B46272249D26278649F0628368A1C528AA8A375292E8A5E5299A8A7FA2A168A99A2A8E8AB452B228AD252B868AF052C36CB1C42CAACB3742D2ECB5E42D9ACB7FB2E16CB99B2E8ECBB442F22CBD242F86CBF0430370C1C330AB0C373312F0C5E3319B0C7FC32170C99C328F0CB4333230CD2333870CF0334374D1C234AB4D372352F4D5E2359B4D7FD36174D99D368F4DB4237234DD2237874DF0238378E1C138AB8E371392F8E5E1399B8E7FE3A178E99E3A8F8EB413B238ED213B878EF013C37CF1C03CABCF3703D2FCF5E03D9BCF7FF3E17CF99F3E8FCFB403F23CFD203F87CFF00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM_256_8.hex",
	init_file_layout => "port_a",
	logical_ram_name => "ROM_256_8:inst3|altsyncram:altsyncram_component|altsyncram_jkq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst12|SLOW_CLK~clkctrl_outclk\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X55_Y53_N2
\inst6|dff7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|dff7~0_combout\ = (\inst2~q\ & (\inst4|altsyncram_component|auto_generated|q_a\(7))) # (!\inst2~q\ & ((\inst3|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2~q\,
	datac => \inst4|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst3|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst6|dff7~0_combout\);

-- Location: LCCOMB_X55_Y53_N30
\inst6|dff7~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|dff7~feeder_combout\ = \inst6|dff7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dff7~0_combout\,
	combout => \inst6|dff7~feeder_combout\);

-- Location: LCCOMB_X54_Y53_N12
\inst6|dff6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|dff6~0_combout\ = (\inst2~q\ & (\inst4|altsyncram_component|auto_generated|q_a\(6))) # (!\inst2~q\ & ((\inst3|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2~q\,
	datac => \inst4|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst3|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst6|dff6~0_combout\);

-- Location: LCCOMB_X54_Y53_N6
\inst6|dff6~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|dff6~feeder_combout\ = \inst6|dff6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dff6~0_combout\,
	combout => \inst6|dff6~feeder_combout\);

-- Location: LCCOMB_X54_Y53_N24
\inst6|dff5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|dff5~0_combout\ = (\inst2~q\ & (\inst4|altsyncram_component|auto_generated|q_a\(5))) # (!\inst2~q\ & ((\inst3|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|altsyncram_component|auto_generated|q_a\(5),
	datac => \inst2~q\,
	datad => \inst3|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst6|dff5~0_combout\);

-- Location: LCCOMB_X54_Y53_N22
\inst6|dff5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|dff5~feeder_combout\ = \inst6|dff5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dff5~0_combout\,
	combout => \inst6|dff5~feeder_combout\);

-- Location: LCCOMB_X54_Y53_N10
\inst6|dff4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|dff4~0_combout\ = (\inst2~q\ & (\inst4|altsyncram_component|auto_generated|q_a\(4))) # (!\inst2~q\ & ((\inst3|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst2~q\,
	datad => \inst3|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst6|dff4~0_combout\);

-- Location: LCCOMB_X54_Y53_N14
\inst6|dff4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|dff4~feeder_combout\ = \inst6|dff4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dff4~0_combout\,
	combout => \inst6|dff4~feeder_combout\);

-- Location: LCCOMB_X54_Y53_N0
\inst6|dff3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|dff3~0_combout\ = (\inst2~q\ & (\inst4|altsyncram_component|auto_generated|q_a\(3))) # (!\inst2~q\ & ((\inst3|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2~q\,
	datac => \inst4|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst3|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst6|dff3~0_combout\);

-- Location: LCCOMB_X54_Y53_N26
\inst6|dff3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|dff3~feeder_combout\ = \inst6|dff3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dff3~0_combout\,
	combout => \inst6|dff3~feeder_combout\);

-- Location: LCCOMB_X54_Y53_N16
\inst6|dff2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|dff2~0_combout\ = (\inst2~q\ & (\inst4|altsyncram_component|auto_generated|q_a\(2))) # (!\inst2~q\ & ((\inst3|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2~q\,
	datac => \inst4|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst3|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst6|dff2~0_combout\);

-- Location: LCCOMB_X54_Y53_N30
\inst6|dff2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|dff2~feeder_combout\ = \inst6|dff2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dff2~0_combout\,
	combout => \inst6|dff2~feeder_combout\);

-- Location: LCCOMB_X54_Y53_N20
\inst6|dff1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|dff1~0_combout\ = (\inst2~q\ & (\inst4|altsyncram_component|auto_generated|q_a\(1))) # (!\inst2~q\ & ((\inst3|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2~q\,
	datac => \inst4|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst3|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst6|dff1~0_combout\);

-- Location: LCCOMB_X54_Y53_N8
\inst6|dff1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|dff1~feeder_combout\ = \inst6|dff1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dff1~0_combout\,
	combout => \inst6|dff1~feeder_combout\);

-- Location: LCCOMB_X54_Y53_N2
\inst6|ld0|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|ld0|Dout~0_combout\ = (\inst12|SLOW_CLK~combout\ & ((\inst2~q\ & (\inst4|altsyncram_component|auto_generated|q_a\(0))) # (!\inst2~q\ & ((\inst3|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~q\,
	datab => \inst4|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst3|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst12|SLOW_CLK~combout\,
	combout => \inst6|ld0|Dout~0_combout\);

-- Location: FF_X54_Y53_N3
\inst6|dff0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|FAST_CLK~clkctrl_outclk\,
	d => \inst6|ld0|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dff0~q\);

-- Location: FF_X54_Y53_N9
\inst6|dff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|FAST_CLK~clkctrl_outclk\,
	d => \inst6|dff1~feeder_combout\,
	asdata => \inst6|dff0~q\,
	sload => \inst12|ALT_INV_SLOW_CLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dff1~q\);

-- Location: FF_X54_Y53_N31
\inst6|dff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|FAST_CLK~clkctrl_outclk\,
	d => \inst6|dff2~feeder_combout\,
	asdata => \inst6|dff1~q\,
	sload => \inst12|ALT_INV_SLOW_CLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dff2~q\);

-- Location: FF_X54_Y53_N27
\inst6|dff3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|FAST_CLK~clkctrl_outclk\,
	d => \inst6|dff3~feeder_combout\,
	asdata => \inst6|dff2~q\,
	sload => \inst12|ALT_INV_SLOW_CLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dff3~q\);

-- Location: FF_X54_Y53_N15
\inst6|dff4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|FAST_CLK~clkctrl_outclk\,
	d => \inst6|dff4~feeder_combout\,
	asdata => \inst6|dff3~q\,
	sload => \inst12|ALT_INV_SLOW_CLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dff4~q\);

-- Location: FF_X54_Y53_N23
\inst6|dff5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|FAST_CLK~clkctrl_outclk\,
	d => \inst6|dff5~feeder_combout\,
	asdata => \inst6|dff4~q\,
	sload => \inst12|ALT_INV_SLOW_CLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dff5~q\);

-- Location: FF_X54_Y53_N7
\inst6|dff6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|FAST_CLK~clkctrl_outclk\,
	d => \inst6|dff6~feeder_combout\,
	asdata => \inst6|dff5~q\,
	sload => \inst12|ALT_INV_SLOW_CLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dff6~q\);

-- Location: FF_X55_Y53_N31
\inst6|dff7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|FAST_CLK~clkctrl_outclk\,
	d => \inst6|dff7~feeder_combout\,
	asdata => \inst6|dff6~q\,
	sload => \inst12|ALT_INV_SLOW_CLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dff7~q\);

-- Location: LCCOMB_X55_Y53_N6
\inst6|S~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|S~feeder_combout\ = \inst6|dff7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dff7~q\,
	combout => \inst6|S~feeder_combout\);

-- Location: FF_X55_Y53_N7
\inst6|S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|FAST_CLK~clkctrl_outclk\,
	d => \inst6|S~feeder_combout\,
	clrn => \inst12|ALT_INV_SLOW_CLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|S~q\);

-- Location: LCCOMB_X55_Y53_N26
\inst7|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst7|estado\(1) & (\inst6|S~q\ & (\inst7|estado\(0) $ (\inst7|estado\(2))))) # (!\inst7|estado\(1) & (((\inst7|estado\(2) & !\inst6|S~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|estado\(0),
	datab => \inst7|estado\(1),
	datac => \inst7|estado\(2),
	datad => \inst6|S~q\,
	combout => \inst7|Mux0~0_combout\);

-- Location: FF_X55_Y53_N27
\inst7|estado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|FAST_CLK~combout\,
	d => \inst7|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|estado\(2));

-- Location: LCCOMB_X55_Y53_N28
\inst7|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = (\inst7|estado\(1) & (((!\inst7|estado\(0) & \inst6|S~q\)))) # (!\inst7|estado\(1) & ((\inst6|S~q\) # ((\inst7|estado\(2) & !\inst7|estado\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|estado\(1),
	datab => \inst7|estado\(2),
	datac => \inst7|estado\(0),
	datad => \inst6|S~q\,
	combout => \inst7|Mux2~0_combout\);

-- Location: FF_X55_Y53_N29
\inst7|estado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|FAST_CLK~combout\,
	d => \inst7|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|estado\(0));

-- Location: LCCOMB_X55_Y53_N22
\inst7|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = (\inst7|estado\(0) & (((\inst7|estado\(2) & !\inst7|estado\(1))) # (!\inst6|S~q\))) # (!\inst7|estado\(0) & (((\inst7|estado\(1) & \inst6|S~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|estado\(0),
	datab => \inst7|estado\(2),
	datac => \inst7|estado\(1),
	datad => \inst6|S~q\,
	combout => \inst7|Mux1~0_combout\);

-- Location: FF_X55_Y53_N23
\inst7|estado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|FAST_CLK~combout\,
	d => \inst7|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|estado\(1));

-- Location: IOIBUF_X64_Y54_N1
\CONTINUE~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONTINUE,
	o => \CONTINUE~input_o\);

-- Location: LCCOMB_X55_Y53_N24
\inst12|STOPPED~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|STOPPED~0_combout\ = (\inst7|estado\(1) & (!\CONTINUE~input_o\ & (\inst7|estado\(2) & \inst7|estado\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|estado\(1),
	datab => \CONTINUE~input_o\,
	datac => \inst7|estado\(2),
	datad => \inst7|estado\(0),
	combout => \inst12|STOPPED~0_combout\);

-- Location: LCCOMB_X55_Y53_N12
\inst12|SLOW_CLK\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|SLOW_CLK~combout\ = LCELL((\CLK_BASE_SLOW~input_o\ & !\inst12|STOPPED~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK_BASE_SLOW~input_o\,
	datad => \inst12|STOPPED~0_combout\,
	combout => \inst12|SLOW_CLK~combout\);

-- Location: CLKCTRL_G10
\inst12|SLOW_CLK~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst12|SLOW_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst12|SLOW_CLK~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y53_N18
\inst9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = !\inst9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9~q\,
	combout => \inst9~0_combout\);

-- Location: LCCOMB_X52_Y53_N10
\inst9~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9~feeder_combout\ = \inst9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9~0_combout\,
	combout => \inst9~feeder_combout\);

-- Location: FF_X52_Y53_N11
inst9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|ALT_INV_count\(7),
	d => \inst9~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~q\);

-- Location: LCCOMB_X54_Y53_N28
\inst1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1~feeder_combout\ = \inst9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9~q\,
	combout => \inst1~feeder_combout\);

-- Location: FF_X54_Y53_N29
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|SLOW_CLK~clkctrl_outclk\,
	d => \inst1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

-- Location: LCCOMB_X54_Y53_N4
\inst2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2~feeder_combout\ = \inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1~q\,
	combout => \inst2~feeder_combout\);

-- Location: FF_X54_Y53_N5
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|SLOW_CLK~clkctrl_outclk\,
	d => \inst2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: LCCOMB_X54_Y53_N18
\inst|S[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|S[0]~0_combout\ = (\inst2~q\ & (\inst4|altsyncram_component|auto_generated|q_a\(0))) # (!\inst2~q\ & ((\inst3|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst3|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst2~q\,
	combout => \inst|S[0]~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_MEM_CTRL <= \MEM_CTRL~output_o\;

ww_state(3) <= \state[3]~output_o\;

ww_state(2) <= \state[2]~output_o\;

ww_state(1) <= \state[1]~output_o\;

ww_state(0) <= \state[0]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_O(7) <= \O[7]~output_o\;

ww_O(6) <= \O[6]~output_o\;

ww_O(5) <= \O[5]~output_o\;

ww_O(4) <= \O[4]~output_o\;

ww_O(3) <= \O[3]~output_o\;

ww_O(2) <= \O[2]~output_o\;

ww_O(1) <= \O[1]~output_o\;

ww_O(0) <= \O[0]~output_o\;

ww_B(7) <= \B[7]~output_o\;

ww_B(6) <= \B[6]~output_o\;

ww_B(5) <= \B[5]~output_o\;

ww_B(4) <= \B[4]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_SERIAL_OUT <= \SERIAL_OUT~output_o\;

ww_FAST_CLK <= \FAST_CLK~output_o\;

ww_SLOW_CLK <= \SLOW_CLK~output_o\;

ww_STOPPED <= \STOPPED~output_o\;
END structure;


