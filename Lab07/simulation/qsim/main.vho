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

-- DATE "06/04/2024 02:18:41"

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
	q : OUT std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic
	);
END main;

-- Design Ports Information
-- q[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|count[0]~8_combout\ : std_logic;
SIGNAL \inst|add|add1|add4|S~combout\ : std_logic;
SIGNAL \inst|count~2_combout\ : std_logic;
SIGNAL \inst|add|add2|add1|S~combout\ : std_logic;
SIGNAL \inst|count~3_combout\ : std_logic;
SIGNAL \inst|add|add2|add2|S~combout\ : std_logic;
SIGNAL \inst|count~4_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|count~5_combout\ : std_logic;
SIGNAL \inst|add|add1|add3|S~combout\ : std_logic;
SIGNAL \inst|count~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|count~6_combout\ : std_logic;
SIGNAL \inst|count~7_combout\ : std_logic;
SIGNAL \inst|add|add1|add2|S~combout\ : std_logic;
SIGNAL \inst|count~0_combout\ : std_logic;
SIGNAL \inst4|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

q <= ww_q;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|count\(7) & \inst|count\(6) & \inst|count\(5) & \inst|count\(4) & \inst|count\(3) & \inst|count\(2) & \inst|count\(1) & \inst|count\(0));

\inst4|altsyncram_component|auto_generated|q_a\(0) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst4|altsyncram_component|auto_generated|q_a\(1) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst4|altsyncram_component|auto_generated|q_a\(2) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst4|altsyncram_component|auto_generated|q_a\(3) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst4|altsyncram_component|auto_generated|q_a\(4) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst4|altsyncram_component|auto_generated|q_a\(5) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst4|altsyncram_component|auto_generated|q_a\(6) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst4|altsyncram_component|auto_generated|q_a\(7) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
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

-- Location: IOOBUF_X51_Y54_N2
\q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

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

-- Location: LCCOMB_X52_Y51_N8
\inst|count[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count[0]~8_combout\ = !\inst|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(0),
	combout => \inst|count[0]~8_combout\);

-- Location: FF_X52_Y51_N9
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X52_Y51_N12
\inst|add|add1|add4|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|add|add1|add4|S~combout\ = \inst|count\(3) $ (((\inst|count\(1) & (\inst|count\(0) & \inst|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(3),
	datac => \inst|count\(0),
	datad => \inst|count\(2),
	combout => \inst|add|add1|add4|S~combout\);

-- Location: LCCOMB_X52_Y51_N14
\inst|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count~2_combout\ = (\inst|add|add1|add4|S~combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|count\(6))) # (!\inst|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datab => \inst|add|add1|add4|S~combout\,
	datac => \inst|count\(6),
	datad => \inst|Equal0~1_combout\,
	combout => \inst|count~2_combout\);

-- Location: FF_X52_Y51_N15
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X52_Y51_N10
\inst|add|add2|add1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|add|add2|add1|S~combout\ = \inst|count\(4) $ (((\inst|count\(3) & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(4),
	datac => \inst|count\(3),
	datad => \inst|Equal0~0_combout\,
	combout => \inst|add|add2|add1|S~combout\);

-- Location: LCCOMB_X52_Y51_N20
\inst|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count~3_combout\ = (\inst|add|add2|add1|S~combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|count\(6))) # (!\inst|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datab => \inst|count\(6),
	datac => \inst|Equal0~1_combout\,
	datad => \inst|add|add2|add1|S~combout\,
	combout => \inst|count~3_combout\);

-- Location: FF_X52_Y51_N21
\inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(4));

-- Location: LCCOMB_X52_Y51_N24
\inst|add|add2|add2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|add|add2|add2|S~combout\ = \inst|count\(5) $ (((\inst|count\(3) & (\inst|count\(4) & \inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(5),
	datab => \inst|count\(3),
	datac => \inst|count\(4),
	datad => \inst|Equal0~0_combout\,
	combout => \inst|add|add2|add2|S~combout\);

-- Location: LCCOMB_X52_Y51_N26
\inst|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count~4_combout\ = (\inst|add|add2|add2|S~combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|count\(6))) # (!\inst|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datab => \inst|count\(6),
	datac => \inst|Equal0~1_combout\,
	datad => \inst|add|add2|add2|S~combout\,
	combout => \inst|count~4_combout\);

-- Location: FF_X52_Y51_N27
\inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(5));

