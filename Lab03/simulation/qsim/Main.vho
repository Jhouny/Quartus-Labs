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

-- DATE "04/22/2024 19:29:58"

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
	S1A : OUT std_logic;
	D7 : IN std_logic;
	D6 : IN std_logic;
	D5 : IN std_logic;
	D4 : IN std_logic;
	S1B : OUT std_logic;
	S1C : OUT std_logic;
	S1D : OUT std_logic;
	S1E : OUT std_logic;
	S1F : OUT std_logic;
	S1G : OUT std_logic;
	S2A : OUT std_logic;
	D3 : IN std_logic;
	D2 : IN std_logic;
	D1 : IN std_logic;
	D0 : IN std_logic;
	S2B : OUT std_logic;
	S2C : OUT std_logic;
	S2D : OUT std_logic;
	S2E : OUT std_logic;
	S2F : OUT std_logic;
	S2G : OUT std_logic;
	S4A : OUT std_logic;
	CLK : IN std_logic;
	PB1 : IN std_logic;
	PB0 : IN std_logic;
	S4B : OUT std_logic;
	S4C : OUT std_logic;
	S4D : OUT std_logic;
	S4E : OUT std_logic;
	S4F : OUT std_logic;
	S4G : OUT std_logic;
	S5A : OUT std_logic;
	S5B : OUT std_logic;
	S5C : OUT std_logic;
	S5D : OUT std_logic;
	S5E : OUT std_logic;
	S5F : OUT std_logic;
	S5G : OUT std_logic;
	S : OUT std_logic;
	L0 : OUT std_logic;
	L1 : OUT std_logic;
	L2 : OUT std_logic;
	L3 : OUT std_logic;
	L4 : OUT std_logic;
	L5 : OUT std_logic;
	L7 : OUT std_logic;
	L6 : OUT std_logic
	);
END Main;

