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

-- DATE "04/21/2024 17:38:22"

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

ENTITY 	Main IS
    PORT (
	S : OUT std_logic;
	CLK : IN std_logic;
	LOAD : IN std_logic;
	D7 : IN std_logic;
	D6 : IN std_logic;
	D5 : IN std_logic;
	D4 : IN std_logic;
	D3 : IN std_logic;
	D2 : IN std_logic;
	D1 : IN std_logic;
	D0 : IN std_logic
	);
END Main;

-- Design Ports Information
-- S	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_LOAD : std_logic;
SIGNAL ww_D7 : std_logic;
SIGNAL ww_D6 : std_logic;
SIGNAL ww_D5 : std_logic;
SIGNAL ww_D4 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \LOAD~input_o\ : std_logic;
SIGNAL \D7~input_o\ : std_logic;
SIGNAL \D6~input_o\ : std_logic;
SIGNAL \D5~input_o\ : std_logic;
SIGNAL \D4~input_o\ : std_logic;
SIGNAL \D3~input_o\ : std_logic;
SIGNAL \D2~input_o\ : std_logic;
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \inst|dff0~feeder_combout\ : std_logic;
SIGNAL \inst|dff0~q\ : std_logic;
SIGNAL \inst|ld1|Dout~0_combout\ : std_logic;
SIGNAL \inst|dff1~q\ : std_logic;
SIGNAL \inst|ld2|Dout~0_combout\ : std_logic;
SIGNAL \inst|dff2~q\ : std_logic;
SIGNAL \inst|ld3|Dout~0_combout\ : std_logic;
SIGNAL \inst|dff3~q\ : std_logic;
SIGNAL \inst|ld4|Dout~0_combout\ : std_logic;
SIGNAL \inst|dff4~q\ : std_logic;
SIGNAL \inst|ld5|Dout~0_combout\ : std_logic;
SIGNAL \inst|dff5~q\ : std_logic;
SIGNAL \inst|ld6|Dout~0_combout\ : std_logic;
SIGNAL \inst|dff6~q\ : std_logic;
SIGNAL \inst|ld7|Dout~0_combout\ : std_logic;
SIGNAL \inst|dff7~q\ : std_logic;
SIGNAL \inst|S~feeder_combout\ : std_logic;
SIGNAL \inst|S~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

S <= ww_S;
ww_CLK <= CLK;
ww_LOAD <= LOAD;
ww_D7 <= D7;
ww_D6 <= D6;
ww_D5 <= D5;
ww_D4 <= D4;
ww_D3 <= D3;
ww_D2 <= D2;
ww_D1 <= D1;
ww_D0 <= D0;
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

-- Location: IOOBUF_X24_Y39_N9
\S~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|S~q\,
	devoe => ww_devoe,
	o => \S~output_o\);

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

-- Location: IOIBUF_X26_Y39_N8
\LOAD~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOAD,
	o => \LOAD~input_o\);

-- Location: IOIBUF_X26_Y39_N29
\D7~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D7,
	o => \D7~input_o\);

-- Location: IOIBUF_X26_Y39_N15
\D6~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D6,
	o => \D6~input_o\);

-- Location: IOIBUF_X24_Y39_N29
\D5~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D5,
	o => \D5~input_o\);

-- Location: IOIBUF_X24_Y39_N1
\D4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4,
	o => \D4~input_o\);

-- Location: IOIBUF_X24_Y39_N22
\D3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3,
	o => \D3~input_o\);

-- Location: IOIBUF_X24_Y39_N15
\D2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2,
	o => \D2~input_o\);

-- Location: IOIBUF_X26_Y39_N1
\D1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1,
	o => \D1~input_o\);

-- Location: IOIBUF_X26_Y39_N22
\D0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0,
	o => \D0~input_o\);

-- Location: LCCOMB_X25_Y38_N20
\inst|dff0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dff0~feeder_combout\ = \D0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D0~input_o\,
	combout => \inst|dff0~feeder_combout\);

