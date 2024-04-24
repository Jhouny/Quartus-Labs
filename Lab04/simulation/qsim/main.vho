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

-- DATE "04/24/2024 11:13:35"

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
	STATE : OUT std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	RA53 : OUT std_logic;
	RA52 : OUT std_logic;
	RA51 : OUT std_logic;
	RA50 : OUT std_logic;
	RA32 : OUT std_logic;
	RA31 : OUT std_logic;
	RA30 : OUT std_logic;
	RA33 : OUT std_logic;
	RA43 : OUT std_logic;
	RA42 : OUT std_logic;
	RA41 : OUT std_logic;
	RA40 : OUT std_logic;
	RA23 : OUT std_logic;
	RA22 : OUT std_logic;
	RA21 : OUT std_logic;
	RA20 : OUT std_logic;
	RA13 : OUT std_logic;
	RA12 : OUT std_logic;
	RA11 : OUT std_logic;
	RA10 : OUT std_logic;
	RA03 : OUT std_logic;
	RA02 : OUT std_logic;
	RA01 : OUT std_logic;
	RA00 : OUT std_logic
	);
END tmp;

-- Design Ports Information
-- STATE	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA53	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA52	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA51	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA50	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA32	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA31	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA30	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA33	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA43	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA42	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA41	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA40	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA23	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA22	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA21	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA20	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA13	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA12	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA11	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA10	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA03	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA02	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA01	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA00	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_STATE : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_RA53 : std_logic;
SIGNAL ww_RA52 : std_logic;
SIGNAL ww_RA51 : std_logic;
SIGNAL ww_RA50 : std_logic;
SIGNAL ww_RA32 : std_logic;
SIGNAL ww_RA31 : std_logic;
SIGNAL ww_RA30 : std_logic;
SIGNAL ww_RA33 : std_logic;
SIGNAL ww_RA43 : std_logic;
SIGNAL ww_RA42 : std_logic;
SIGNAL ww_RA41 : std_logic;
SIGNAL ww_RA40 : std_logic;
SIGNAL ww_RA23 : std_logic;
SIGNAL ww_RA22 : std_logic;
SIGNAL ww_RA21 : std_logic;
SIGNAL ww_RA20 : std_logic;
SIGNAL ww_RA13 : std_logic;
SIGNAL ww_RA12 : std_logic;
SIGNAL ww_RA11 : std_logic;
SIGNAL ww_RA10 : std_logic;
SIGNAL ww_RA03 : std_logic;
SIGNAL ww_RA02 : std_logic;
SIGNAL ww_RA01 : std_logic;
SIGNAL ww_RA00 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|OUT_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|count[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|count[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|count[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|count[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \STATE~output_o\ : std_logic;
SIGNAL \RA53~output_o\ : std_logic;
SIGNAL \RA52~output_o\ : std_logic;
SIGNAL \RA51~output_o\ : std_logic;
SIGNAL \RA50~output_o\ : std_logic;
SIGNAL \RA32~output_o\ : std_logic;
SIGNAL \RA31~output_o\ : std_logic;
SIGNAL \RA30~output_o\ : std_logic;
SIGNAL \RA33~output_o\ : std_logic;
SIGNAL \RA43~output_o\ : std_logic;
SIGNAL \RA42~output_o\ : std_logic;
SIGNAL \RA41~output_o\ : std_logic;
SIGNAL \RA40~output_o\ : std_logic;
SIGNAL \RA23~output_o\ : std_logic;
SIGNAL \RA22~output_o\ : std_logic;
SIGNAL \RA21~output_o\ : std_logic;
SIGNAL \RA20~output_o\ : std_logic;
SIGNAL \RA13~output_o\ : std_logic;
SIGNAL \RA12~output_o\ : std_logic;
SIGNAL \RA11~output_o\ : std_logic;
SIGNAL \RA10~output_o\ : std_logic;
SIGNAL \RA03~output_o\ : std_logic;
SIGNAL \RA02~output_o\ : std_logic;
SIGNAL \RA01~output_o\ : std_logic;
SIGNAL \RA00~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|count[0]~3_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \inst|count[2]~1_combout\ : std_logic;
SIGNAL \inst|count~2_combout\ : std_logic;
SIGNAL \inst|count~0_combout\ : std_logic;
SIGNAL \inst|count[3]~feeder_combout\ : std_logic;
SIGNAL \inst|count[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|count[0]~3_combout\ : std_logic;
SIGNAL \inst2|count~1_combout\ : std_logic;
SIGNAL \inst2|count[2]~2_combout\ : std_logic;
SIGNAL \inst2|count~0_combout\ : std_logic;
SIGNAL \inst2|count[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|count[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|count[0]~3_combout\ : std_logic;
SIGNAL \inst3|count~2_combout\ : std_logic;
SIGNAL \inst3|count[2]~1_combout\ : std_logic;
SIGNAL \inst3|count~0_combout\ : std_logic;
SIGNAL \inst3|count[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|count[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|count[0]~3_combout\ : std_logic;
SIGNAL \inst4|count~2_combout\ : std_logic;
SIGNAL \inst4|count[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|count[2]~1_combout\ : std_logic;
SIGNAL \inst4|count~0_combout\ : std_logic;
SIGNAL \inst4|count[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|count[0]~3_combout\ : std_logic;
SIGNAL \inst5|count~0_combout\ : std_logic;
SIGNAL \inst5|count[3]~1_combout\ : std_logic;
SIGNAL \inst5|count~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|OUT_CLK~feeder_combout\ : std_logic;
SIGNAL \inst5|OUT_CLK~q\ : std_logic;
SIGNAL \inst5|OUT_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|count[0]~3_combout\ : std_logic;
SIGNAL \inst6|count~1_combout\ : std_logic;
SIGNAL \inst6|count[2]~0_combout\ : std_logic;
SIGNAL \inst6|count~2_combout\ : std_logic;
SIGNAL \inst9|state~4_combout\ : std_logic;
SIGNAL \inst9|state~3_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst9|state~1_combout\ : std_logic;
SIGNAL \inst9|state~0_combout\ : std_logic;
SIGNAL \inst9|state~2_combout\ : std_logic;
SIGNAL \inst9|state~combout\ : std_logic;
SIGNAL \inst|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_count[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|ALT_INV_count[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|ALT_INV_count[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|ALT_INV_count[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|ALT_INV_OUT_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RST~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

STATE <= ww_STATE;
ww_CLK <= CLK;
ww_RST <= RST;
RA53 <= ww_RA53;
RA52 <= ww_RA52;
RA51 <= ww_RA51;
RA50 <= ww_RA50;
RA32 <= ww_RA32;
RA31 <= ww_RA31;
RA30 <= ww_RA30;
RA33 <= ww_RA33;
RA43 <= ww_RA43;
RA42 <= ww_RA42;
RA41 <= ww_RA41;
RA40 <= ww_RA40;
RA23 <= ww_RA23;
RA22 <= ww_RA22;
RA21 <= ww_RA21;
RA20 <= ww_RA20;
RA13 <= ww_RA13;
RA12 <= ww_RA12;
RA11 <= ww_RA11;
RA10 <= ww_RA10;
RA03 <= ww_RA03;
RA02 <= ww_RA02;
RA01 <= ww_RA01;
RA00 <= ww_RA00;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst5|OUT_CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|OUT_CLK~q\);

\inst3|count[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|count\(3));

\inst2|count[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|count\(3));

\inst4|count[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|count\(3));

\inst|count[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|count\(3));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|ALT_INV_count[3]~clkctrl_outclk\ <= NOT \inst|count[3]~clkctrl_outclk\;
\inst4|ALT_INV_count[3]~clkctrl_outclk\ <= NOT \inst4|count[3]~clkctrl_outclk\;
\inst2|ALT_INV_count[3]~clkctrl_outclk\ <= NOT \inst2|count[3]~clkctrl_outclk\;
\inst3|ALT_INV_count[3]~clkctrl_outclk\ <= NOT \inst3|count[3]~clkctrl_outclk\;
\inst5|ALT_INV_OUT_CLK~clkctrl_outclk\ <= NOT \inst5|OUT_CLK~clkctrl_outclk\;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X49_Y54_N9
\STATE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|state~combout\,
	devoe => ww_devoe,
	o => \STATE~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\RA53~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(3),
	devoe => ww_devoe,
	o => \RA53~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\RA52~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(2),
	devoe => ww_devoe,
	o => \RA52~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\RA51~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(1),
	devoe => ww_devoe,
	o => \RA51~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\RA50~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(0),
	devoe => ww_devoe,
	o => \RA50~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\RA32~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|count\(2),
	devoe => ww_devoe,
	o => \RA32~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\RA31~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|count\(1),
	devoe => ww_devoe,
	o => \RA31~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\RA30~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|count\(0),
	devoe => ww_devoe,
	o => \RA30~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\RA33~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|count\(3),
	devoe => ww_devoe,
	o => \RA33~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\RA43~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|count\(3),
	devoe => ww_devoe,
	o => \RA43~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\RA42~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|count\(2),
	devoe => ww_devoe,
	o => \RA42~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\RA41~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|count\(1),
	devoe => ww_devoe,
	o => \RA41~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\RA40~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|count\(0),
	devoe => ww_devoe,
	o => \RA40~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\RA23~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|count\(3),
	devoe => ww_devoe,
	o => \RA23~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\RA22~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|count\(2),
	devoe => ww_devoe,
	o => \RA22~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\RA21~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|count\(1),
	devoe => ww_devoe,
	o => \RA21~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\RA20~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|count\(0),
	devoe => ww_devoe,
	o => \RA20~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\RA13~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|count\(3),
	devoe => ww_devoe,
	o => \RA13~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\RA12~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|count\(2),
	devoe => ww_devoe,
	o => \RA12~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\RA11~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|count\(1),
	devoe => ww_devoe,
	o => \RA11~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\RA10~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|count\(0),
	devoe => ww_devoe,
	o => \RA10~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\RA03~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|count\(3),
	devoe => ww_devoe,
	o => \RA03~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\RA02~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|count\(2),
	devoe => ww_devoe,
	o => \RA02~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\RA01~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|count\(1),
	devoe => ww_devoe,
	o => \RA01~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\RA00~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|count\(0),
	devoe => ww_devoe,
	o => \RA00~output_o\);

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

-- Location: LCCOMB_X44_Y53_N28
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

-- Location: IOIBUF_X49_Y54_N29
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

-- Location: FF_X44_Y53_N29
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count[0]~3_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X44_Y53_N24
\inst|count[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count[2]~1_combout\ = \inst|count\(2) $ (((\inst|count\(1) & \inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datac => \inst|count\(2),
	datad => \inst|count\(0),
	combout => \inst|count[2]~1_combout\);

-- Location: FF_X44_Y53_N25
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count[2]~1_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X44_Y53_N26
\inst|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count~2_combout\ = (\inst|count\(1) & (((!\inst|count\(0))))) # (!\inst|count\(1) & (\inst|count\(0) & ((\inst|count\(2)) # (!\inst|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(2),
	datac => \inst|count\(3),
	datad => \inst|count\(0),
	combout => \inst|count~2_combout\);

-- Location: FF_X44_Y53_N31
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|count~2_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X44_Y53_N2
\inst|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count~0_combout\ = (\inst|count\(3) & ((\inst|count\(1) $ (\inst|count\(2))) # (!\inst|count\(0)))) # (!\inst|count\(3) & (\inst|count\(0) & (\inst|count\(1) & \inst|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(0),
	datac => \inst|count\(1),
	datad => \inst|count\(2),
	combout => \inst|count~0_combout\);

-- Location: LCCOMB_X44_Y53_N20
\inst|count[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|count[3]~feeder_combout\ = \inst|count~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|count~0_combout\,
	combout => \inst|count[3]~feeder_combout\);

-- Location: FF_X44_Y53_N21
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count[3]~feeder_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: CLKCTRL_G12
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

-- Location: LCCOMB_X77_Y39_N30
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

-- Location: FF_X77_Y39_N31
\inst2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst2|count[0]~3_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(0));

-- Location: LCCOMB_X77_Y39_N0
\inst2|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~1_combout\ = (\inst2|count\(1) & (((!\inst2|count\(0))))) # (!\inst2|count\(1) & (\inst2|count\(0) & ((\inst2|count\(2)) # (!\inst2|count\(3)))))

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
	combout => \inst2|count~1_combout\);

-- Location: FF_X77_Y39_N25
\inst2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_count[3]~clkctrl_outclk\,
	asdata => \inst2|count~1_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(1));

-- Location: LCCOMB_X77_Y39_N12
\inst2|count[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count[2]~2_combout\ = \inst2|count\(2) $ (((\inst2|count\(0) & \inst2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(0),
	datac => \inst2|count\(2),
	datad => \inst2|count\(1),
	combout => \inst2|count[2]~2_combout\);

-- Location: FF_X77_Y39_N13
\inst2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst2|count[2]~2_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(2));

-- Location: LCCOMB_X77_Y39_N16
\inst2|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count~0_combout\ = (\inst2|count\(2) & (\inst2|count\(3) $ (((\inst2|count\(0) & \inst2|count\(1)))))) # (!\inst2|count\(2) & (\inst2|count\(3) & ((\inst2|count\(1)) # (!\inst2|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(2),
	datab => \inst2|count\(3),
	datac => \inst2|count\(0),
	datad => \inst2|count\(1),
	combout => \inst2|count~0_combout\);

-- Location: LCCOMB_X77_Y39_N28
\inst2|count[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|count[3]~feeder_combout\ = \inst2|count~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count~0_combout\,
	combout => \inst2|count[3]~feeder_combout\);

-- Location: FF_X77_Y39_N29
\inst2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst2|count[3]~feeder_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(3));

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X77_Y39_N8
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

-- Location: FF_X77_Y39_N9
\inst3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst3|count[0]~3_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count\(0));

-- Location: LCCOMB_X77_Y39_N6
\inst3|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|count~2_combout\ = (\inst3|count\(0) & (!\inst3|count\(1) & ((\inst3|count\(2)) # (!\inst3|count\(3))))) # (!\inst3|count\(0) & (((\inst3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(3),
	datab => \inst3|count\(2),
	datac => \inst3|count\(0),
	datad => \inst3|count\(1),
	combout => \inst3|count~2_combout\);

-- Location: FF_X77_Y39_N3
\inst3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_count[3]~clkctrl_outclk\,
	asdata => \inst3|count~2_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count\(1));

-- Location: LCCOMB_X77_Y39_N4
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

-- Location: FF_X77_Y39_N5
\inst3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst3|count[2]~1_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count\(2));

-- Location: LCCOMB_X77_Y39_N18
\inst3|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|count~0_combout\ = (\inst3|count\(3) & ((\inst3|count\(2) $ (\inst3|count\(1))) # (!\inst3|count\(0)))) # (!\inst3|count\(3) & (\inst3|count\(2) & (\inst3|count\(0) & \inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(3),
	datab => \inst3|count\(2),
	datac => \inst3|count\(0),
	datad => \inst3|count\(1),
	combout => \inst3|count~0_combout\);

-- Location: LCCOMB_X77_Y39_N14
\inst3|count[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|count[3]~feeder_combout\ = \inst3|count~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|count~0_combout\,
	combout => \inst3|count[3]~feeder_combout\);

-- Location: FF_X77_Y39_N15
\inst3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst3|count[3]~feeder_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count\(3));

-- Location: CLKCTRL_G5
\inst3|count[3]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|count[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|count[3]~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y53_N26
\inst4|count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|count[0]~3_combout\ = !\inst4|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count\(0),
	combout => \inst4|count[0]~3_combout\);

-- Location: FF_X45_Y53_N27
\inst4|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst4|count[0]~3_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count\(0));

-- Location: LCCOMB_X45_Y53_N12
\inst4|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|count~2_combout\ = (\inst4|count\(0) & (!\inst4|count\(1) & ((\inst4|count\(2)) # (!\inst4|count\(3))))) # (!\inst4|count\(0) & (((\inst4|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(2),
	datab => \inst4|count\(3),
	datac => \inst4|count\(0),
	datad => \inst4|count\(1),
	combout => \inst4|count~2_combout\);

-- Location: LCCOMB_X45_Y53_N18
\inst4|count[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|count[1]~feeder_combout\ = \inst4|count~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count~2_combout\,
	combout => \inst4|count[1]~feeder_combout\);

-- Location: FF_X45_Y53_N19
\inst4|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst4|count[1]~feeder_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count\(1));

-- Location: LCCOMB_X45_Y53_N30
\inst4|count[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|count[2]~1_combout\ = \inst4|count\(2) $ (((\inst4|count\(0) & \inst4|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(0),
	datac => \inst4|count\(2),
	datad => \inst4|count\(1),
	combout => \inst4|count[2]~1_combout\);

-- Location: FF_X45_Y53_N31
\inst4|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst4|count[2]~1_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count\(2));

-- Location: LCCOMB_X45_Y53_N16
\inst4|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|count~0_combout\ = (\inst4|count\(2) & (\inst4|count\(3) $ (((\inst4|count\(0) & \inst4|count\(1)))))) # (!\inst4|count\(2) & (\inst4|count\(3) & ((\inst4|count\(1)) # (!\inst4|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(2),
	datab => \inst4|count\(3),
	datac => \inst4|count\(0),
	datad => \inst4|count\(1),
	combout => \inst4|count~0_combout\);

-- Location: FF_X45_Y53_N25
\inst4|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_count[3]~clkctrl_outclk\,
	asdata => \inst4|count~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count\(3));

-- Location: CLKCTRL_G14
\inst4|count[3]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|count[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|count[3]~clkctrl_outclk\);

-- Location: LCCOMB_X77_Y40_N28
\inst5|count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count[0]~3_combout\ = !\inst5|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|count\(0),
	combout => \inst5|count[0]~3_combout\);

-- Location: FF_X77_Y40_N29
\inst5|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst5|count[0]~3_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(0));

-- Location: LCCOMB_X77_Y40_N22
\inst5|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count~0_combout\ = (\inst5|count\(0) & ((\inst5|count\(1) & (!\inst5|count\(2))) # (!\inst5|count\(1) & (\inst5|count\(2) & \inst5|count\(3))))) # (!\inst5|count\(0) & (((\inst5|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(0),
	datab => \inst5|count\(1),
	datac => \inst5|count\(2),
	datad => \inst5|count\(3),
	combout => \inst5|count~0_combout\);

-- Location: FF_X77_Y40_N23
\inst5|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst5|count~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(2));

-- Location: LCCOMB_X77_Y40_N24
\inst5|count[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count[3]~1_combout\ = \inst5|count\(3) $ (((\inst5|count\(0) & (\inst5|count\(1) & \inst5|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(0),
	datab => \inst5|count\(1),
	datac => \inst5|count\(3),
	datad => \inst5|count\(2),
	combout => \inst5|count[3]~1_combout\);

-- Location: FF_X77_Y40_N25
\inst5|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst5|count[3]~1_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(3));

-- Location: LCCOMB_X77_Y40_N26
\inst5|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count~2_combout\ = (\inst5|count\(1) & (((!\inst5|count\(0))))) # (!\inst5|count\(1) & (\inst5|count\(0) & ((\inst5|count\(3)) # (!\inst5|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(3),
	datab => \inst5|count\(2),
	datac => \inst5|count\(1),
	datad => \inst5|count\(0),
	combout => \inst5|count~2_combout\);

-- Location: FF_X77_Y40_N27
\inst5|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst5|count~2_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(1));

-- Location: LCCOMB_X77_Y40_N10
\inst5|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (\inst5|count\(1)) # (((\inst5|count\(3)) # (!\inst5|count\(2))) # (!\inst5|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(1),
	datab => \inst5|count\(0),
	datac => \inst5|count\(2),
	datad => \inst5|count\(3),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X77_Y40_N30
\inst5|OUT_CLK~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|OUT_CLK~feeder_combout\ = \inst5|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|OUT_CLK~feeder_combout\);

-- Location: FF_X77_Y40_N31
\inst5|OUT_CLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_count[3]~clkctrl_outclk\,
	d => \inst5|OUT_CLK~feeder_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|OUT_CLK~q\);

-- Location: CLKCTRL_G7
\inst5|OUT_CLK~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|OUT_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|OUT_CLK~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y51_N20
\inst6|count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[0]~3_combout\ = !\inst6|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|count\(0),
	combout => \inst6|count[0]~3_combout\);

-- Location: FF_X51_Y51_N21
\inst6|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_OUT_CLK~clkctrl_outclk\,
	d => \inst6|count[0]~3_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(0));

-- Location: LCCOMB_X51_Y51_N28
\inst6|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~1_combout\ = (\inst6|count\(1) & (((!\inst6|count\(0))))) # (!\inst6|count\(1) & (\inst6|count\(0) & ((\inst6|count\(2)) # (!\inst6|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(2),
	datab => \inst6|count\(3),
	datac => \inst6|count\(1),
	datad => \inst6|count\(0),
	combout => \inst6|count~1_combout\);

-- Location: FF_X51_Y51_N29
\inst6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_OUT_CLK~clkctrl_outclk\,
	d => \inst6|count~1_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(1));

-- Location: LCCOMB_X51_Y51_N22
\inst6|count[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[2]~0_combout\ = \inst6|count\(2) $ (((\inst6|count\(0) & \inst6|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(0),
	datac => \inst6|count\(2),
	datad => \inst6|count\(1),
	combout => \inst6|count[2]~0_combout\);

-- Location: FF_X51_Y51_N23
\inst6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_OUT_CLK~clkctrl_outclk\,
	d => \inst6|count[2]~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(2));

-- Location: LCCOMB_X51_Y51_N18
\inst6|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~2_combout\ = (\inst6|count\(2) & (\inst6|count\(3) $ (((\inst6|count\(1) & \inst6|count\(0)))))) # (!\inst6|count\(2) & (\inst6|count\(3) & ((\inst6|count\(1)) # (!\inst6|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(2),
	datab => \inst6|count\(1),
	datac => \inst6|count\(3),
	datad => \inst6|count\(0),
	combout => \inst6|count~2_combout\);

-- Location: FF_X51_Y51_N19
\inst6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_OUT_CLK~clkctrl_outclk\,
	d => \inst6|count~2_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(3));

-- Location: LCCOMB_X51_Y51_N24
\inst9|state~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|state~4_combout\ = (!\inst4|count\(0) & (!\inst6|count\(3) & (!\inst3|count\(0) & \inst6|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(0),
	datab => \inst6|count\(3),
	datac => \inst3|count\(0),
	datad => \inst6|count\(1),
	combout => \inst9|state~4_combout\);

-- Location: LCCOMB_X45_Y53_N28
\inst9|state~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|state~3_combout\ = (!\inst4|count\(2) & (\inst4|count\(3) & (\inst2|count\(2) & !\inst4|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(2),
	datab => \inst4|count\(3),
	datac => \inst2|count\(2),
	datad => \inst4|count\(1),
	combout => \inst9|state~3_combout\);

-- Location: LCCOMB_X44_Y53_N30
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|count\(0) & (\inst|count\(3) & (!\inst|count\(1) & !\inst|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(3),
	datac => \inst|count\(1),
	datad => \inst|count\(2),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X77_Y39_N24
\inst9|state~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|state~1_combout\ = (\inst6|count\(0) & (\inst2|count\(0) & (!\inst2|count\(1) & !\inst6|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(0),
	datab => \inst2|count\(0),
	datac => \inst2|count\(1),
	datad => \inst6|count\(2),
	combout => \inst9|state~1_combout\);

-- Location: LCCOMB_X77_Y39_N22
\inst9|state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|state~0_combout\ = (!\inst3|count\(2) & (!\inst2|count\(3) & (\inst3|count\(3) & !\inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count\(2),
	datab => \inst2|count\(3),
	datac => \inst3|count\(3),
	datad => \inst3|count\(1),
	combout => \inst9|state~0_combout\);

-- Location: LCCOMB_X76_Y39_N20
\inst9|state~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|state~2_combout\ = (\inst|Equal0~0_combout\ & (\inst9|state~1_combout\ & (!\inst5|Equal0~0_combout\ & \inst9|state~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst9|state~1_combout\,
	datac => \inst5|Equal0~0_combout\,
	datad => \inst9|state~0_combout\,
	combout => \inst9|state~2_combout\);

-- Location: LCCOMB_X50_Y51_N16
\inst9|state\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|state~combout\ = (\inst9|state~4_combout\ & (\inst9|state~3_combout\ & \inst9|state~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|state~4_combout\,
	datac => \inst9|state~3_combout\,
	datad => \inst9|state~2_combout\,
	combout => \inst9|state~combout\);

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

ww_STATE <= \STATE~output_o\;

ww_RA53 <= \RA53~output_o\;

ww_RA52 <= \RA52~output_o\;

ww_RA51 <= \RA51~output_o\;

ww_RA50 <= \RA50~output_o\;

ww_RA32 <= \RA32~output_o\;

ww_RA31 <= \RA31~output_o\;

ww_RA30 <= \RA30~output_o\;

ww_RA33 <= \RA33~output_o\;

ww_RA43 <= \RA43~output_o\;

ww_RA42 <= \RA42~output_o\;

ww_RA41 <= \RA41~output_o\;

ww_RA40 <= \RA40~output_o\;

ww_RA23 <= \RA23~output_o\;

ww_RA22 <= \RA22~output_o\;

ww_RA21 <= \RA21~output_o\;

ww_RA20 <= \RA20~output_o\;

ww_RA13 <= \RA13~output_o\;

ww_RA12 <= \RA12~output_o\;

ww_RA11 <= \RA11~output_o\;

ww_RA10 <= \RA10~output_o\;

ww_RA03 <= \RA03~output_o\;

ww_RA02 <= \RA02~output_o\;

ww_RA01 <= \RA01~output_o\;

ww_RA00 <= \RA00~output_o\;
END structure;


