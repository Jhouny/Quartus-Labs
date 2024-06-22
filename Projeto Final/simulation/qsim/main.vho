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

-- DATE "06/21/2024 23:48:33"

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

ENTITY 	tmp_2 IS
    PORT (
	ADDRESS : OUT std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	CLK_2 : IN std_logic;
	StStop : IN std_logic
	);
END tmp_2;

-- Design Ports Information
-- ADDRESS[7]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[6]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[4]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[3]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- StStop	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_2	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tmp_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ADDRESS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLK_2 : std_logic;
SIGNAL ww_StStop : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK_2~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ADDRESS[7]~output_o\ : std_logic;
SIGNAL \ADDRESS[6]~output_o\ : std_logic;
SIGNAL \ADDRESS[5]~output_o\ : std_logic;
SIGNAL \ADDRESS[4]~output_o\ : std_logic;
SIGNAL \ADDRESS[3]~output_o\ : std_logic;
SIGNAL \ADDRESS[2]~output_o\ : std_logic;
SIGNAL \ADDRESS[1]~output_o\ : std_logic;
SIGNAL \ADDRESS[0]~output_o\ : std_logic;
SIGNAL \CLK_2~input_o\ : std_logic;
SIGNAL \CLK_2~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst11|count[0]~4_combout\ : std_logic;
SIGNAL \StStop~input_o\ : std_logic;
SIGNAL \inst11|count[1]~3_combout\ : std_logic;
SIGNAL \inst11|count[2]~2_combout\ : std_logic;
SIGNAL \inst11|count[3]~0_combout\ : std_logic;
SIGNAL \inst11|count[3]~1_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst6|count[0]~4_combout\ : std_logic;
SIGNAL \inst6|count[1]~3_combout\ : std_logic;
SIGNAL \inst6|count[2]~2_combout\ : std_logic;
SIGNAL \inst6|count[3]~0_combout\ : std_logic;
SIGNAL \inst6|count[3]~1_combout\ : std_logic;
SIGNAL \inst11|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_CLK_2~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ADDRESS <= ww_ADDRESS;
ww_CLK <= CLK;
ww_CLK_2 <= CLK_2;
ww_StStop <= StStop;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK_2~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_2~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_CLK_2~inputclkctrl_outclk\ <= NOT \CLK_2~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y47_N24
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

