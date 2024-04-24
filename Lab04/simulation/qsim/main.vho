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

-- DATE "04/23/2024 22:10:40"

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

ENTITY 	tmp IS
    PORT (
	A3 : OUT std_logic;
	clk : IN std_logic;
	RSST : IN std_logic;
	A2 : OUT std_logic;
	A1 : OUT std_logic;
	A0 : OUT std_logic;
	B3 : OUT std_logic;
	B2 : OUT std_logic;
	B1 : OUT std_logic;
	B0 : OUT std_logic
	);
END tmp;

-- Design Ports Information
-- A3	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSST	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tmp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_RSST : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|OUT_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RSST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \A3~output_o\ : std_logic;
SIGNAL \A2~output_o\ : std_logic;
SIGNAL \A1~output_o\ : std_logic;
SIGNAL \A0~output_o\ : std_logic;
SIGNAL \B3~output_o\ : std_logic;
SIGNAL \B2~output_o\ : std_logic;
SIGNAL \B1~output_o\ : std_logic;
SIGNAL \B0~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|count[0]~3_combout\ : std_logic;
SIGNAL \RSST~input_o\ : std_logic;
SIGNAL \RSST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|count~1_combout\ : std_logic;
SIGNAL \inst|count~2_combout\ : std_logic;
SIGNAL \inst|count[3]~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|OUT_CLK~0_combout\ : std_logic;
SIGNAL \inst|OUT_CLK~feeder_combout\ : std_logic;
SIGNAL \inst|OUT_CLK~q\ : std_logic;
SIGNAL \inst|OUT_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|count[0]~3_combout\ : std_logic;
SIGNAL \inst1|count~2_combout\ : std_logic;
SIGNAL \inst1|count[2]~1_combout\ : std_logic;
SIGNAL \inst1|count~0_combout\ : std_logic;
SIGNAL \inst|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RSST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_OUT_CLK~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

A3 <= ww_A3;
ww_clk <= clk;
ww_RSST <= RSST;
A2 <= ww_A2;
A1 <= ww_A1;
A0 <= ww_A0;
B3 <= ww_B3;
B2 <= ww_B2;
B1 <= ww_B1;
B0 <= ww_B0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst|OUT_CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|OUT_CLK~q\);

\RSST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RSST~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_RSST~inputclkctrl_outclk\ <= NOT \RSST~inputclkctrl_outclk\;
\inst|ALT_INV_OUT_CLK~clkctrl_outclk\ <= NOT \inst|OUT_CLK~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y45_N20
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

-- Location: IOOBUF_X40_Y0_N2
\A3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|count\(3),
	devoe => ww_devoe,
	o => \A3~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\A2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|count\(2),
	devoe => ww_devoe,
	o => \A2~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\A1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|count\(1),
	devoe => ww_devoe,
	o => \A1~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\A0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|count\(0),
	devoe => ww_devoe,
	o => \A0~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\B3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|count\(3),
	devoe => ww_devoe,
	o => \B3~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\B2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|count\(2),
	devoe => ww_devoe,
	o => \B2~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\B1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|count\(1),
	devoe => ww_devoe,
	o => \B1~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\B0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|count\(0),
	devoe => ww_devoe,
	o => \B0~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X45_Y1_N24
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

-- Location: IOIBUF_X31_Y0_N1
\RSST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RSST,
	o => \RSST~input_o\);

-- Location: CLKCTRL_G18
\RSST~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RSST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RSST~inputclkctrl_outclk\);

-- Location: FF_X45_Y1_N25
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[0]~3_combout\,
	clrn => \ALT_INV_RSST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X45_Y1_N22