-- Location: FF_X25_Y38_N21
\inst|dff0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|dff0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff0~q\);

-- Location: LCCOMB_X25_Y38_N18
\inst|ld1|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld1|Dout~0_combout\ = (\LOAD~input_o\ & (\D1~input_o\)) # (!\LOAD~input_o\ & ((\inst|dff0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LOAD~input_o\,
	datac => \D1~input_o\,
	datad => \inst|dff0~q\,
	combout => \inst|ld1|Dout~0_combout\);

-- Location: FF_X25_Y38_N19
\inst|dff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ld1|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff1~q\);

-- Location: LCCOMB_X25_Y38_N28
\inst|ld2|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld2|Dout~0_combout\ = (\LOAD~input_o\ & (\D2~input_o\)) # (!\LOAD~input_o\ & ((\inst|dff1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LOAD~input_o\,
	datac => \D2~input_o\,
	datad => \inst|dff1~q\,
	combout => \inst|ld2|Dout~0_combout\);

-- Location: FF_X25_Y38_N29
\inst|dff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ld2|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff2~q\);

-- Location: LCCOMB_X25_Y38_N2
\inst|ld3|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld3|Dout~0_combout\ = (\LOAD~input_o\ & (\D3~input_o\)) # (!\LOAD~input_o\ & ((\inst|dff2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LOAD~input_o\,
	datac => \D3~input_o\,
	datad => \inst|dff2~q\,
	combout => \inst|ld3|Dout~0_combout\);

-- Location: FF_X25_Y38_N3
\inst|dff3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ld3|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff3~q\);

-- Location: LCCOMB_X25_Y38_N24
\inst|ld4|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld4|Dout~0_combout\ = (\LOAD~input_o\ & (\D4~input_o\)) # (!\LOAD~input_o\ & ((\inst|dff3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LOAD~input_o\,
	datac => \D4~input_o\,
	datad => \inst|dff3~q\,
	combout => \inst|ld4|Dout~0_combout\);

-- Location: FF_X25_Y38_N25
\inst|dff4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ld4|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff4~q\);

-- Location: LCCOMB_X25_Y38_N6
\inst|ld5|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld5|Dout~0_combout\ = (\LOAD~input_o\ & (\D5~input_o\)) # (!\LOAD~input_o\ & ((\inst|dff4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LOAD~input_o\,
	datac => \D5~input_o\,
	datad => \inst|dff4~q\,
	combout => \inst|ld5|Dout~0_combout\);

-- Location: FF_X25_Y38_N7
\inst|dff5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ld5|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff5~q\);

-- Location: LCCOMB_X25_Y38_N12
\inst|ld6|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld6|Dout~0_combout\ = (\LOAD~input_o\ & (\D6~input_o\)) # (!\LOAD~input_o\ & ((\inst|dff5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LOAD~input_o\,
	datac => \D6~input_o\,
	datad => \inst|dff5~q\,
	combout => \inst|ld6|Dout~0_combout\);

-- Location: FF_X25_Y38_N13
\inst|dff6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ld6|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff6~q\);

-- Location: LCCOMB_X25_Y38_N10
\inst|ld7|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld7|Dout~0_combout\ = (\LOAD~input_o\ & (\D7~input_o\)) # (!\LOAD~input_o\ & ((\inst|dff6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LOAD~input_o\,
	datac => \D7~input_o\,
	datad => \inst|dff6~q\,
	combout => \inst|ld7|Dout~0_combout\);

-- Location: FF_X25_Y38_N11
\inst|dff7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ld7|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff7~q\);

-- Location: LCCOMB_X25_Y38_N4
\inst|S~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|S~feeder_combout\ = \inst|dff7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dff7~q\,
	combout => \inst|S~feeder_combout\);

-- Location: FF_X25_Y38_N5
\inst|S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|S~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|S~q\);

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

ww_S <= \S~output_o\;
END structure;


