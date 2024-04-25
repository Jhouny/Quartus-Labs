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

-- DATE "04/24/2024 21:47:30"

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

ENTITY 	main_VHDL IS
    PORT (
	Q : OUT std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic
	);
END main_VHDL;

-- Design Ports Information
-- Q[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main_VHDL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|state.s2~q\ : std_logic;
SIGNAL \inst|state.s3~feeder_combout\ : std_logic;
SIGNAL \inst|state.s3~q\ : std_logic;
SIGNAL \inst|state.s4~feeder_combout\ : std_logic;
SIGNAL \inst|state.s4~q\ : std_logic;
SIGNAL \inst|state.s5~q\ : std_logic;
SIGNAL \inst|state.s6~feeder_combout\ : std_logic;
SIGNAL \inst|state.s6~q\ : std_logic;
SIGNAL \inst|state.s7~feeder_combout\ : std_logic;
SIGNAL \inst|state.s7~q\ : std_logic;
SIGNAL \inst|state.s8~q\ : std_logic;
SIGNAL \inst|state.s9~feeder_combout\ : std_logic;
SIGNAL \inst|state.s9~q\ : std_logic;
SIGNAL \inst|state.s10~q\ : std_logic;
SIGNAL \inst|state.s11~q\ : std_logic;
SIGNAL \inst|state.s12~q\ : std_logic;
SIGNAL \inst|state.s13~q\ : std_logic;
SIGNAL \inst|state.s14~feeder_combout\ : std_logic;
SIGNAL \inst|state.s14~q\ : std_logic;
SIGNAL \inst|state.s15~feeder_combout\ : std_logic;
SIGNAL \inst|state.s15~q\ : std_logic;
SIGNAL \inst|state.s0~0_combout\ : std_logic;
SIGNAL \inst|state.s0~q\ : std_logic;
SIGNAL \inst|state.s1~0_combout\ : std_logic;
SIGNAL \inst|state.s1~q\ : std_logic;
SIGNAL \inst|WideOr0~1_combout\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst|WideOr0~combout\ : std_logic;
SIGNAL \inst|WideOr0~2_combout\ : std_logic;
SIGNAL \inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~combout\ : std_logic;
SIGNAL \inst|WideOr2~1_combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~combout\ : std_logic;
SIGNAL \inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|WideOr3~combout\ : std_logic;
SIGNAL \inst|Q\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Q <= ww_Q;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X60_Y54_N9
\Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

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

-- Location: FF_X61_Y53_N17
\inst|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|state.s1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s2~q\);

-- Location: LCCOMB_X61_Y53_N10
\inst|state.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state.s3~feeder_combout\ = \inst|state.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.s2~q\,
	combout => \inst|state.s3~feeder_combout\);

-- Location: FF_X61_Y53_N11
\inst|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|state.s3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s3~q\);

-- Location: LCCOMB_X61_Y53_N2
\inst|state.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state.s4~feeder_combout\ = \inst|state.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state.s3~q\,
	combout => \inst|state.s4~feeder_combout\);

-- Location: FF_X61_Y53_N3
\inst|state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|state.s4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s4~q\);

-- Location: FF_X61_Y53_N19
\inst|state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|state.s4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s5~q\);

-- Location: LCCOMB_X62_Y53_N28
\inst|state.s6~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state.s6~feeder_combout\ = \inst|state.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state.s5~q\,
	combout => \inst|state.s6~feeder_combout\);

-- Location: FF_X62_Y53_N29
\inst|state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|state.s6~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s6~q\);

-- Location: LCCOMB_X61_Y53_N24
\inst|state.s7~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state.s7~feeder_combout\ = \inst|state.s6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state.s6~q\,
	combout => \inst|state.s7~feeder_combout\);

-- Location: FF_X61_Y53_N25
\inst|state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|state.s7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s7~q\);

-- Location: FF_X61_Y53_N31
\inst|state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|state.s7~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s8~q\);

-- Location: LCCOMB_X62_Y53_N16
\inst|state.s9~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state.s9~feeder_combout\ = \inst|state.s8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state.s8~q\,
	combout => \inst|state.s9~feeder_combout\);

-- Location: FF_X62_Y53_N17
\inst|state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|state.s9~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s9~q\);

-- Location: FF_X61_Y53_N5
\inst|state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|state.s9~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s10~q\);

-- Location: FF_X61_Y53_N21
\inst|state.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|state.s10~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s11~q\);

-- Location: FF_X61_Y53_N1
\inst|state.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|state.s11~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s12~q\);

-- Location: FF_X61_Y53_N29
\inst|state.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|state.s12~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s13~q\);

-- Location: LCCOMB_X62_Y53_N18
\inst|state.s14~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state.s14~feeder_combout\ = \inst|state.s13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.s13~q\,
	combout => \inst|state.s14~feeder_combout\);

-- Location: FF_X62_Y53_N19
\inst|state.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|state.s14~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s14~q\);