-- Design Ports Information
-- S1A	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1B	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1C	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1D	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1E	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1F	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1G	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2A	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2B	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2C	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2D	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2E	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2F	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2G	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4A	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4B	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4C	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4D	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4E	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4F	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4G	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5A	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5B	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5C	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5D	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5E	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5F	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5G	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L0	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L1	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L2	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L3	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L4	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L5	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L7	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L6	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB1	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB0	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_S1A : std_logic;
SIGNAL ww_D7 : std_logic;
SIGNAL ww_D6 : std_logic;
SIGNAL ww_D5 : std_logic;
SIGNAL ww_D4 : std_logic;
SIGNAL ww_S1B : std_logic;
SIGNAL ww_S1C : std_logic;
SIGNAL ww_S1D : std_logic;
SIGNAL ww_S1E : std_logic;
SIGNAL ww_S1F : std_logic;
SIGNAL ww_S1G : std_logic;
SIGNAL ww_S2A : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_S2B : std_logic;
SIGNAL ww_S2C : std_logic;
SIGNAL ww_S2D : std_logic;
SIGNAL ww_S2E : std_logic;
SIGNAL ww_S2F : std_logic;
SIGNAL ww_S2G : std_logic;
SIGNAL ww_S4A : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_PB1 : std_logic;
SIGNAL ww_PB0 : std_logic;
SIGNAL ww_S4B : std_logic;
SIGNAL ww_S4C : std_logic;
SIGNAL ww_S4D : std_logic;
SIGNAL ww_S4E : std_logic;
SIGNAL ww_S4F : std_logic;
SIGNAL ww_S4G : std_logic;
SIGNAL ww_S5A : std_logic;
SIGNAL ww_S5B : std_logic;
SIGNAL ww_S5C : std_logic;
SIGNAL ww_S5D : std_logic;
SIGNAL ww_S5E : std_logic;
SIGNAL ww_S5F : std_logic;
SIGNAL ww_S5G : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_L0 : std_logic;
SIGNAL ww_L1 : std_logic;
SIGNAL ww_L2 : std_logic;
SIGNAL ww_L3 : std_logic;
SIGNAL ww_L4 : std_logic;
SIGNAL ww_L5 : std_logic;
SIGNAL ww_L7 : std_logic;
SIGNAL ww_L6 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \S1A~output_o\ : std_logic;
SIGNAL \S1B~output_o\ : std_logic;
SIGNAL \S1C~output_o\ : std_logic;
SIGNAL \S1D~output_o\ : std_logic;
SIGNAL \S1E~output_o\ : std_logic;
SIGNAL \S1F~output_o\ : std_logic;
SIGNAL \S1G~output_o\ : std_logic;
SIGNAL \S2A~output_o\ : std_logic;
SIGNAL \S2B~output_o\ : std_logic;
SIGNAL \S2C~output_o\ : std_logic;
SIGNAL \S2D~output_o\ : std_logic;
SIGNAL \S2E~output_o\ : std_logic;
SIGNAL \S2F~output_o\ : std_logic;
SIGNAL \S2G~output_o\ : std_logic;
SIGNAL \S4A~output_o\ : std_logic;
SIGNAL \S4B~output_o\ : std_logic;
SIGNAL \S4C~output_o\ : std_logic;
SIGNAL \S4D~output_o\ : std_logic;
SIGNAL \S4E~output_o\ : std_logic;
SIGNAL \S4F~output_o\ : std_logic;
SIGNAL \S4G~output_o\ : std_logic;
SIGNAL \S5A~output_o\ : std_logic;
SIGNAL \S5B~output_o\ : std_logic;
SIGNAL \S5C~output_o\ : std_logic;
SIGNAL \S5D~output_o\ : std_logic;
SIGNAL \S5E~output_o\ : std_logic;
SIGNAL \S5F~output_o\ : std_logic;
SIGNAL \S5G~output_o\ : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \L0~output_o\ : std_logic;
SIGNAL \L1~output_o\ : std_logic;
SIGNAL \L2~output_o\ : std_logic;
SIGNAL \L3~output_o\ : std_logic;
SIGNAL \L4~output_o\ : std_logic;
SIGNAL \L5~output_o\ : std_logic;
SIGNAL \L7~output_o\ : std_logic;
SIGNAL \L6~output_o\ : std_logic;
SIGNAL \D4~input_o\ : std_logic;
SIGNAL \D7~input_o\ : std_logic;
SIGNAL \D5~input_o\ : std_logic;
SIGNAL \D6~input_o\ : std_logic;
SIGNAL \inst2|SSa~0_combout\ : std_logic;
SIGNAL \inst2|SSb~0_combout\ : std_logic;
SIGNAL \inst2|SSc~0_combout\ : std_logic;
SIGNAL \inst2|SSd~0_combout\ : std_logic;
SIGNAL \inst2|SSe~0_combout\ : std_logic;
SIGNAL \inst2|SSf~0_combout\ : std_logic;
SIGNAL \inst2|SSg~0_combout\ : std_logic;
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \D2~input_o\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \D3~input_o\ : std_logic;
SIGNAL \inst3|SSa~0_combout\ : std_logic;
SIGNAL \inst3|SSb~0_combout\ : std_logic;
SIGNAL \inst3|SSc~0_combout\ : std_logic;
SIGNAL \inst3|SSd~0_combout\ : std_logic;
SIGNAL \inst3|SSe~0_combout\ : std_logic;
SIGNAL \inst3|SSf~0_combout\ : std_logic;
SIGNAL \inst3|SSg~0_combout\ : std_logic;
SIGNAL \PB1~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst7~clkctrl_outclk\ : std_logic;
SIGNAL \PB0~input_o\ : std_logic;
SIGNAL \inst|ld0|Dout~0_combout\ : std_logic;
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
SIGNAL \inst6|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|SSa~0_combout\ : std_logic;
SIGNAL \inst4|SSb~0_combout\ : std_logic;
SIGNAL \inst4|SSc~0_combout\ : std_logic;
SIGNAL \inst4|SSd~0_combout\ : std_logic;
SIGNAL \inst4|SSe~0_combout\ : std_logic;
SIGNAL \inst4|SSf~0_combout\ : std_logic;
SIGNAL \inst4|SSg~0_combout\ : std_logic;
SIGNAL \inst5|SSa~0_combout\ : std_logic;
SIGNAL \inst5|SSb~0_combout\ : std_logic;
SIGNAL \inst5|SSc~0_combout\ : std_logic;
SIGNAL \inst5|SSd~0_combout\ : std_logic;
SIGNAL \inst5|SSe~0_combout\ : std_logic;
SIGNAL \inst5|SSf~0_combout\ : std_logic;
SIGNAL \inst5|SSg~0_combout\ : std_logic;
SIGNAL \inst6|data\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