-- Location: IOOBUF_X26_Y39_N9
\ADDRESS[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|count\(3),
	devoe => ww_devoe,
	o => \ADDRESS[7]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\ADDRESS[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|count\(2),
	devoe => ww_devoe,
	o => \ADDRESS[6]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\ADDRESS[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|count\(1),
	devoe => ww_devoe,
	o => \ADDRESS[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\ADDRESS[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|count\(0),
	devoe => ww_devoe,
	o => \ADDRESS[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\ADDRESS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(3),
	devoe => ww_devoe,
	o => \ADDRESS[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\ADDRESS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(2),
	devoe => ww_devoe,
	o => \ADDRESS[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\ADDRESS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(1),
	devoe => ww_devoe,
	o => \ADDRESS[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\ADDRESS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(0),
	devoe => ww_devoe,
	o => \ADDRESS[0]~output_o\);

-- Location: IOIBUF_X31_Y0_N1
\CLK_2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_2,
	o => \CLK_2~input_o\);

-- Location: CLKCTRL_G18
\CLK_2~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_2~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_2~inputclkctrl_outclk\);

-- Location: LCCOMB_X26_Y38_N22
\inst11|count[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|count[0]~4_combout\ = !\inst11|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|count\(0),
	combout => \inst11|count[0]~4_combout\);

-- Location: IOIBUF_X26_Y39_N1
\StStop~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_StStop,
	o => \StStop~input_o\);

-- Location: FF_X26_Y38_N23
\inst11|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_2~inputclkctrl_outclk\,
	d => \inst11|count[0]~4_combout\,
	ena => \StStop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(0));

-- Location: LCCOMB_X26_Y38_N4
\inst11|count[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|count[1]~3_combout\ = \inst11|count\(1) $ (((\StStop~input_o\ & \inst11|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StStop~input_o\,
	datac => \inst11|count\(1),
	datad => \inst11|count\(0),
	combout => \inst11|count[1]~3_combout\);

-- Location: FF_X26_Y38_N5
\inst11|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_2~inputclkctrl_outclk\,
	d => \inst11|count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(1));

-- Location: LCCOMB_X26_Y38_N18
\inst11|count[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|count[2]~2_combout\ = \inst11|count\(2) $ (((\inst11|count\(0) & (\StStop~input_o\ & \inst11|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(0),
	datab => \StStop~input_o\,
	datac => \inst11|count\(2),
	datad => \inst11|count\(1),
	combout => \inst11|count[2]~2_combout\);

-- Location: FF_X26_Y38_N19
\inst11|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_2~inputclkctrl_outclk\,
	d => \inst11|count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(2));

-- Location: LCCOMB_X26_Y38_N24
\inst11|count[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|count[3]~0_combout\ = (\inst11|count\(0) & (\StStop~input_o\ & (\inst11|count\(1) & \inst11|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(0),
	datab => \StStop~input_o\,
	datac => \inst11|count\(1),
	datad => \inst11|count\(2),
	combout => \inst11|count[3]~0_combout\);

-- Location: LCCOMB_X26_Y38_N28
\inst11|count[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|count[3]~1_combout\ = \inst11|count\(3) $ (\inst11|count[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|count\(3),
	datad => \inst11|count[3]~0_combout\,
	combout => \inst11|count[3]~1_combout\);

-- Location: FF_X26_Y38_N29
\inst11|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_2~inputclkctrl_outclk\,
	d => \inst11|count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(3));

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X25_Y38_N22
\inst6|count[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[0]~4_combout\ = !\inst6|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|count\(0),
	combout => \inst6|count[0]~4_combout\);

-- Location: FF_X25_Y38_N23
\inst6|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count[0]~4_combout\,
	clrn => \ALT_INV_CLK_2~inputclkctrl_outclk\,
	ena => \StStop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(0));

-- Location: LCCOMB_X25_Y38_N4
\inst6|count[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[1]~3_combout\ = \inst6|count\(1) $ (((\StStop~input_o\ & \inst6|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StStop~input_o\,
	datac => \inst6|count\(1),
	datad => \inst6|count\(0),
	combout => \inst6|count[1]~3_combout\);

-- Location: FF_X25_Y38_N5
\inst6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count[1]~3_combout\,
	clrn => \ALT_INV_CLK_2~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(1));

-- Location: LCCOMB_X25_Y38_N18
\inst6|count[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[2]~2_combout\ = \inst6|count\(2) $ (((\StStop~input_o\ & (\inst6|count\(1) & \inst6|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StStop~input_o\,
	datab => \inst6|count\(1),
	datac => \inst6|count\(2),
	datad => \inst6|count\(0),
	combout => \inst6|count[2]~2_combout\);

-- Location: FF_X25_Y38_N19
\inst6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count[2]~2_combout\,
	clrn => \ALT_INV_CLK_2~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(2));

-- Location: LCCOMB_X25_Y38_N12
\inst6|count[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[3]~0_combout\ = (\inst6|count\(0) & (\StStop~input_o\ & (\inst6|count\(1) & \inst6|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(0),
	datab => \StStop~input_o\,
	datac => \inst6|count\(1),
	datad => \inst6|count\(2),
	combout => \inst6|count[3]~0_combout\);

-- Location: LCCOMB_X25_Y38_N28
\inst6|count[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[3]~1_combout\ = \inst6|count\(3) $ (\inst6|count[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|count\(3),
	datad => \inst6|count[3]~0_combout\,
	combout => \inst6|count[3]~1_combout\);

-- Location: FF_X25_Y38_N29
\inst6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count[3]~1_combout\,
	clrn => \ALT_INV_CLK_2~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(3));

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

ww_ADDRESS(7) <= \ADDRESS[7]~output_o\;

ww_ADDRESS(6) <= \ADDRESS[6]~output_o\;

ww_ADDRESS(5) <= \ADDRESS[5]~output_o\;

ww_ADDRESS(4) <= \ADDRESS[4]~output_o\;

ww_ADDRESS(3) <= \ADDRESS[3]~output_o\;

ww_ADDRESS(2) <= \ADDRESS[2]~output_o\;

ww_ADDRESS(1) <= \ADDRESS[1]~output_o\;

ww_ADDRESS(0) <= \ADDRESS[0]~output_o\;
END structure;


