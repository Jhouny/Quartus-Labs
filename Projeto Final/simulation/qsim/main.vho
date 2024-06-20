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

-- DATE "06/20/2024 00:43:34"

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
	ADDRESS : OUT std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	endereco : IN std_logic_vector(7 DOWNTO 0);
	Q : OUT std_logic_vector(23 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- ADDRESS[7]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[5]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[4]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[23]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[22]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[21]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[20]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[19]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[18]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[17]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[16]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[15]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[14]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[13]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[12]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[11]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[10]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[9]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[3]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[4]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[5]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[6]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[7]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ADDRESS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_endereco : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
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
SIGNAL \Q[23]~output_o\ : std_logic;
SIGNAL \Q[22]~output_o\ : std_logic;
SIGNAL \Q[21]~output_o\ : std_logic;
SIGNAL \Q[20]~output_o\ : std_logic;
SIGNAL \Q[19]~output_o\ : std_logic;
SIGNAL \Q[18]~output_o\ : std_logic;
SIGNAL \Q[17]~output_o\ : std_logic;
SIGNAL \Q[16]~output_o\ : std_logic;
SIGNAL \Q[15]~output_o\ : std_logic;
SIGNAL \Q[14]~output_o\ : std_logic;
SIGNAL \Q[13]~output_o\ : std_logic;
SIGNAL \Q[12]~output_o\ : std_logic;
SIGNAL \Q[11]~output_o\ : std_logic;
SIGNAL \Q[10]~output_o\ : std_logic;
SIGNAL \Q[9]~output_o\ : std_logic;
SIGNAL \Q[8]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \endereco[7]~input_o\ : std_logic;
SIGNAL \inst|reg1|dff3~feeder_combout\ : std_logic;
SIGNAL \inst|reg1|dff3~q\ : std_logic;
SIGNAL \inst123|reg1|dff3~feeder_combout\ : std_logic;
SIGNAL \inst123|reg1|dff3~q\ : std_logic;
SIGNAL \endereco[6]~input_o\ : std_logic;
SIGNAL \inst|reg1|dff2~feeder_combout\ : std_logic;
SIGNAL \inst|reg1|dff2~q\ : std_logic;
SIGNAL \inst123|reg1|dff2~feeder_combout\ : std_logic;
SIGNAL \inst123|reg1|dff2~q\ : std_logic;
SIGNAL \endereco[5]~input_o\ : std_logic;
SIGNAL \inst|reg1|dff1~feeder_combout\ : std_logic;
SIGNAL \inst|reg1|dff1~q\ : std_logic;
SIGNAL \inst123|reg1|dff1~feeder_combout\ : std_logic;
SIGNAL \inst123|reg1|dff1~q\ : std_logic;
SIGNAL \endereco[4]~input_o\ : std_logic;
SIGNAL \inst|reg1|dff0~feeder_combout\ : std_logic;
SIGNAL \inst|reg1|dff0~q\ : std_logic;
SIGNAL \inst123|reg1|dff0~feeder_combout\ : std_logic;
SIGNAL \inst123|reg1|dff0~q\ : std_logic;
SIGNAL \endereco[3]~input_o\ : std_logic;
SIGNAL \inst|reg0|dff3~q\ : std_logic;
SIGNAL \inst123|reg0|dff3~feeder_combout\ : std_logic;
SIGNAL \inst123|reg0|dff3~q\ : std_logic;
SIGNAL \endereco[2]~input_o\ : std_logic;
SIGNAL \inst|reg0|dff2~feeder_combout\ : std_logic;
SIGNAL \inst|reg0|dff2~q\ : std_logic;
SIGNAL \inst123|reg0|dff2~feeder_combout\ : std_logic;
SIGNAL \inst123|reg0|dff2~q\ : std_logic;
SIGNAL \endereco[1]~input_o\ : std_logic;
SIGNAL \inst|reg0|dff1~feeder_combout\ : std_logic;
SIGNAL \inst|reg0|dff1~q\ : std_logic;
SIGNAL \inst123|reg0|dff1~feeder_combout\ : std_logic;
SIGNAL \inst123|reg0|dff1~q\ : std_logic;
SIGNAL \endereco[0]~input_o\ : std_logic;
SIGNAL \inst|reg0|dff0~feeder_combout\ : std_logic;
SIGNAL \inst|reg0|dff0~q\ : std_logic;
SIGNAL \inst123|reg0|dff0~feeder_combout\ : std_logic;
SIGNAL \inst123|reg0|dff0~q\ : std_logic;
SIGNAL \inst_mem|altsyncram_component|auto_generated|q_a\ : std_logic_vector(23 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ADDRESS <= ww_ADDRESS;
ww_CLK <= CLK;
ww_endereco <= endereco;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\endereco[7]~input_o\ & \endereco[6]~input_o\ & \endereco[5]~input_o\ & \endereco[4]~input_o\ & \endereco[3]~input_o\ & \endereco[2]~input_o\ & \endereco[1]~input_o\ & 
\endereco[0]~input_o\);

\inst_mem|altsyncram_component|auto_generated|q_a\(0) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst_mem|altsyncram_component|auto_generated|q_a\(1) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst_mem|altsyncram_component|auto_generated|q_a\(2) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst_mem|altsyncram_component|auto_generated|q_a\(3) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst_mem|altsyncram_component|auto_generated|q_a\(4) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst_mem|altsyncram_component|auto_generated|q_a\(5) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst_mem|altsyncram_component|auto_generated|q_a\(6) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst_mem|altsyncram_component|auto_generated|q_a\(7) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst_mem|altsyncram_component|auto_generated|q_a\(8) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst_mem|altsyncram_component|auto_generated|q_a\(9) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst_mem|altsyncram_component|auto_generated|q_a\(10) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst_mem|altsyncram_component|auto_generated|q_a\(11) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst_mem|altsyncram_component|auto_generated|q_a\(12) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst_mem|altsyncram_component|auto_generated|q_a\(13) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst_mem|altsyncram_component|auto_generated|q_a\(14) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst_mem|altsyncram_component|auto_generated|q_a\(15) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst_mem|altsyncram_component|auto_generated|q_a\(16) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst_mem|altsyncram_component|auto_generated|q_a\(17) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\inst_mem|altsyncram_component|auto_generated|q_a\(18) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\inst_mem|altsyncram_component|auto_generated|q_a\(19) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\inst_mem|altsyncram_component|auto_generated|q_a\(20) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\inst_mem|altsyncram_component|auto_generated|q_a\(21) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\inst_mem|altsyncram_component|auto_generated|q_a\(22) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\inst_mem|altsyncram_component|auto_generated|q_a\(23) <= \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
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

-- Location: IOOBUF_X0_Y3_N16
\ADDRESS[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst123|reg1|dff3~q\,
	devoe => ww_devoe,
	o => \ADDRESS[7]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\ADDRESS[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst123|reg1|dff2~q\,
	devoe => ww_devoe,
	o => \ADDRESS[6]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\ADDRESS[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst123|reg1|dff1~q\,
	devoe => ww_devoe,
	o => \ADDRESS[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\ADDRESS[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst123|reg1|dff0~q\,
	devoe => ww_devoe,
	o => \ADDRESS[4]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\ADDRESS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst123|reg0|dff3~q\,
	devoe => ww_devoe,
	o => \ADDRESS[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\ADDRESS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst123|reg0|dff2~q\,
	devoe => ww_devoe,
	o => \ADDRESS[2]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\ADDRESS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst123|reg0|dff1~q\,
	devoe => ww_devoe,
	o => \ADDRESS[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\ADDRESS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst123|reg0|dff0~q\,
	devoe => ww_devoe,
	o => \ADDRESS[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\Q[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \Q[23]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\Q[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \Q[22]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\Q[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \Q[21]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\Q[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \Q[20]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\Q[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \Q[19]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\Q[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \Q[18]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Q[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \Q[17]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\Q[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \Q[16]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\Q[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \Q[15]~output_o\);

-- Location: IOOBUF_X0_Y16_N9
\Q[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \Q[14]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\Q[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \Q[13]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\Q[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \Q[12]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\Q[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \Q[11]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\Q[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \Q[10]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\Q[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \Q[9]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\Q[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \Q[8]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\Q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X0_Y16_N2
\Q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\Q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

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

-- Location: IOIBUF_X0_Y9_N1
\endereco[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(7),
	o => \endereco[7]~input_o\);

-- Location: LCCOMB_X1_Y7_N18
\inst|reg1|dff3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg1|dff3~feeder_combout\ = \endereco[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \endereco[7]~input_o\,
	combout => \inst|reg1|dff3~feeder_combout\);

-- Location: FF_X1_Y7_N19
\inst|reg1|dff3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|reg1|dff3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg1|dff3~q\);

-- Location: LCCOMB_X1_Y7_N16
\inst123|reg1|dff3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst123|reg1|dff3~feeder_combout\ = \inst|reg1|dff3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reg1|dff3~q\,
	combout => \inst123|reg1|dff3~feeder_combout\);

-- Location: FF_X1_Y7_N17
\inst123|reg1|dff3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst123|reg1|dff3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|reg1|dff3~q\);

-- Location: IOIBUF_X0_Y15_N8
\endereco[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(6),
	o => \endereco[6]~input_o\);

-- Location: LCCOMB_X1_Y15_N18
\inst|reg1|dff2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg1|dff2~feeder_combout\ = \endereco[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \endereco[6]~input_o\,
	combout => \inst|reg1|dff2~feeder_combout\);

-- Location: FF_X1_Y15_N19
\inst|reg1|dff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|reg1|dff2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg1|dff2~q\);

-- Location: LCCOMB_X1_Y15_N16
\inst123|reg1|dff2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst123|reg1|dff2~feeder_combout\ = \inst|reg1|dff2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reg1|dff2~q\,
	combout => \inst123|reg1|dff2~feeder_combout\);

-- Location: FF_X1_Y15_N17
\inst123|reg1|dff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst123|reg1|dff2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|reg1|dff2~q\);

-- Location: IOIBUF_X0_Y23_N22
\endereco[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(5),
	o => \endereco[5]~input_o\);

-- Location: LCCOMB_X3_Y24_N18
\inst|reg1|dff1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg1|dff1~feeder_combout\ = \endereco[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \endereco[5]~input_o\,
	combout => \inst|reg1|dff1~feeder_combout\);

-- Location: FF_X3_Y24_N19
\inst|reg1|dff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|reg1|dff1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg1|dff1~q\);

-- Location: LCCOMB_X3_Y24_N0
\inst123|reg1|dff1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst123|reg1|dff1~feeder_combout\ = \inst|reg1|dff1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reg1|dff1~q\,
	combout => \inst123|reg1|dff1~feeder_combout\);

-- Location: FF_X3_Y24_N1
\inst123|reg1|dff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst123|reg1|dff1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|reg1|dff1~q\);

-- Location: IOIBUF_X0_Y3_N22
\endereco[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(4),
	o => \endereco[4]~input_o\);

-- Location: LCCOMB_X2_Y7_N18
\inst|reg1|dff0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg1|dff0~feeder_combout\ = \endereco[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \endereco[4]~input_o\,
	combout => \inst|reg1|dff0~feeder_combout\);

-- Location: FF_X2_Y7_N19
\inst|reg1|dff0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|reg1|dff0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg1|dff0~q\);

-- Location: LCCOMB_X2_Y7_N8
\inst123|reg1|dff0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst123|reg1|dff0~feeder_combout\ = \inst|reg1|dff0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reg1|dff0~q\,
	combout => \inst123|reg1|dff0~feeder_combout\);

-- Location: FF_X2_Y7_N9
\inst123|reg1|dff0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst123|reg1|dff0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|reg1|dff0~q\);

-- Location: IOIBUF_X0_Y23_N8
\endereco[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(3),
	o => \endereco[3]~input_o\);

-- Location: FF_X4_Y24_N19
\inst|reg0|dff3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \endereco[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg0|dff3~q\);

-- Location: LCCOMB_X4_Y24_N0
\inst123|reg0|dff3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst123|reg0|dff3~feeder_combout\ = \inst|reg0|dff3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reg0|dff3~q\,
	combout => \inst123|reg0|dff3~feeder_combout\);

-- Location: FF_X4_Y24_N1
\inst123|reg0|dff3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst123|reg0|dff3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|reg0|dff3~q\);

-- Location: IOIBUF_X0_Y25_N22
\endereco[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(2),
	o => \endereco[2]~input_o\);

-- Location: LCCOMB_X2_Y24_N18
\inst|reg0|dff2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg0|dff2~feeder_combout\ = \endereco[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \endereco[2]~input_o\,
	combout => \inst|reg0|dff2~feeder_combout\);

-- Location: FF_X2_Y24_N19
\inst|reg0|dff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|reg0|dff2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg0|dff2~q\);

-- Location: LCCOMB_X2_Y24_N0
\inst123|reg0|dff2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst123|reg0|dff2~feeder_combout\ = \inst|reg0|dff2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reg0|dff2~q\,
	combout => \inst123|reg0|dff2~feeder_combout\);

-- Location: FF_X2_Y24_N1
\inst123|reg0|dff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst123|reg0|dff2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|reg0|dff2~q\);

-- Location: IOIBUF_X0_Y15_N15
\endereco[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(1),
	o => \endereco[1]~input_o\);

-- Location: LCCOMB_X2_Y15_N18
\inst|reg0|dff1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg0|dff1~feeder_combout\ = \endereco[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \endereco[1]~input_o\,
	combout => \inst|reg0|dff1~feeder_combout\);

-- Location: FF_X2_Y15_N19
\inst|reg0|dff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|reg0|dff1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg0|dff1~q\);

-- Location: LCCOMB_X2_Y15_N4
\inst123|reg0|dff1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst123|reg0|dff1~feeder_combout\ = \inst|reg0|dff1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reg0|dff1~q\,
	combout => \inst123|reg0|dff1~feeder_combout\);

-- Location: FF_X2_Y15_N5
\inst123|reg0|dff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst123|reg0|dff1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|reg0|dff1~q\);

-- Location: IOIBUF_X0_Y23_N1
\endereco[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(0),
	o => \endereco[0]~input_o\);

-- Location: LCCOMB_X1_Y24_N18
\inst|reg0|dff0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|reg0|dff0~feeder_combout\ = \endereco[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \endereco[0]~input_o\,
	combout => \inst|reg0|dff0~feeder_combout\);

-- Location: FF_X1_Y24_N19
\inst|reg0|dff0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|reg0|dff0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg0|dff0~q\);

-- Location: LCCOMB_X1_Y24_N12
\inst123|reg0|dff0~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst123|reg0|dff0~feeder_combout\ = \inst|reg0|dff0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reg0|dff0~q\,
	combout => \inst123|reg0|dff0~feeder_combout\);

-- Location: FF_X1_Y24_N13
\inst123|reg0|dff0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst123|reg0|dff0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|reg0|dff0~q\);

-- Location: M9K_X5_Y15_N0
\inst_mem|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000F",
	mem_init3 => X"FFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000",
	mem_init2 => X"FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF00000000000000000000000000000",
	mem_init1 => X"0FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF0",
	mem_init0 => X"00FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000FFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFF000FFFFFF000FFFFFF000FFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "output.hex",
	init_file_layout => "port_a",
	logical_ram_name => "mem0:inst_mem|altsyncram:altsyncram_component|altsyncram_hkq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portaaddr => \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst_mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

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

ww_Q(23) <= \Q[23]~output_o\;

ww_Q(22) <= \Q[22]~output_o\;

ww_Q(21) <= \Q[21]~output_o\;

ww_Q(20) <= \Q[20]~output_o\;

ww_Q(19) <= \Q[19]~output_o\;

ww_Q(18) <= \Q[18]~output_o\;

ww_Q(17) <= \Q[17]~output_o\;

ww_Q(16) <= \Q[16]~output_o\;

ww_Q(15) <= \Q[15]~output_o\;

ww_Q(14) <= \Q[14]~output_o\;

ww_Q(13) <= \Q[13]~output_o\;

ww_Q(12) <= \Q[12]~output_o\;

ww_Q(11) <= \Q[11]~output_o\;

ww_Q(10) <= \Q[10]~output_o\;

ww_Q(9) <= \Q[9]~output_o\;

ww_Q(8) <= \Q[8]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;
END structure;