S1A <= ww_S1A;
ww_D7 <= D7;
ww_D6 <= D6;
ww_D5 <= D5;
ww_D4 <= D4;
S1B <= ww_S1B;
S1C <= ww_S1C;
S1D <= ww_S1D;
S1E <= ww_S1E;
S1F <= ww_S1F;
S1G <= ww_S1G;
S2A <= ww_S2A;
ww_D3 <= D3;
ww_D2 <= D2;
ww_D1 <= D1;
ww_D0 <= D0;
S2B <= ww_S2B;
S2C <= ww_S2C;
S2D <= ww_S2D;
S2E <= ww_S2E;
S2F <= ww_S2F;
S2G <= ww_S2G;
S4A <= ww_S4A;
ww_CLK <= CLK;
ww_PB1 <= PB1;
ww_PB0 <= PB0;
S4B <= ww_S4B;
S4C <= ww_S4C;
S4D <= ww_S4D;
S4E <= ww_S4E;
S4F <= ww_S4F;
S4G <= ww_S4G;
S5A <= ww_S5A;
S5B <= ww_S5B;
S5C <= ww_S5C;
S5D <= ww_S5D;
S5E <= ww_S5E;
S5F <= ww_S5F;
S5G <= ww_S5G;
S <= ww_S;
L0 <= ww_L0;
L1 <= ww_L1;
L2 <= ww_L2;
L3 <= ww_L3;
L4 <= ww_L4;
L5 <= ww_L5;
L7 <= ww_L7;
L6 <= ww_L6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst7~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7~combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N12
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

-- Location: IOOBUF_X58_Y54_N16
\S1A~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|SSa~0_combout\,
	devoe => ww_devoe,
	o => \S1A~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\S1B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|SSb~0_combout\,
	devoe => ww_devoe,
	o => \S1B~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\S1C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|SSc~0_combout\,
	devoe => ww_devoe,
	o => \S1C~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\S1D~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|SSd~0_combout\,
	devoe => ww_devoe,
	o => \S1D~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\S1E~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|SSe~0_combout\,
	devoe => ww_devoe,
	o => \S1E~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\S1F~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|SSf~0_combout\,
	devoe => ww_devoe,
	o => \S1F~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\S1G~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|SSg~0_combout\,
	devoe => ww_devoe,
	o => \S1G~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\S2A~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|SSa~0_combout\,
	devoe => ww_devoe,
	o => \S2A~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\S2B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|SSb~0_combout\,
	devoe => ww_devoe,
	o => \S2B~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\S2C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|SSc~0_combout\,
	devoe => ww_devoe,
	o => \S2C~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\S2D~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|SSd~0_combout\,
	devoe => ww_devoe,
	o => \S2D~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\S2E~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|SSe~0_combout\,
	devoe => ww_devoe,
	o => \S2E~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\S2F~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|SSf~0_combout\,
	devoe => ww_devoe,
	o => \S2F~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\S2G~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|SSg~0_combout\,
	devoe => ww_devoe,
	o => \S2G~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\S4A~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|SSa~0_combout\,
	devoe => ww_devoe,
	o => \S4A~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\S4B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|SSb~0_combout\,
	devoe => ww_devoe,
	o => \S4B~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\S4C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|SSc~0_combout\,
	devoe => ww_devoe,
	o => \S4C~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\S4D~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|SSd~0_combout\,
	devoe => ww_devoe,
	o => \S4D~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\S4E~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|SSe~0_combout\,
	devoe => ww_devoe,
	o => \S4E~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\S4F~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|SSf~0_combout\,
	devoe => ww_devoe,
	o => \S4F~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\S4G~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|SSg~0_combout\,
	devoe => ww_devoe,
	o => \S4G~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\S5A~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|SSa~0_combout\,
	devoe => ww_devoe,
	o => \S5A~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\S5B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|SSb~0_combout\,
	devoe => ww_devoe,
	o => \S5B~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\S5C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|SSc~0_combout\,
	devoe => ww_devoe,
	o => \S5C~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\S5D~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|SSd~0_combout\,
	devoe => ww_devoe,
	o => \S5D~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\S5E~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|SSe~0_combout\,
	devoe => ww_devoe,
	o => \S5E~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\S5F~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|SSf~0_combout\,
	devoe => ww_devoe,
	o => \S5F~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\S5G~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|SSg~0_combout\,
	devoe => ww_devoe,
	o => \S5G~output_o\);

-- Location: IOOBUF_X58_Y54_N2
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

-- Location: IOOBUF_X51_Y54_N9
\L0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|data\(0),
	devoe => ww_devoe,
	o => \L0~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\L1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|data\(1),
	devoe => ww_devoe,
	o => \L1~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\L2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|data\(2),
	devoe => ww_devoe,
	o => \L2~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\L3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|data\(3),
	devoe => ww_devoe,
	o => \L3~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\L4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|data\(4),
	devoe => ww_devoe,
	o => \L4~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\L5~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|data\(5),
	devoe => ww_devoe,
	o => \L5~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\L7~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|data\(7),
	devoe => ww_devoe,
	o => \L7~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\L6~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|data\(6),
	devoe => ww_devoe,
	o => \L6~output_o\);

