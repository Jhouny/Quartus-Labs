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

-- DATE "04/23/2024 21:01:12"

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
	C03 : OUT std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	C01 : OUT std_logic;
	C00 : OUT std_logic;
	C02 : OUT std_logic;
	C13 : OUT std_logic;
	C12 : OUT std_logic;
	C11 : OUT std_logic;
	C10 : OUT std_logic;
	C23 : OUT std_logic;
	C22 : OUT std_logic;
	C21 : OUT std_logic;
	C20 : OUT std_logic
	);
END main;

-- Design Ports Information
-- C03	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C01	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C00	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C02	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C13	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C12	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C11	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C10	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C23	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C22	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C21	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C20	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_C03 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_C01 : std_logic;
SIGNAL ww_C00 : std_logic;
SIGNAL ww_C02 : std_logic;
SIGNAL ww_C13 : std_logic;
SIGNAL ww_C12 : std_logic;
SIGNAL ww_C11 : std_logic;
SIGNAL ww_C10 : std_logic;
SIGNAL ww_C23 : std_logic;
SIGNAL ww_C22 : std_logic;
SIGNAL ww_C21 : std_logic;
SIGNAL ww_C20 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|count[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|count[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \C03~output_o\ : std_logic;
SIGNAL \C01~output_o\ : std_logic;
SIGNAL \C00~output_o\ : std_logic;
SIGNAL \C02~output_o\ : std_logic;
SIGNAL \C13~output_o\ : std_logic;
SIGNAL \C12~output_o\ : std_logic;
SIGNAL \C11~output_o\ : std_logic;
SIGNAL \C10~output_o\ : std_logic;
SIGNAL \C23~output_o\ : std_logic;
SIGNAL \C22~output_o\ : std_logic;
SIGNAL \C21~output_o\ : std_logic;
SIGNAL \C20~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|count[0]~3_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|count~1_combout\ : std_logic;
SIGNAL \inst|count[1]~feeder_combout\ : std_logic;
SIGNAL \inst|count[2]~2_combout\ : std_logic;
SIGNAL \inst|count~0_combout\ : std_logic;
SIGNAL \inst|count[3]~feeder_combout\ : std_logic;
SIGNAL \inst|count[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|count[0]~3_combout\ : std_logic;
SIGNAL \inst2|count[2]~1_combout\ : std_logic;
SIGNAL \inst2|count~2_combout\ : std_logic;
SIGNAL \inst2|count[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|count~0_combout\ : std_logic;
SIGNAL \inst2|count[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|count[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|count[0]~3_combout\ : std_logic;
SIGNAL \inst3|count~2_combout\ : std_logic;
SIGNAL \inst3|count[2]~1_combout\ : std_logic;
SIGNAL \inst3|count~0_combout\ : std_logic;
SIGNAL \inst|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|ALT_INV_count[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_count[3]~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

C03 <= ww_C03;
ww_CLK <= CLK;
ww_RST <= RST;
C01 <= ww_C01;
C00 <= ww_C00;
C02 <= ww_C02;
C13 <= ww_C13;
C12 <= ww_C12;
C11 <= ww_C11;
C10 <= ww_C10;
C23 <= ww_C23;
C22 <= ww_C22;
C21 <= ww_C21;
C20 <= ww_C20;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst|count[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|count\(3));

\inst2|count[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|count\(3));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
\inst2|ALT_INV_count[3]~clkctrl_outclk\ <= NOT \inst2|count[3]~clkctrl_outclk\;
\inst|ALT_INV_count[3]~clkctrl_outclk\ <= NOT \inst|count[3]~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X46_Y0_N9
\C03~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|count\(3),
	devoe => ww_devoe,
	o => \C03~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\C01~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|count\(1),
	devoe => ww_devoe,
	o => \C01~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\C00~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|count\(0),
	devoe => ww_devoe,
	o => \C00~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\C02~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|count\(2),
	devoe => ww_devoe,
	o => \C02~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\C13~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|count\(3),
	devoe => ww_devoe,
	o => \C13~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\C12~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|count\(2),
	devoe => ww_devoe,
	o => \C12~output_o\);

-- Location: IOOBUF_X0_Y37_N9
\C11~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|count\(1),
	devoe => ww_devoe,
	o => \C11~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\C10~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|count\(0),
	devoe => ww_devoe,
	o => \C10~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\C23~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|count\(3),
	devoe => ww_devoe,
	o => \C23~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\C22~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|count\(2),
	devoe => ww_devoe,
	o => \C22~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\C21~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|count\(1),
	devoe => ww_devoe,
	o => \C21~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\C20~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|count\(0),
	devoe => ww_devoe,
	o => \C20~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y1_N26
\inst|count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count[0]~3_combout\ = !\inst|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(0),
	combout => \inst|count[0]~3_combout\);

-- Location: IOIBUF_X0_Y18_N22
\RST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G1
\RST~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X45_Y1_N27
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count[0]~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X45_Y1_N30
\inst|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count~1_combout\ = (\inst|count\(0) & (!\inst|count\(1) & ((\inst|count\(2)) # (!\inst|count\(3))))) # (!\inst|count\(0) & (((\inst|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(2),
	datab => \inst|count\(0),
	datac => \inst|count\(3),
	datad => \inst|count\(1),
	combout => \inst|count~1_combout\);

-- Location: LCCOMB_X45_Y1_N18
\inst|count[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count[1]~feeder_combout\ = \inst|count~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count~1_combout\,
	combout => \inst|count[1]~feeder_combout\);

-- Location: FF_X45_Y1_N19
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X45_Y1_N22
\inst|count[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count[2]~2_combout\ = \inst|count\(2) $ (((\inst|count\(1) & \inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datac => \inst|count\(2),
	datad => \inst|count\(0),
	combout => \inst|count[2]~2_combout\);

-- Location: FF_X45_Y1_N23
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count[2]~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X45_Y1_N28
\inst|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count~0_combout\ = (\inst|count\(2) & (\inst|count\(3) $ (((\inst|count\(0) & \inst|count\(1)))))) # (!\inst|count\(2) & (\inst|count\(3) & ((\inst|count\(1)) # (!\inst|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(2),
	datab => \inst|count\(3),
	datac => \inst|count\(0),
	datad => \inst|count\(1),
	combout => \inst|count~0_combout\);

-- Location: LCCOMB_X45_Y1_N14
\inst|count[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count[3]~feeder_combout\ = \inst|count~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count~0_combout\,
	combout => \inst|count[3]~feeder_combout\);

-- Location: FF_X45_Y1_N15
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count[3]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: CLKCTRL_G15
\inst|count[3]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|count[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|count[3]~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y38_N26
\inst2|count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count[0]~3_combout\ = !\inst2|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|count\(0),
	combout => \inst2|count[0]~3_combout\);

-- Location: FF_X1_Y38_N27
\inst2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst2|count[0]~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(0));

-- Location: LCCOMB_X1_Y38_N28
\inst2|count[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count[2]~1_combout\ = \inst2|count\(2) $ (((\inst2|count\(0) & \inst2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(0),
	datac => \inst2|count\(2),
	datad => \inst2|count\(1),
	combout => \inst2|count[2]~1_combout\);

-- Location: FF_X1_Y38_N29
\inst2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst2|count[2]~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(2));

-- Location: LCCOMB_X1_Y38_N22
\inst2|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~2_combout\ = (\inst2|count\(1) & (((!\inst2|count\(0))))) # (!\inst2|count\(1) & (\inst2|count\(0) & ((\inst2|count\(2)) # (!\inst2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(3),
	datab => \inst2|count\(1),
	datac => \inst2|count\(0),
	datad => \inst2|count\(2),
	combout => \inst2|count~2_combout\);

-- Location: LCCOMB_X1_Y38_N20
\inst2|count[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count[1]~feeder_combout\ = \inst2|count~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count~2_combout\,
	combout => \inst2|count[1]~feeder_combout\);

-- Location: FF_X1_Y38_N21
\inst2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst2|count[1]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(1));

-- Location: LCCOMB_X1_Y38_N6
\inst2|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~0_combout\ = (\inst2|count\(0) & ((\inst2|count\(1) & (\inst2|count\(3) $ (\inst2|count\(2)))) # (!\inst2|count\(1) & (\inst2|count\(3) & \inst2|count\(2))))) # (!\inst2|count\(0) & (((\inst2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(0),
	datab => \inst2|count\(1),
	datac => \inst2|count\(3),
	datad => \inst2|count\(2),
	combout => \inst2|count~0_combout\);

-- Location: LCCOMB_X1_Y38_N30
\inst2|count[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count[3]~feeder_combout\ = \inst2|count~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count~0_combout\,
	combout => \inst2|count[3]~feeder_combout\);

-- Location: FF_X1_Y38_N31
\inst2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst2|count[3]~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(3));

-- Location: CLKCTRL_G0
\inst2|count[3]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|count[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|count[3]~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y12_N18
\inst3|count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|count[0]~3_combout\ = !\inst3|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|count\(0),
	combout => \inst3|count[0]~3_combout\);

-- Location: FF_X1_Y12_N19
\inst3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst3|count[0]~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count\(0));

-- Location: LCCOMB_X1_Y12_N16
\inst3|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|count~2_combout\ = (\inst3|count\(1) & (((!\inst3|count\(0))))) # (!\inst3|count\(1) & (\inst3|count\(0) & ((\inst3|count\(2)) # (!\inst3|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(2),
	datab => \inst3|count\(3),
	datac => \inst3|count\(1),
	datad => \inst3|count\(0),
	combout => \inst3|count~2_combout\);

-- Location: FF_X1_Y12_N17
\inst3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst3|count~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count\(1));

-- Location: LCCOMB_X1_Y12_N22
\inst3|count[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|count[2]~1_combout\ = \inst3|count\(2) $ (((\inst3|count\(1) & \inst3|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count\(1),
	datac => \inst3|count\(2),
	datad => \inst3|count\(0),
	combout => \inst3|count[2]~1_combout\);

-- Location: FF_X1_Y12_N23
\inst3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst3|count[2]~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count\(2));

-- Location: LCCOMB_X1_Y12_N8
\inst3|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|count~0_combout\ = (\inst3|count\(2) & (\inst3|count\(3) $ (((\inst3|count\(1) & \inst3|count\(0)))))) # (!\inst3|count\(2) & (\inst3|count\(3) & ((\inst3|count\(1)) # (!\inst3|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(2),
	datab => \inst3|count\(1),
	datac => \inst3|count\(3),
	datad => \inst3|count\(0),
	combout => \inst3|count~0_combout\);

-- Location: FF_X1_Y12_N9
\inst3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst3|count~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count\(3));

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

ww_C03 <= \C03~output_o\;

ww_C01 <= \C01~output_o\;

ww_C00 <= \C00~output_o\;

ww_C02 <= \C02~output_o\;

ww_C13 <= \C13~output_o\;

ww_C12 <= \C12~output_o\;

ww_C11 <= \C11~output_o\;

ww_C10 <= \C10~output_o\;

ww_C23 <= \C23~output_o\;

ww_C22 <= \C22~output_o\;

ww_C21 <= \C21~output_o\;

ww_C20 <= \C20~output_o\;
END structure;