-- Location: LCCOMB_X52_Y51_N0
\inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|count\(4) & (\inst|count\(3) & (\inst|count\(5) & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(4),
	datab => \inst|count\(3),
	datac => \inst|count\(5),
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y51_N28
\inst|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count~5_combout\ = \inst|count\(6) $ (\inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(6),
	datad => \inst|Equal0~1_combout\,
	combout => \inst|count~5_combout\);

-- Location: FF_X52_Y51_N29
\inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(6));

-- Location: LCCOMB_X52_Y51_N30
\inst|add|add1|add3|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|add|add1|add3|S~combout\ = \inst|count\(2) $ (((\inst|count\(0) & \inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(2),
	datac => \inst|count\(0),
	datad => \inst|count\(1),
	combout => \inst|add|add1|add3|S~combout\);

-- Location: LCCOMB_X52_Y51_N16
\inst|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count~1_combout\ = (\inst|add|add1|add3|S~combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|count\(6))) # (!\inst|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datab => \inst|count\(6),
	datac => \inst|add|add1|add3|S~combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|count~1_combout\);

-- Location: FF_X52_Y51_N17
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X52_Y51_N18
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|count\(1) & (\inst|count\(0) & \inst|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datac => \inst|count\(0),
	datad => \inst|count\(2),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y51_N2
\inst|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count~6_combout\ = ((!\inst|count\(6)) # (!\inst|count\(4))) # (!\inst|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(5),
	datac => \inst|count\(4),
	datad => \inst|count\(6),
	combout => \inst|count~6_combout\);

-- Location: LCCOMB_X52_Y51_N6
\inst|count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count~7_combout\ = \inst|count\(7) $ (((\inst|Equal0~0_combout\ & (\inst|count\(3) & !\inst|count~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|count\(3),
	datac => \inst|count\(7),
	datad => \inst|count~6_combout\,
	combout => \inst|count~7_combout\);

-- Location: FF_X52_Y51_N7
\inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(7));

-- Location: LCCOMB_X52_Y51_N4
\inst|add|add1|add2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|add|add1|add2|S~combout\ = \inst|count\(0) $ (\inst|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(0),
	datad => \inst|count\(1),
	combout => \inst|add|add1|add2|S~combout\);

-- Location: LCCOMB_X52_Y51_N22
\inst|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count~0_combout\ = (\inst|add|add1|add2|S~combout\ & (((!\inst|Equal0~1_combout\) # (!\inst|count\(6))) # (!\inst|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datab => \inst|count\(6),
	datac => \inst|add|add1|add2|S~combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|count~0_combout\);

-- Location: FF_X52_Y51_N23
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: M9K_X53_Y51_N0
\inst4|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000100008000300010000500018000700020000900028000B00030000D00038000F00040001100048001300050001500058001700060001900068001B00",
	mem_init1 => X"070001D00078001F000800021000880023000900025000980027000A00029000A8002B000B0002D000B8002F000C00031000C80033000D00035000D80037000E00039000E8003B000F0003D000F8003F00100004100108004300110004500118004700120004900128004B00130004D00138004F00140005100148005300150005500158005700160005900168005B00170005D00178005F001800061001880063001900065001980067001A00069001A8006B001B0006D001B8006F001C00071001C80073001D00075001D80077001E00079001E8007B001F0007D001F8007F00200008100208008300210008500218008700220008900228008B00230008D0",
	mem_init0 => X"0238008F00240009100248009300250009500258009700260009900268009B00270009D00278009F0028000A10028800A30029000A50029800A7002A000A9002A800AB002B000AD002B800AF002C000B1002C800B3002D000B5002D800B7002E000B9002E800BB002F000BD002F800BF0030000C10030800C30031000C50031800C70032000C90032800CB0033000CD0033800CF0034000D10034800D30035000D50035800D70036000D90036800DB0037000DD0037800DF0038000E10038800E30039000E50039800E7003A000E9003A800EB003B000ED003B800EF003C000F1003C800F3003D000F5003D800F7003E000F9003E800FB003F000FD003F800FF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM_256_8_DECRESCENTE.hex",
	init_file_layout => "port_a",
	logical_ram_name => "ROM_256_8_DECRESCENTE:inst4|altsyncram:altsyncram_component|altsyncram_cis3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
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
	clk0 => \CLK~inputclkctrl_outclk\,
	portaaddr => \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

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

ww_q(7) <= \q[7]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(0) <= \q[0]~output_o\;
END structure;