-- Location: IOIBUF_X60_Y54_N8
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

-- Location: IOIBUF_X74_Y54_N8
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

-- Location: IOIBUF_X74_Y54_N15
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

-- Location: IOIBUF_X66_Y54_N8
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

-- Location: LCCOMB_X59_Y53_N12
\inst2|SSa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|SSa~0_combout\ = (\D7~input_o\ & (\D4~input_o\ & (\D5~input_o\ $ (\D6~input_o\)))) # (!\D7~input_o\ & (!\D5~input_o\ & (\D4~input_o\ $ (\D6~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4~input_o\,
	datab => \D7~input_o\,
	datac => \D5~input_o\,
	datad => \D6~input_o\,
	combout => \inst2|SSa~0_combout\);

-- Location: LCCOMB_X59_Y53_N18
\inst2|SSb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|SSb~0_combout\ = (\D7~input_o\ & ((\D4~input_o\ & (\D5~input_o\)) # (!\D4~input_o\ & ((\D6~input_o\))))) # (!\D7~input_o\ & (\D6~input_o\ & (\D4~input_o\ $ (\D5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4~input_o\,
	datab => \D7~input_o\,
	datac => \D5~input_o\,
	datad => \D6~input_o\,
	combout => \inst2|SSb~0_combout\);

-- Location: LCCOMB_X59_Y53_N20
\inst2|SSc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|SSc~0_combout\ = (\D7~input_o\ & (\D6~input_o\ & ((\D5~input_o\) # (!\D4~input_o\)))) # (!\D7~input_o\ & (!\D4~input_o\ & (\D5~input_o\ & !\D6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4~input_o\,
	datab => \D7~input_o\,
	datac => \D5~input_o\,
	datad => \D6~input_o\,
	combout => \inst2|SSc~0_combout\);

-- Location: LCCOMB_X59_Y53_N6
\inst2|SSd~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|SSd~0_combout\ = (\D5~input_o\ & ((\D4~input_o\ & ((\D6~input_o\))) # (!\D4~input_o\ & (\D7~input_o\ & !\D6~input_o\)))) # (!\D5~input_o\ & (!\D7~input_o\ & (\D4~input_o\ $ (\D6~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4~input_o\,
	datab => \D7~input_o\,
	datac => \D5~input_o\,
	datad => \D6~input_o\,
	combout => \inst2|SSd~0_combout\);

-- Location: LCCOMB_X59_Y53_N4
\inst2|SSe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|SSe~0_combout\ = (\D5~input_o\ & (\D4~input_o\ & (!\D7~input_o\))) # (!\D5~input_o\ & ((\D6~input_o\ & ((!\D7~input_o\))) # (!\D6~input_o\ & (\D4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4~input_o\,
	datab => \D7~input_o\,
	datac => \D5~input_o\,
	datad => \D6~input_o\,
	combout => \inst2|SSe~0_combout\);

-- Location: LCCOMB_X59_Y53_N22
\inst2|SSf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|SSf~0_combout\ = (\D4~input_o\ & (\D7~input_o\ $ (((\D5~input_o\) # (!\D6~input_o\))))) # (!\D4~input_o\ & (!\D7~input_o\ & (\D5~input_o\ & !\D6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4~input_o\,
	datab => \D7~input_o\,
	datac => \D5~input_o\,
	datad => \D6~input_o\,
	combout => \inst2|SSf~0_combout\);

-- Location: LCCOMB_X59_Y53_N28
\inst2|SSg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|SSg~0_combout\ = (\D4~input_o\ & (!\D7~input_o\ & (\D5~input_o\ $ (!\D6~input_o\)))) # (!\D4~input_o\ & (!\D5~input_o\ & (\D7~input_o\ $ (!\D6~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4~input_o\,
	datab => \D7~input_o\,
	datac => \D5~input_o\,
	datad => \D6~input_o\,
	combout => \inst2|SSg~0_combout\);

-- Location: IOIBUF_X69_Y54_N8
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

-- Location: IOIBUF_X69_Y54_N1
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

-- Location: IOIBUF_X64_Y54_N1
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

-- Location: IOIBUF_X69_Y54_N15
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

-- Location: LCCOMB_X60_Y53_N12
\inst3|SSa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SSa~0_combout\ = (\D2~input_o\ & (!\D1~input_o\ & (\D0~input_o\ $ (!\D3~input_o\)))) # (!\D2~input_o\ & (\D0~input_o\ & (\D1~input_o\ $ (!\D3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1~input_o\,
	datab => \D2~input_o\,
	datac => \D0~input_o\,
	datad => \D3~input_o\,
	combout => \inst3|SSa~0_combout\);

-- Location: LCCOMB_X60_Y53_N2
\inst3|SSb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SSb~0_combout\ = (\D1~input_o\ & ((\D0~input_o\ & ((\D3~input_o\))) # (!\D0~input_o\ & (\D2~input_o\)))) # (!\D1~input_o\ & (\D2~input_o\ & (\D0~input_o\ $ (\D3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1~input_o\,
	datab => \D2~input_o\,
	datac => \D0~input_o\,
	datad => \D3~input_o\,
	combout => \inst3|SSb~0_combout\);

-- Location: LCCOMB_X60_Y53_N8
\inst3|SSc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SSc~0_combout\ = (\D2~input_o\ & (\D3~input_o\ & ((\D1~input_o\) # (!\D0~input_o\)))) # (!\D2~input_o\ & (\D1~input_o\ & (!\D0~input_o\ & !\D3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1~input_o\,
	datab => \D2~input_o\,
	datac => \D0~input_o\,
	datad => \D3~input_o\,
	combout => \inst3|SSc~0_combout\);

-- Location: LCCOMB_X60_Y53_N10
\inst3|SSd~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SSd~0_combout\ = (\D1~input_o\ & ((\D2~input_o\ & (\D0~input_o\)) # (!\D2~input_o\ & (!\D0~input_o\ & \D3~input_o\)))) # (!\D1~input_o\ & (!\D3~input_o\ & (\D2~input_o\ $ (\D0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1~input_o\,
	datab => \D2~input_o\,
	datac => \D0~input_o\,
	datad => \D3~input_o\,
	combout => \inst3|SSd~0_combout\);

-- Location: LCCOMB_X60_Y53_N28
\inst3|SSe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SSe~0_combout\ = (\D1~input_o\ & (((\D0~input_o\ & !\D3~input_o\)))) # (!\D1~input_o\ & ((\D2~input_o\ & ((!\D3~input_o\))) # (!\D2~input_o\ & (\D0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1~input_o\,
	datab => \D2~input_o\,
	datac => \D0~input_o\,
	datad => \D3~input_o\,
	combout => \inst3|SSe~0_combout\);

-- Location: LCCOMB_X60_Y53_N6
\inst3|SSf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SSf~0_combout\ = (\D1~input_o\ & (!\D3~input_o\ & ((\D0~input_o\) # (!\D2~input_o\)))) # (!\D1~input_o\ & (\D0~input_o\ & (\D2~input_o\ $ (!\D3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1~input_o\,
	datab => \D2~input_o\,
	datac => \D0~input_o\,
	datad => \D3~input_o\,
	combout => \inst3|SSf~0_combout\);

-- Location: LCCOMB_X60_Y53_N16
\inst3|SSg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SSg~0_combout\ = (\D0~input_o\ & (!\D3~input_o\ & (\D1~input_o\ $ (!\D2~input_o\)))) # (!\D0~input_o\ & (!\D1~input_o\ & (\D2~input_o\ $ (!\D3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1~input_o\,
	datab => \D2~input_o\,
	datac => \D0~input_o\,
	datad => \D3~input_o\,
	combout => \inst3|SSg~0_combout\);

-- Location: IOIBUF_X40_Y0_N8
\PB1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB1,
	o => \PB1~input_o\);

-- Location: IOIBUF_X40_Y0_N22
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

-- Location: LCCOMB_X40_Y1_N8
inst7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7~combout\ = LCELL((\PB1~input_o\ & \CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PB1~input_o\,
	datad => \CLK~input_o\,
	combout => \inst7~combout\);

-- Location: CLKCTRL_G16
\inst7~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7~clkctrl_outclk\);

-- Location: IOIBUF_X60_Y54_N1
\PB0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB0,
	o => \PB0~input_o\);

-- Location: LCCOMB_X60_Y53_N22
\inst|ld0|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld0|Dout~0_combout\ = (\D0~input_o\ & \PB0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0~input_o\,
	datac => \PB0~input_o\,
	combout => \inst|ld0|Dout~0_combout\);

-- Location: FF_X60_Y53_N23
\inst|dff0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|ld0|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff0~q\);

-- Location: LCCOMB_X60_Y53_N24
\inst|ld1|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld1|Dout~0_combout\ = (\PB0~input_o\ & ((\D1~input_o\))) # (!\PB0~input_o\ & (\inst|dff0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB0~input_o\,
	datac => \inst|dff0~q\,
	datad => \D1~input_o\,
	combout => \inst|ld1|Dout~0_combout\);

-- Location: FF_X60_Y53_N25
\inst|dff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|ld1|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff1~q\);

-- Location: LCCOMB_X60_Y53_N18
\inst|ld2|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld2|Dout~0_combout\ = (\PB0~input_o\ & (\D2~input_o\)) # (!\PB0~input_o\ & ((\inst|dff1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB0~input_o\,
	datab => \D2~input_o\,
	datad => \inst|dff1~q\,
	combout => \inst|ld2|Dout~0_combout\);

-- Location: FF_X60_Y53_N19
\inst|dff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|ld2|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff2~q\);

-- Location: LCCOMB_X60_Y53_N20
\inst|ld3|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld3|Dout~0_combout\ = (\PB0~input_o\ & (\D3~input_o\)) # (!\PB0~input_o\ & ((\inst|dff2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D3~input_o\,
	datac => \PB0~input_o\,
	datad => \inst|dff2~q\,
	combout => \inst|ld3|Dout~0_combout\);