-- Location: LCCOMB_X62_Y53_N26
\inst|state.s15~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state.s15~feeder_combout\ = \inst|state.s14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state.s14~q\,
	combout => \inst|state.s15~feeder_combout\);

-- Location: FF_X62_Y53_N27
\inst|state.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|state.s15~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s15~q\);

-- Location: LCCOMB_X61_Y53_N8
\inst|state.s0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state.s0~0_combout\ = !\inst|state.s15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state.s15~q\,
	combout => \inst|state.s0~0_combout\);

-- Location: FF_X61_Y53_N9
\inst|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|state.s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s0~q\);

-- Location: LCCOMB_X61_Y53_N12
\inst|state.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state.s1~0_combout\ = !\inst|state.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state.s0~q\,
	combout => \inst|state.s1~0_combout\);

-- Location: FF_X61_Y53_N13
\inst|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|state.s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.s1~q\);

-- Location: LCCOMB_X61_Y53_N4
\inst|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~1_combout\ = (\inst|state.s11~q\) # (\inst|state.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s11~q\,
	datad => \inst|state.s4~q\,
	combout => \inst|WideOr0~1_combout\);

-- Location: LCCOMB_X61_Y53_N0
\inst|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (\inst|state.s5~q\) # ((\inst|state.s2~q\) # ((\inst|state.s12~q\) # (\inst|state.s7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s5~q\,
	datab => \inst|state.s2~q\,
	datac => \inst|state.s12~q\,
	datad => \inst|state.s7~q\,
	combout => \inst|WideOr0~0_combout\);

-- Location: LCCOMB_X61_Y53_N6
\inst|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~combout\ = (!\inst|state.s1~q\ & (\inst|state.s0~q\ & (!\inst|WideOr0~1_combout\ & !\inst|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s1~q\,
	datab => \inst|state.s0~q\,
	datac => \inst|WideOr0~1_combout\,
	datad => \inst|WideOr0~0_combout\,
	combout => \inst|WideOr0~combout\);

-- Location: FF_X61_Y53_N7
\inst|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(3));

-- Location: LCCOMB_X61_Y53_N20
\inst|WideOr0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~2_combout\ = (!\inst|state.s1~q\ & (!\inst|state.s4~q\ & (!\inst|state.s11~q\ & \inst|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s1~q\,
	datab => \inst|state.s4~q\,
	datac => \inst|state.s11~q\,
	datad => \inst|state.s0~q\,
	combout => \inst|WideOr0~2_combout\);

-- Location: LCCOMB_X61_Y53_N28
\inst|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr1~0_combout\ = (\inst|state.s3~q\) # ((\inst|state.s8~q\) # ((\inst|state.s13~q\) # (\inst|state.s6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s3~q\,
	datab => \inst|state.s8~q\,
	datac => \inst|state.s13~q\,
	datad => \inst|state.s6~q\,
	combout => \inst|WideOr1~0_combout\);

-- Location: LCCOMB_X61_Y53_N14
\inst|WideOr1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr1~combout\ = (\inst|WideOr0~2_combout\ & !\inst|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr0~2_combout\,
	datad => \inst|WideOr1~0_combout\,
	combout => \inst|WideOr1~combout\);

-- Location: FF_X61_Y53_N15
\inst|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(2));

-- Location: LCCOMB_X61_Y53_N30
\inst|WideOr2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr2~1_combout\ = (!\inst|state.s10~q\ & (!\inst|state.s7~q\ & (!\inst|state.s8~q\ & \inst|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s10~q\,
	datab => \inst|state.s7~q\,
	datac => \inst|state.s8~q\,
	datad => \inst|state.s0~q\,
	combout => \inst|WideOr2~1_combout\);

-- Location: LCCOMB_X61_Y53_N16
\inst|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (\inst|state.s12~q\) # ((\inst|state.s13~q\) # ((\inst|state.s1~q\) # (\inst|state.s15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s12~q\,
	datab => \inst|state.s13~q\,
	datac => \inst|state.s1~q\,
	datad => \inst|state.s15~q\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X61_Y53_N22
\inst|WideOr2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr2~combout\ = (\inst|WideOr2~0_combout\) # (!\inst|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr2~1_combout\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst|WideOr2~combout\);

-- Location: FF_X61_Y53_N23
\inst|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(1));

-- Location: LCCOMB_X61_Y53_N18
\inst|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~0_combout\ = (\inst|state.s3~q\) # ((\inst|state.s4~q\) # ((\inst|state.s5~q\) # (\inst|state.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.s3~q\,
	datab => \inst|state.s4~q\,
	datac => \inst|state.s5~q\,
	datad => \inst|state.s9~q\,
	combout => \inst|WideOr3~0_combout\);

-- Location: LCCOMB_X61_Y53_N26
\inst|WideOr3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~combout\ = (\inst|WideOr2~1_combout\ & !\inst|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr2~1_combout\,
	datad => \inst|WideOr3~0_combout\,
	combout => \inst|WideOr3~combout\);

-- Location: FF_X61_Y53_N27
\inst|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(0));

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

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;
END structure;