\inst|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count~1_combout\ = (\inst|count\(0) & ((\inst|count\(2) & (\inst|count\(3) & !\inst|count\(1))) # (!\inst|count\(2) & ((\inst|count\(1)))))) # (!\inst|count\(0) & (((\inst|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(3),
	datac => \inst|count\(2),
	datad => \inst|count\(1),
	combout => \inst|count~1_combout\);

-- Location: FF_X45_Y1_N23
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count~1_combout\,
	clrn => \ALT_INV_RSST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X45_Y1_N0
\inst|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count~2_combout\ = (\inst|count\(0) & (!\inst|count\(1) & ((\inst|count\(3)) # (!\inst|count\(2))))) # (!\inst|count\(0) & (((\inst|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(3),
	datac => \inst|count\(1),
	datad => \inst|count\(2),
	combout => \inst|count~2_combout\);

-- Location: FF_X45_Y1_N1
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count~2_combout\,
	clrn => \ALT_INV_RSST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X45_Y1_N30
\inst|count[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count[3]~0_combout\ = \inst|count\(3) $ (((\inst|count\(0) & (\inst|count\(1) & \inst|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(1),
	datac => \inst|count\(3),
	datad => \inst|count\(2),
	combout => \inst|count[3]~0_combout\);

-- Location: FF_X45_Y1_N31
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[3]~0_combout\,
	clrn => \ALT_INV_RSST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X45_Y1_N2
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|count\(3) & (\inst|count\(0) & (\inst|count\(2) & !\inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(0),
	datac => \inst|count\(2),
	datad => \inst|count\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y1_N6
\inst|OUT_CLK~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|OUT_CLK~0_combout\ = (\RSST~input_o\ & (\inst|OUT_CLK~q\)) # (!\RSST~input_o\ & ((!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RSST~input_o\,
	datac => \inst|OUT_CLK~q\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|OUT_CLK~0_combout\);

-- Location: LCCOMB_X45_Y1_N28
\inst|OUT_CLK~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|OUT_CLK~feeder_combout\ = \inst|OUT_CLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OUT_CLK~0_combout\,
	combout => \inst|OUT_CLK~feeder_combout\);

-- Location: FF_X45_Y1_N29
\inst|OUT_CLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|OUT_CLK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OUT_CLK~q\);

-- Location: CLKCTRL_G17
\inst|OUT_CLK~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|OUT_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|OUT_CLK~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y1_N18
\inst1|count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|count[0]~3_combout\ = !\inst1|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|count\(0),
	combout => \inst1|count[0]~3_combout\);

-- Location: FF_X15_Y1_N19
\inst1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_OUT_CLK~clkctrl_outclk\,
	d => \inst1|count[0]~3_combout\,
	clrn => \ALT_INV_RSST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(0));

-- Location: LCCOMB_X15_Y1_N12
\inst1|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|count~2_combout\ = (\inst1|count\(1) & (((!\inst1|count\(0))))) # (!\inst1|count\(1) & (\inst1|count\(0) & ((\inst1|count\(2)) # (!\inst1|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(2),
	datab => \inst1|count\(3),
	datac => \inst1|count\(1),
	datad => \inst1|count\(0),
	combout => \inst1|count~2_combout\);

-- Location: FF_X15_Y1_N13
\inst1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_OUT_CLK~clkctrl_outclk\,
	d => \inst1|count~2_combout\,
	clrn => \ALT_INV_RSST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(1));

-- Location: LCCOMB_X15_Y1_N22
\inst1|count[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|count[2]~1_combout\ = \inst1|count\(2) $ (((\inst1|count\(0) & \inst1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(0),
	datac => \inst1|count\(2),
	datad => \inst1|count\(1),
	combout => \inst1|count[2]~1_combout\);

-- Location: FF_X15_Y1_N23
\inst1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_OUT_CLK~clkctrl_outclk\,
	d => \inst1|count[2]~1_combout\,
	clrn => \ALT_INV_RSST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(2));

-- Location: LCCOMB_X15_Y1_N16
\inst1|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|count~0_combout\ = (\inst1|count\(2) & (\inst1|count\(3) $ (((\inst1|count\(0) & \inst1|count\(1)))))) # (!\inst1|count\(2) & (\inst1|count\(3) & ((\inst1|count\(1)) # (!\inst1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(2),
	datab => \inst1|count\(0),
	datac => \inst1|count\(3),
	datad => \inst1|count\(1),
	combout => \inst1|count~0_combout\);

-- Location: FF_X15_Y1_N17
\inst1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_OUT_CLK~clkctrl_outclk\,
	d => \inst1|count~0_combout\,
	clrn => \ALT_INV_RSST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(3));

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

ww_A3 <= \A3~output_o\;

ww_A2 <= \A2~output_o\;

ww_A1 <= \A1~output_o\;

ww_A0 <= \A0~output_o\;

ww_B3 <= \B3~output_o\;

ww_B2 <= \B2~output_o\;

ww_B1 <= \B1~output_o\;

ww_B0 <= \B0~output_o\;
END structure;