-- Location: FF_X60_Y53_N21
\inst|dff3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|ld3|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff3~q\);

-- Location: LCCOMB_X60_Y53_N26
\inst|ld4|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld4|Dout~0_combout\ = (\PB0~input_o\ & (\D4~input_o\)) # (!\PB0~input_o\ & ((\inst|dff3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D4~input_o\,
	datac => \PB0~input_o\,
	datad => \inst|dff3~q\,
	combout => \inst|ld4|Dout~0_combout\);

-- Location: FF_X60_Y53_N27
\inst|dff4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|ld4|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff4~q\);

-- Location: LCCOMB_X59_Y53_N8
\inst|ld5|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld5|Dout~0_combout\ = (\PB0~input_o\ & (\D5~input_o\)) # (!\PB0~input_o\ & ((\inst|dff4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB0~input_o\,
	datac => \D5~input_o\,
	datad => \inst|dff4~q\,
	combout => \inst|ld5|Dout~0_combout\);

-- Location: FF_X59_Y53_N9
\inst|dff5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|ld5|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff5~q\);

-- Location: LCCOMB_X59_Y53_N10
\inst|ld6|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld6|Dout~0_combout\ = (\PB0~input_o\ & ((\D6~input_o\))) # (!\PB0~input_o\ & (\inst|dff5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB0~input_o\,
	datac => \inst|dff5~q\,
	datad => \D6~input_o\,
	combout => \inst|ld6|Dout~0_combout\);

-- Location: FF_X59_Y53_N11
\inst|dff6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|ld6|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff6~q\);

-- Location: LCCOMB_X59_Y53_N24
\inst|ld7|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ld7|Dout~0_combout\ = (\PB0~input_o\ & (\D7~input_o\)) # (!\PB0~input_o\ & ((\inst|dff6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB0~input_o\,
	datac => \D7~input_o\,
	datad => \inst|dff6~q\,
	combout => \inst|ld7|Dout~0_combout\);

-- Location: FF_X59_Y53_N25
\inst|dff7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|ld7|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dff7~q\);

-- Location: LCCOMB_X59_Y53_N26
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

-- Location: FF_X59_Y53_N27
\inst|S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|S~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|S~q\);

-- Location: LCCOMB_X58_Y53_N4
\inst6|data[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|data[0]~feeder_combout\ = \inst|S~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|S~q\,
	combout => \inst6|data[0]~feeder_combout\);

-- Location: FF_X58_Y53_N5
\inst6|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst6|data[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(0));

-- Location: FF_X58_Y53_N23
\inst6|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	asdata => \inst6|data\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(1));

-- Location: FF_X58_Y53_N1
\inst6|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	asdata => \inst6|data\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(2));

-- Location: LCCOMB_X58_Y53_N26
\inst6|data[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|data[3]~feeder_combout\ = \inst6|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|data\(2),
	combout => \inst6|data[3]~feeder_combout\);

-- Location: FF_X58_Y53_N27
\inst6|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst6|data[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(3));

-- Location: LCCOMB_X58_Y53_N24
\inst4|SSa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|SSa~0_combout\ = (\inst6|data\(3) & (\inst6|data\(0) & (\inst6|data\(1) $ (\inst6|data\(2))))) # (!\inst6|data\(3) & (!\inst6|data\(1) & (\inst6|data\(0) $ (\inst6|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data\(1),
	datab => \inst6|data\(0),
	datac => \inst6|data\(3),
	datad => \inst6|data\(2),
	combout => \inst4|SSa~0_combout\);

-- Location: LCCOMB_X58_Y53_N20
\inst4|SSb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|SSb~0_combout\ = (\inst6|data\(1) & ((\inst6|data\(0) & (\inst6|data\(3))) # (!\inst6|data\(0) & ((\inst6|data\(2)))))) # (!\inst6|data\(1) & (\inst6|data\(2) & (\inst6|data\(0) $ (\inst6|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data\(1),
	datab => \inst6|data\(0),
	datac => \inst6|data\(3),
	datad => \inst6|data\(2),
	combout => \inst4|SSb~0_combout\);

-- Location: LCCOMB_X58_Y53_N28
\inst4|SSc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|SSc~0_combout\ = (\inst6|data\(3) & (\inst6|data\(2) & ((\inst6|data\(1)) # (!\inst6|data\(0))))) # (!\inst6|data\(3) & (\inst6|data\(1) & (!\inst6|data\(0) & !\inst6|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data\(1),
	datab => \inst6|data\(0),
	datac => \inst6|data\(3),
	datad => \inst6|data\(2),
	combout => \inst4|SSc~0_combout\);

-- Location: LCCOMB_X58_Y53_N16
\inst4|SSd~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|SSd~0_combout\ = (\inst6|data\(1) & ((\inst6|data\(0) & ((\inst6|data\(2)))) # (!\inst6|data\(0) & (\inst6|data\(3) & !\inst6|data\(2))))) # (!\inst6|data\(1) & (!\inst6|data\(3) & (\inst6|data\(0) $ (\inst6|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data\(1),
	datab => \inst6|data\(0),
	datac => \inst6|data\(3),
	datad => \inst6|data\(2),
	combout => \inst4|SSd~0_combout\);

-- Location: LCCOMB_X58_Y53_N6
\inst4|SSe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|SSe~0_combout\ = (\inst6|data\(1) & (\inst6|data\(0) & (!\inst6|data\(3)))) # (!\inst6|data\(1) & ((\inst6|data\(2) & ((!\inst6|data\(3)))) # (!\inst6|data\(2) & (\inst6|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data\(1),
	datab => \inst6|data\(0),
	datac => \inst6|data\(3),
	datad => \inst6|data\(2),
	combout => \inst4|SSe~0_combout\);

-- Location: LCCOMB_X58_Y53_N0
\inst4|SSf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|SSf~0_combout\ = (\inst6|data\(1) & (!\inst6|data\(3) & ((\inst6|data\(0)) # (!\inst6|data\(2))))) # (!\inst6|data\(1) & (\inst6|data\(0) & (\inst6|data\(2) $ (!\inst6|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data\(1),
	datab => \inst6|data\(0),
	datac => \inst6|data\(2),
	datad => \inst6|data\(3),
	combout => \inst4|SSf~0_combout\);

-- Location: LCCOMB_X58_Y53_N22
\inst4|SSg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|SSg~0_combout\ = (\inst6|data\(0) & (!\inst6|data\(3) & (\inst6|data\(1) $ (!\inst6|data\(2))))) # (!\inst6|data\(0) & (!\inst6|data\(1) & (\inst6|data\(3) $ (!\inst6|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data\(3),
	datab => \inst6|data\(0),
	datac => \inst6|data\(1),
	datad => \inst6|data\(2),
	combout => \inst4|SSg~0_combout\);

-- Location: FF_X58_Y53_N31
\inst6|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	asdata => \inst6|data\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(4));

-- Location: FF_X58_Y53_N9
\inst6|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	asdata => \inst6|data\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(5));

-- Location: FF_X58_Y53_N15
\inst6|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	asdata => \inst6|data\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(6));

-- Location: FF_X58_Y53_N13
\inst6|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	asdata => \inst6|data\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(7));

-- Location: LCCOMB_X58_Y53_N10
\inst5|SSa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|SSa~0_combout\ = (\inst6|data\(6) & (!\inst6|data\(5) & (\inst6|data\(4) $ (!\inst6|data\(7))))) # (!\inst6|data\(6) & (\inst6|data\(4) & (\inst6|data\(5) $ (!\inst6|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data\(5),
	datab => \inst6|data\(6),
	datac => \inst6|data\(4),
	datad => \inst6|data\(7),
	combout => \inst5|SSa~0_combout\);

-- Location: LCCOMB_X58_Y53_N18
\inst5|SSb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|SSb~0_combout\ = (\inst6|data\(5) & ((\inst6|data\(4) & ((\inst6|data\(7)))) # (!\inst6|data\(4) & (\inst6|data\(6))))) # (!\inst6|data\(5) & (\inst6|data\(6) & (\inst6|data\(4) $ (\inst6|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data\(5),
	datab => \inst6|data\(6),
	datac => \inst6|data\(4),
	datad => \inst6|data\(7),
	combout => \inst5|SSb~0_combout\);

-- Location: LCCOMB_X58_Y53_N2
\inst5|SSc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|SSc~0_combout\ = (\inst6|data\(6) & (\inst6|data\(7) & ((\inst6|data\(5)) # (!\inst6|data\(4))))) # (!\inst6|data\(6) & (\inst6|data\(5) & (!\inst6|data\(4) & !\inst6|data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data\(5),
	datab => \inst6|data\(6),
	datac => \inst6|data\(4),
	datad => \inst6|data\(7),
	combout => \inst5|SSc~0_combout\);

-- Location: LCCOMB_X58_Y53_N30
\inst5|SSd~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|SSd~0_combout\ = (\inst6|data\(5) & ((\inst6|data\(6) & (\inst6|data\(4))) # (!\inst6|data\(6) & (!\inst6|data\(4) & \inst6|data\(7))))) # (!\inst6|data\(5) & (!\inst6|data\(7) & (\inst6|data\(6) $ (\inst6|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data\(5),
	datab => \inst6|data\(6),
	datac => \inst6|data\(4),
	datad => \inst6|data\(7),
	combout => \inst5|SSd~0_combout\);

-- Location: LCCOMB_X58_Y53_N12
\inst5|SSe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|SSe~0_combout\ = (\inst6|data\(5) & (\inst6|data\(4) & ((!\inst6|data\(7))))) # (!\inst6|data\(5) & ((\inst6|data\(6) & ((!\inst6|data\(7)))) # (!\inst6|data\(6) & (\inst6|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data\(4),
	datab => \inst6|data\(6),
	datac => \inst6|data\(7),
	datad => \inst6|data\(5),
	combout => \inst5|SSe~0_combout\);

-- Location: LCCOMB_X58_Y53_N14
\inst5|SSf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|SSf~0_combout\ = (\inst6|data\(4) & (\inst6|data\(7) $ (((\inst6|data\(5)) # (!\inst6|data\(6)))))) # (!\inst6|data\(4) & (\inst6|data\(5) & (!\inst6|data\(6) & !\inst6|data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data\(4),
	datab => \inst6|data\(5),
	datac => \inst6|data\(6),
	datad => \inst6|data\(7),
	combout => \inst5|SSf~0_combout\);

-- Location: LCCOMB_X58_Y53_N8
\inst5|SSg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|SSg~0_combout\ = (\inst6|data\(4) & (!\inst6|data\(7) & (\inst6|data\(6) $ (!\inst6|data\(5))))) # (!\inst6|data\(4) & (!\inst6|data\(5) & (\inst6|data\(6) $ (!\inst6|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data\(4),
	datab => \inst6|data\(6),
	datac => \inst6|data\(5),
	datad => \inst6|data\(7),
	combout => \inst5|SSg~0_combout\);

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

ww_S1A <= \S1A~output_o\;

ww_S1B <= \S1B~output_o\;

ww_S1C <= \S1C~output_o\;

ww_S1D <= \S1D~output_o\;

ww_S1E <= \S1E~output_o\;

ww_S1F <= \S1F~output_o\;

ww_S1G <= \S1G~output_o\;

ww_S2A <= \S2A~output_o\;

ww_S2B <= \S2B~output_o\;

ww_S2C <= \S2C~output_o\;

ww_S2D <= \S2D~output_o\;

ww_S2E <= \S2E~output_o\;

ww_S2F <= \S2F~output_o\;

ww_S2G <= \S2G~output_o\;

ww_S4A <= \S4A~output_o\;

ww_S4B <= \S4B~output_o\;

ww_S4C <= \S4C~output_o\;

ww_S4D <= \S4D~output_o\;

ww_S4E <= \S4E~output_o\;

ww_S4F <= \S4F~output_o\;

ww_S4G <= \S4G~output_o\;

ww_S5A <= \S5A~output_o\;

ww_S5B <= \S5B~output_o\;

ww_S5C <= \S5C~output_o\;

ww_S5D <= \S5D~output_o\;

ww_S5E <= \S5E~output_o\;

ww_S5F <= \S5F~output_o\;

ww_S5G <= \S5G~output_o\;

ww_S <= \S~output_o\;

ww_L0 <= \L0~output_o\;

ww_L1 <= \L1~output_o\;

ww_L2 <= \L2~output_o\;

ww_L3 <= \L3~output_o\;

ww_L4 <= \L4~output_o\;

ww_L5 <= \L5~output_o\;

ww_L7 <= \L7~output_o\;

ww_L6 <= \L6~output_o\;
END structure;


