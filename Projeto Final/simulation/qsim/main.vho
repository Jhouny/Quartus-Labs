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

-- DATE "06/20/2024 14:49:02"

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
	endereco : OUT std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	StartStop : IN std_logic;
	RGB : OUT std_logic_vector(23 DOWNTO 0)
	);
END tmp_2;

-- Design Ports Information
-- endereco[7]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[4]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[2]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[23]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[22]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[21]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[20]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[19]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[18]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[17]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[16]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[15]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[14]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[13]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[12]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[11]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[10]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[9]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[8]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[7]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[5]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[4]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[3]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[0]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- StartStop	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_endereco : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_StartStop : std_logic;
SIGNAL ww_RGB : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst8|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \endereco[7]~output_o\ : std_logic;
SIGNAL \endereco[6]~output_o\ : std_logic;
SIGNAL \endereco[5]~output_o\ : std_logic;
SIGNAL \endereco[4]~output_o\ : std_logic;
SIGNAL \endereco[3]~output_o\ : std_logic;
SIGNAL \endereco[2]~output_o\ : std_logic;
SIGNAL \endereco[1]~output_o\ : std_logic;
SIGNAL \endereco[0]~output_o\ : std_logic;
SIGNAL \RGB[23]~output_o\ : std_logic;
SIGNAL \RGB[22]~output_o\ : std_logic;
SIGNAL \RGB[21]~output_o\ : std_logic;
SIGNAL \RGB[20]~output_o\ : std_logic;
SIGNAL \RGB[19]~output_o\ : std_logic;
SIGNAL \RGB[18]~output_o\ : std_logic;
SIGNAL \RGB[17]~output_o\ : std_logic;
SIGNAL \RGB[16]~output_o\ : std_logic;
SIGNAL \RGB[15]~output_o\ : std_logic;
SIGNAL \RGB[14]~output_o\ : std_logic;
SIGNAL \RGB[13]~output_o\ : std_logic;
SIGNAL \RGB[12]~output_o\ : std_logic;
SIGNAL \RGB[11]~output_o\ : std_logic;
SIGNAL \RGB[10]~output_o\ : std_logic;
SIGNAL \RGB[9]~output_o\ : std_logic;
SIGNAL \RGB[8]~output_o\ : std_logic;
SIGNAL \RGB[7]~output_o\ : std_logic;
SIGNAL \RGB[6]~output_o\ : std_logic;
SIGNAL \RGB[5]~output_o\ : std_logic;
SIGNAL \RGB[4]~output_o\ : std_logic;
SIGNAL \RGB[3]~output_o\ : std_logic;
SIGNAL \RGB[2]~output_o\ : std_logic;
SIGNAL \RGB[1]~output_o\ : std_logic;
SIGNAL \RGB[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst8|Add0~7\ : std_logic;
SIGNAL \inst8|Add0~8_combout\ : std_logic;
SIGNAL \inst8|Add0~9\ : std_logic;
SIGNAL \inst8|Add0~10_combout\ : std_logic;
SIGNAL \inst8|Add0~11\ : std_logic;
SIGNAL \inst8|Add0~12_combout\ : std_logic;
SIGNAL \inst8|Add0~13\ : std_logic;
SIGNAL \inst8|Add0~14_combout\ : std_logic;
SIGNAL \inst8|Add0~15\ : std_logic;
SIGNAL \inst8|Add0~16_combout\ : std_logic;
SIGNAL \inst8|Add0~17\ : std_logic;
SIGNAL \inst8|Add0~18_combout\ : std_logic;
SIGNAL \inst8|Add0~19\ : std_logic;
SIGNAL \inst8|Add0~20_combout\ : std_logic;
SIGNAL \inst8|Add0~21\ : std_logic;
SIGNAL \inst8|Add0~22_combout\ : std_logic;
SIGNAL \inst8|Add0~23\ : std_logic;
SIGNAL \inst8|Add0~24_combout\ : std_logic;
SIGNAL \inst8|Add0~25\ : std_logic;
SIGNAL \inst8|Add0~26_combout\ : std_logic;
SIGNAL \inst8|Add0~27\ : std_logic;
SIGNAL \inst8|Add0~28_combout\ : std_logic;
SIGNAL \inst8|Add0~29\ : std_logic;
SIGNAL \inst8|Add0~30_combout\ : std_logic;
SIGNAL \inst8|Add0~31\ : std_logic;
SIGNAL \inst8|Add0~32_combout\ : std_logic;
SIGNAL \inst8|Add0~33\ : std_logic;
SIGNAL \inst8|Add0~34_combout\ : std_logic;
SIGNAL \inst8|Add0~35\ : std_logic;
SIGNAL \inst8|Add0~36_combout\ : std_logic;
SIGNAL \inst8|Add0~37\ : std_logic;
SIGNAL \inst8|Add0~38_combout\ : std_logic;
SIGNAL \inst8|Add0~39\ : std_logic;
SIGNAL \inst8|Add0~40_combout\ : std_logic;
SIGNAL \inst8|Add0~41\ : std_logic;
SIGNAL \inst8|Add0~42_combout\ : std_logic;
SIGNAL \inst8|Add0~43\ : std_logic;
SIGNAL \inst8|Add0~44_combout\ : std_logic;
SIGNAL \inst8|Add0~45\ : std_logic;
SIGNAL \inst8|Add0~46_combout\ : std_logic;
SIGNAL \inst8|Add0~47\ : std_logic;
SIGNAL \inst8|Add0~48_combout\ : std_logic;
SIGNAL \inst8|Add0~49\ : std_logic;
SIGNAL \inst8|Add0~50_combout\ : std_logic;
SIGNAL \inst8|Add0~51\ : std_logic;
SIGNAL \inst8|Add0~52_combout\ : std_logic;
SIGNAL \inst8|Add0~53\ : std_logic;
SIGNAL \inst8|Add0~54_combout\ : std_logic;
SIGNAL \inst8|Add0~55\ : std_logic;
SIGNAL \inst8|Add0~56_combout\ : std_logic;
SIGNAL \inst8|Add0~57\ : std_logic;
SIGNAL \inst8|Add0~58_combout\ : std_logic;
SIGNAL \inst8|Add0~59\ : std_logic;
SIGNAL \inst8|Add0~60_combout\ : std_logic;
SIGNAL \inst8|Add0~61\ : std_logic;
SIGNAL \inst8|Add0~62_combout\ : std_logic;
SIGNAL \inst8|Equal0~8_combout\ : std_logic;
SIGNAL \inst8|Equal0~7_combout\ : std_logic;
SIGNAL \inst8|Equal0~5_combout\ : std_logic;
SIGNAL \inst8|Equal0~6_combout\ : std_logic;
SIGNAL \inst8|Equal0~9_combout\ : std_logic;
SIGNAL \inst8|Add0~0_combout\ : std_logic;
SIGNAL \inst8|count~0_combout\ : std_logic;
SIGNAL \inst8|Add0~1\ : std_logic;
SIGNAL \inst8|Add0~2_combout\ : std_logic;
SIGNAL \inst8|count~1_combout\ : std_logic;
SIGNAL \inst8|Add0~3\ : std_logic;
SIGNAL \inst8|Add0~4_combout\ : std_logic;
SIGNAL \inst8|Add0~5\ : std_logic;
SIGNAL \inst8|Add0~6_combout\ : std_logic;
SIGNAL \inst8|Equal0~0_combout\ : std_logic;
SIGNAL \inst8|Equal0~3_combout\ : std_logic;
SIGNAL \inst8|Equal0~2_combout\ : std_logic;
SIGNAL \inst8|Equal0~1_combout\ : std_logic;
SIGNAL \inst8|Equal0~4_combout\ : std_logic;
SIGNAL \inst8|tmp~0_combout\ : std_logic;
SIGNAL \inst8|tmp~feeder_combout\ : std_logic;
SIGNAL \inst8|tmp~q\ : std_logic;
SIGNAL \inst8|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \StartStop~input_o\ : std_logic;
SIGNAL \inst6|count[0]~10_combout\ : std_logic;
SIGNAL \inst6|count[1]~9_combout\ : std_logic;
SIGNAL \inst6|count[2]~8_combout\ : std_logic;
SIGNAL \inst6|count[3]~0_combout\ : std_logic;
SIGNAL \inst6|count[3]~7_combout\ : std_logic;
SIGNAL \inst6|count[4]~6_combout\ : std_logic;
SIGNAL \inst6|count[5]~5_combout\ : std_logic;
SIGNAL \inst6|count[6]~3_combout\ : std_logic;
SIGNAL \inst6|count[6]~4_combout\ : std_logic;
SIGNAL \inst6|count[7]~1_combout\ : std_logic;
SIGNAL \inst6|count[7]~2_combout\ : std_logic;
SIGNAL \inst_mem17|altsyncram_component|auto_generated|q_a\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst6|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|count\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

endereco <= ww_endereco;
ww_CLK <= CLK;
ww_StartStop <= StartStop;
RGB <= ww_RGB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst6|count\(7) & \inst6|count\(6) & \inst6|count\(5) & \inst6|count\(4) & \inst6|count\(3) & \inst6|count\(2) & \inst6|count\(1) & \inst6|count\(0));

\inst_mem17|altsyncram_component|auto_generated|q_a\(0) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst_mem17|altsyncram_component|auto_generated|q_a\(1) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst_mem17|altsyncram_component|auto_generated|q_a\(2) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst_mem17|altsyncram_component|auto_generated|q_a\(3) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst_mem17|altsyncram_component|auto_generated|q_a\(4) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst_mem17|altsyncram_component|auto_generated|q_a\(5) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst_mem17|altsyncram_component|auto_generated|q_a\(6) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst_mem17|altsyncram_component|auto_generated|q_a\(7) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst_mem17|altsyncram_component|auto_generated|q_a\(8) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst_mem17|altsyncram_component|auto_generated|q_a\(9) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst_mem17|altsyncram_component|auto_generated|q_a\(10) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst_mem17|altsyncram_component|auto_generated|q_a\(11) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst_mem17|altsyncram_component|auto_generated|q_a\(12) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst_mem17|altsyncram_component|auto_generated|q_a\(13) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst_mem17|altsyncram_component|auto_generated|q_a\(14) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst_mem17|altsyncram_component|auto_generated|q_a\(15) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst_mem17|altsyncram_component|auto_generated|q_a\(16) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst_mem17|altsyncram_component|auto_generated|q_a\(17) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\inst_mem17|altsyncram_component|auto_generated|q_a\(18) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\inst_mem17|altsyncram_component|auto_generated|q_a\(19) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\inst_mem17|altsyncram_component|auto_generated|q_a\(20) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\inst_mem17|altsyncram_component|auto_generated|q_a\(21) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\inst_mem17|altsyncram_component|auto_generated|q_a\(22) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\inst_mem17|altsyncram_component|auto_generated|q_a\(23) <= \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst8|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst8|tmp~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
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

-- Location: IOOBUF_X0_Y15_N9
\endereco[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(7),
	devoe => ww_devoe,
	o => \endereco[7]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\endereco[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(6),
	devoe => ww_devoe,
	o => \endereco[6]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\endereco[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(5),
	devoe => ww_devoe,
	o => \endereco[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\endereco[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(4),
	devoe => ww_devoe,
	o => \endereco[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\endereco[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(3),
	devoe => ww_devoe,
	o => \endereco[3]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\endereco[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(2),
	devoe => ww_devoe,
	o => \endereco[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\endereco[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(1),
	devoe => ww_devoe,
	o => \endereco[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\endereco[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|count\(0),
	devoe => ww_devoe,
	o => \endereco[0]~output_o\);

-- Location: IOOBUF_X0_Y16_N9
\RGB[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \RGB[23]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\RGB[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \RGB[22]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\RGB[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \RGB[21]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\RGB[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \RGB[20]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\RGB[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \RGB[19]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\RGB[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \RGB[18]~output_o\);

-- Location: IOOBUF_X0_Y16_N2
\RGB[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \RGB[17]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\RGB[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \RGB[16]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\RGB[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \RGB[15]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\RGB[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \RGB[14]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\RGB[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \RGB[13]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\RGB[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \RGB[12]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\RGB[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \RGB[11]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\RGB[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \RGB[10]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\RGB[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \RGB[9]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\RGB[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \RGB[8]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\RGB[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \RGB[7]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\RGB[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \RGB[6]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\RGB[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \RGB[5]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\RGB[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \RGB[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\RGB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \RGB[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\RGB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \RGB[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\RGB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \RGB[1]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\RGB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mem17|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \RGB[0]~output_o\);

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

-- Location: LCCOMB_X46_Y51_N6
\inst8|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~6_combout\ = (\inst8|count\(3) & (!\inst8|Add0~5\)) # (!\inst8|count\(3) & ((\inst8|Add0~5\) # (GND)))
-- \inst8|Add0~7\ = CARRY((!\inst8|Add0~5\) # (!\inst8|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(3),
	datad => VCC,
	cin => \inst8|Add0~5\,
	combout => \inst8|Add0~6_combout\,
	cout => \inst8|Add0~7\);

-- Location: LCCOMB_X46_Y51_N8
\inst8|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~8_combout\ = (\inst8|count\(4) & (\inst8|Add0~7\ $ (GND))) # (!\inst8|count\(4) & (!\inst8|Add0~7\ & VCC))
-- \inst8|Add0~9\ = CARRY((\inst8|count\(4) & !\inst8|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(4),
	datad => VCC,
	cin => \inst8|Add0~7\,
	combout => \inst8|Add0~8_combout\,
	cout => \inst8|Add0~9\);

-- Location: FF_X46_Y51_N9
\inst8|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(4));

-- Location: LCCOMB_X46_Y51_N10
\inst8|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~10_combout\ = (\inst8|count\(5) & (!\inst8|Add0~9\)) # (!\inst8|count\(5) & ((\inst8|Add0~9\) # (GND)))
-- \inst8|Add0~11\ = CARRY((!\inst8|Add0~9\) # (!\inst8|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(5),
	datad => VCC,
	cin => \inst8|Add0~9\,
	combout => \inst8|Add0~10_combout\,
	cout => \inst8|Add0~11\);

-- Location: FF_X46_Y51_N11
\inst8|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(5));

-- Location: LCCOMB_X46_Y51_N12
\inst8|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~12_combout\ = (\inst8|count\(6) & (\inst8|Add0~11\ $ (GND))) # (!\inst8|count\(6) & (!\inst8|Add0~11\ & VCC))
-- \inst8|Add0~13\ = CARRY((\inst8|count\(6) & !\inst8|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(6),
	datad => VCC,
	cin => \inst8|Add0~11\,
	combout => \inst8|Add0~12_combout\,
	cout => \inst8|Add0~13\);

-- Location: FF_X46_Y51_N13
\inst8|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(6));

-- Location: LCCOMB_X46_Y51_N14
\inst8|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~14_combout\ = (\inst8|count\(7) & (!\inst8|Add0~13\)) # (!\inst8|count\(7) & ((\inst8|Add0~13\) # (GND)))
-- \inst8|Add0~15\ = CARRY((!\inst8|Add0~13\) # (!\inst8|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(7),
	datad => VCC,
	cin => \inst8|Add0~13\,
	combout => \inst8|Add0~14_combout\,
	cout => \inst8|Add0~15\);

-- Location: FF_X46_Y51_N15
\inst8|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(7));

-- Location: LCCOMB_X46_Y51_N16
\inst8|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~16_combout\ = (\inst8|count\(8) & (\inst8|Add0~15\ $ (GND))) # (!\inst8|count\(8) & (!\inst8|Add0~15\ & VCC))
-- \inst8|Add0~17\ = CARRY((\inst8|count\(8) & !\inst8|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(8),
	datad => VCC,
	cin => \inst8|Add0~15\,
	combout => \inst8|Add0~16_combout\,
	cout => \inst8|Add0~17\);

-- Location: FF_X46_Y51_N17
\inst8|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(8));

-- Location: LCCOMB_X46_Y51_N18
\inst8|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~18_combout\ = (\inst8|count\(9) & (!\inst8|Add0~17\)) # (!\inst8|count\(9) & ((\inst8|Add0~17\) # (GND)))
-- \inst8|Add0~19\ = CARRY((!\inst8|Add0~17\) # (!\inst8|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(9),
	datad => VCC,
	cin => \inst8|Add0~17\,
	combout => \inst8|Add0~18_combout\,
	cout => \inst8|Add0~19\);

-- Location: FF_X46_Y51_N19
\inst8|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(9));

-- Location: LCCOMB_X46_Y51_N20
\inst8|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~20_combout\ = (\inst8|count\(10) & (\inst8|Add0~19\ $ (GND))) # (!\inst8|count\(10) & (!\inst8|Add0~19\ & VCC))
-- \inst8|Add0~21\ = CARRY((\inst8|count\(10) & !\inst8|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(10),
	datad => VCC,
	cin => \inst8|Add0~19\,
	combout => \inst8|Add0~20_combout\,
	cout => \inst8|Add0~21\);

-- Location: FF_X46_Y51_N21
\inst8|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(10));

-- Location: LCCOMB_X46_Y51_N22
\inst8|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~22_combout\ = (\inst8|count\(11) & (!\inst8|Add0~21\)) # (!\inst8|count\(11) & ((\inst8|Add0~21\) # (GND)))
-- \inst8|Add0~23\ = CARRY((!\inst8|Add0~21\) # (!\inst8|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(11),
	datad => VCC,
	cin => \inst8|Add0~21\,
	combout => \inst8|Add0~22_combout\,
	cout => \inst8|Add0~23\);

-- Location: FF_X46_Y51_N23
\inst8|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(11));

-- Location: LCCOMB_X46_Y51_N24
\inst8|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~24_combout\ = (\inst8|count\(12) & (\inst8|Add0~23\ $ (GND))) # (!\inst8|count\(12) & (!\inst8|Add0~23\ & VCC))
-- \inst8|Add0~25\ = CARRY((\inst8|count\(12) & !\inst8|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(12),
	datad => VCC,
	cin => \inst8|Add0~23\,
	combout => \inst8|Add0~24_combout\,
	cout => \inst8|Add0~25\);

-- Location: FF_X46_Y51_N25
\inst8|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(12));

-- Location: LCCOMB_X46_Y51_N26
\inst8|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~26_combout\ = (\inst8|count\(13) & (!\inst8|Add0~25\)) # (!\inst8|count\(13) & ((\inst8|Add0~25\) # (GND)))
-- \inst8|Add0~27\ = CARRY((!\inst8|Add0~25\) # (!\inst8|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(13),
	datad => VCC,
	cin => \inst8|Add0~25\,
	combout => \inst8|Add0~26_combout\,
	cout => \inst8|Add0~27\);

-- Location: FF_X46_Y51_N27
\inst8|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(13));

-- Location: LCCOMB_X46_Y51_N28
\inst8|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~28_combout\ = (\inst8|count\(14) & (\inst8|Add0~27\ $ (GND))) # (!\inst8|count\(14) & (!\inst8|Add0~27\ & VCC))
-- \inst8|Add0~29\ = CARRY((\inst8|count\(14) & !\inst8|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(14),
	datad => VCC,
	cin => \inst8|Add0~27\,
	combout => \inst8|Add0~28_combout\,
	cout => \inst8|Add0~29\);

-- Location: FF_X46_Y51_N29
\inst8|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(14));

-- Location: LCCOMB_X46_Y51_N30
\inst8|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~30_combout\ = (\inst8|count\(15) & (!\inst8|Add0~29\)) # (!\inst8|count\(15) & ((\inst8|Add0~29\) # (GND)))
-- \inst8|Add0~31\ = CARRY((!\inst8|Add0~29\) # (!\inst8|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(15),
	datad => VCC,
	cin => \inst8|Add0~29\,
	combout => \inst8|Add0~30_combout\,
	cout => \inst8|Add0~31\);

-- Location: FF_X46_Y51_N31
\inst8|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(15));

-- Location: LCCOMB_X46_Y50_N0
\inst8|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~32_combout\ = (\inst8|count\(16) & (\inst8|Add0~31\ $ (GND))) # (!\inst8|count\(16) & (!\inst8|Add0~31\ & VCC))
-- \inst8|Add0~33\ = CARRY((\inst8|count\(16) & !\inst8|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(16),
	datad => VCC,
	cin => \inst8|Add0~31\,
	combout => \inst8|Add0~32_combout\,
	cout => \inst8|Add0~33\);

-- Location: FF_X46_Y50_N1
\inst8|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(16));

-- Location: LCCOMB_X46_Y50_N2
\inst8|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~34_combout\ = (\inst8|count\(17) & (!\inst8|Add0~33\)) # (!\inst8|count\(17) & ((\inst8|Add0~33\) # (GND)))
-- \inst8|Add0~35\ = CARRY((!\inst8|Add0~33\) # (!\inst8|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(17),
	datad => VCC,
	cin => \inst8|Add0~33\,
	combout => \inst8|Add0~34_combout\,
	cout => \inst8|Add0~35\);

-- Location: FF_X46_Y50_N3
\inst8|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(17));

-- Location: LCCOMB_X46_Y50_N4
\inst8|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~36_combout\ = (\inst8|count\(18) & (\inst8|Add0~35\ $ (GND))) # (!\inst8|count\(18) & (!\inst8|Add0~35\ & VCC))
-- \inst8|Add0~37\ = CARRY((\inst8|count\(18) & !\inst8|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(18),
	datad => VCC,
	cin => \inst8|Add0~35\,
	combout => \inst8|Add0~36_combout\,
	cout => \inst8|Add0~37\);

-- Location: FF_X46_Y50_N5
\inst8|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(18));

-- Location: LCCOMB_X46_Y50_N6
\inst8|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~38_combout\ = (\inst8|count\(19) & (!\inst8|Add0~37\)) # (!\inst8|count\(19) & ((\inst8|Add0~37\) # (GND)))
-- \inst8|Add0~39\ = CARRY((!\inst8|Add0~37\) # (!\inst8|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(19),
	datad => VCC,
	cin => \inst8|Add0~37\,
	combout => \inst8|Add0~38_combout\,
	cout => \inst8|Add0~39\);

-- Location: FF_X46_Y50_N7
\inst8|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(19));

-- Location: LCCOMB_X46_Y50_N8
\inst8|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~40_combout\ = (\inst8|count\(20) & (\inst8|Add0~39\ $ (GND))) # (!\inst8|count\(20) & (!\inst8|Add0~39\ & VCC))
-- \inst8|Add0~41\ = CARRY((\inst8|count\(20) & !\inst8|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(20),
	datad => VCC,
	cin => \inst8|Add0~39\,
	combout => \inst8|Add0~40_combout\,
	cout => \inst8|Add0~41\);

-- Location: FF_X46_Y50_N9
\inst8|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(20));

-- Location: LCCOMB_X46_Y50_N10
\inst8|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~42_combout\ = (\inst8|count\(21) & (!\inst8|Add0~41\)) # (!\inst8|count\(21) & ((\inst8|Add0~41\) # (GND)))
-- \inst8|Add0~43\ = CARRY((!\inst8|Add0~41\) # (!\inst8|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(21),
	datad => VCC,
	cin => \inst8|Add0~41\,
	combout => \inst8|Add0~42_combout\,
	cout => \inst8|Add0~43\);

-- Location: FF_X46_Y50_N11
\inst8|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(21));

-- Location: LCCOMB_X46_Y50_N12
\inst8|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~44_combout\ = (\inst8|count\(22) & (\inst8|Add0~43\ $ (GND))) # (!\inst8|count\(22) & (!\inst8|Add0~43\ & VCC))
-- \inst8|Add0~45\ = CARRY((\inst8|count\(22) & !\inst8|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(22),
	datad => VCC,
	cin => \inst8|Add0~43\,
	combout => \inst8|Add0~44_combout\,
	cout => \inst8|Add0~45\);

-- Location: FF_X46_Y50_N13
\inst8|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(22));

-- Location: LCCOMB_X46_Y50_N14
\inst8|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~46_combout\ = (\inst8|count\(23) & (!\inst8|Add0~45\)) # (!\inst8|count\(23) & ((\inst8|Add0~45\) # (GND)))
-- \inst8|Add0~47\ = CARRY((!\inst8|Add0~45\) # (!\inst8|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(23),
	datad => VCC,
	cin => \inst8|Add0~45\,
	combout => \inst8|Add0~46_combout\,
	cout => \inst8|Add0~47\);

-- Location: FF_X46_Y50_N15
\inst8|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(23));

-- Location: LCCOMB_X46_Y50_N16
\inst8|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~48_combout\ = (\inst8|count\(24) & (\inst8|Add0~47\ $ (GND))) # (!\inst8|count\(24) & (!\inst8|Add0~47\ & VCC))
-- \inst8|Add0~49\ = CARRY((\inst8|count\(24) & !\inst8|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(24),
	datad => VCC,
	cin => \inst8|Add0~47\,
	combout => \inst8|Add0~48_combout\,
	cout => \inst8|Add0~49\);

-- Location: FF_X46_Y50_N17
\inst8|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(24));

-- Location: LCCOMB_X46_Y50_N18
\inst8|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~50_combout\ = (\inst8|count\(25) & (!\inst8|Add0~49\)) # (!\inst8|count\(25) & ((\inst8|Add0~49\) # (GND)))
-- \inst8|Add0~51\ = CARRY((!\inst8|Add0~49\) # (!\inst8|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(25),
	datad => VCC,
	cin => \inst8|Add0~49\,
	combout => \inst8|Add0~50_combout\,
	cout => \inst8|Add0~51\);

-- Location: FF_X46_Y50_N19
\inst8|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(25));

-- Location: LCCOMB_X46_Y50_N20
\inst8|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~52_combout\ = (\inst8|count\(26) & (\inst8|Add0~51\ $ (GND))) # (!\inst8|count\(26) & (!\inst8|Add0~51\ & VCC))
-- \inst8|Add0~53\ = CARRY((\inst8|count\(26) & !\inst8|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(26),
	datad => VCC,
	cin => \inst8|Add0~51\,
	combout => \inst8|Add0~52_combout\,
	cout => \inst8|Add0~53\);

-- Location: FF_X46_Y50_N21
\inst8|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(26));

-- Location: LCCOMB_X46_Y50_N22
\inst8|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~54_combout\ = (\inst8|count\(27) & (!\inst8|Add0~53\)) # (!\inst8|count\(27) & ((\inst8|Add0~53\) # (GND)))
-- \inst8|Add0~55\ = CARRY((!\inst8|Add0~53\) # (!\inst8|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(27),
	datad => VCC,
	cin => \inst8|Add0~53\,
	combout => \inst8|Add0~54_combout\,
	cout => \inst8|Add0~55\);

-- Location: FF_X46_Y50_N23
\inst8|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(27));

-- Location: LCCOMB_X46_Y50_N24
\inst8|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~56_combout\ = (\inst8|count\(28) & (\inst8|Add0~55\ $ (GND))) # (!\inst8|count\(28) & (!\inst8|Add0~55\ & VCC))
-- \inst8|Add0~57\ = CARRY((\inst8|count\(28) & !\inst8|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(28),
	datad => VCC,
	cin => \inst8|Add0~55\,
	combout => \inst8|Add0~56_combout\,
	cout => \inst8|Add0~57\);

-- Location: FF_X46_Y50_N25
\inst8|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(28));

-- Location: LCCOMB_X46_Y50_N26
\inst8|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~58_combout\ = (\inst8|count\(29) & (!\inst8|Add0~57\)) # (!\inst8|count\(29) & ((\inst8|Add0~57\) # (GND)))
-- \inst8|Add0~59\ = CARRY((!\inst8|Add0~57\) # (!\inst8|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(29),
	datad => VCC,
	cin => \inst8|Add0~57\,
	combout => \inst8|Add0~58_combout\,
	cout => \inst8|Add0~59\);

-- Location: FF_X46_Y50_N27
\inst8|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(29));

-- Location: LCCOMB_X46_Y50_N28
\inst8|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~60_combout\ = (\inst8|count\(30) & (\inst8|Add0~59\ $ (GND))) # (!\inst8|count\(30) & (!\inst8|Add0~59\ & VCC))
-- \inst8|Add0~61\ = CARRY((\inst8|count\(30) & !\inst8|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(30),
	datad => VCC,
	cin => \inst8|Add0~59\,
	combout => \inst8|Add0~60_combout\,
	cout => \inst8|Add0~61\);

-- Location: FF_X46_Y50_N29
\inst8|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(30));

-- Location: LCCOMB_X46_Y50_N30
\inst8|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~62_combout\ = \inst8|count\(31) $ (\inst8|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(31),
	cin => \inst8|Add0~61\,
	combout => \inst8|Add0~62_combout\);

-- Location: FF_X46_Y50_N31
\inst8|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(31));

-- Location: LCCOMB_X45_Y50_N10
\inst8|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Equal0~8_combout\ = (!\inst8|count\(31) & (!\inst8|count\(30) & (!\inst8|count\(28) & !\inst8|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(31),
	datab => \inst8|count\(30),
	datac => \inst8|count\(28),
	datad => \inst8|count\(29),
	combout => \inst8|Equal0~8_combout\);

-- Location: LCCOMB_X45_Y50_N28
\inst8|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Equal0~7_combout\ = (!\inst8|count\(26) & (!\inst8|count\(25) & (!\inst8|count\(27) & !\inst8|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(26),
	datab => \inst8|count\(25),
	datac => \inst8|count\(27),
	datad => \inst8|count\(24),
	combout => \inst8|Equal0~7_combout\);

-- Location: LCCOMB_X45_Y50_N8
\inst8|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Equal0~5_combout\ = (!\inst8|count\(18) & (!\inst8|count\(16) & (!\inst8|count\(17) & !\inst8|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(18),
	datab => \inst8|count\(16),
	datac => \inst8|count\(17),
	datad => \inst8|count\(19),
	combout => \inst8|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y50_N18
\inst8|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Equal0~6_combout\ = (!\inst8|count\(23) & (!\inst8|count\(20) & (!\inst8|count\(21) & !\inst8|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(23),
	datab => \inst8|count\(20),
	datac => \inst8|count\(21),
	datad => \inst8|count\(22),
	combout => \inst8|Equal0~6_combout\);

-- Location: LCCOMB_X45_Y50_N0
\inst8|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Equal0~9_combout\ = (\inst8|Equal0~8_combout\ & (\inst8|Equal0~7_combout\ & (\inst8|Equal0~5_combout\ & \inst8|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~8_combout\,
	datab => \inst8|Equal0~7_combout\,
	datac => \inst8|Equal0~5_combout\,
	datad => \inst8|Equal0~6_combout\,
	combout => \inst8|Equal0~9_combout\);

-- Location: LCCOMB_X46_Y51_N0
\inst8|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~0_combout\ = \inst8|count\(0) $ (GND)
-- \inst8|Add0~1\ = CARRY(!\inst8|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(0),
	datad => VCC,
	combout => \inst8|Add0~0_combout\,
	cout => \inst8|Add0~1\);

-- Location: LCCOMB_X45_Y51_N16
\inst8|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|count~0_combout\ = (!\inst8|Add0~0_combout\ & ((!\inst8|Equal0~4_combout\) # (!\inst8|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Equal0~9_combout\,
	datac => \inst8|Equal0~4_combout\,
	datad => \inst8|Add0~0_combout\,
	combout => \inst8|count~0_combout\);

-- Location: FF_X46_Y51_N1
\inst8|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|count~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(0));

-- Location: LCCOMB_X46_Y51_N2
\inst8|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~2_combout\ = (\inst8|count\(1) & (!\inst8|Add0~1\)) # (!\inst8|count\(1) & ((\inst8|Add0~1\) # (GND)))
-- \inst8|Add0~3\ = CARRY((!\inst8|Add0~1\) # (!\inst8|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(1),
	datad => VCC,
	cin => \inst8|Add0~1\,
	combout => \inst8|Add0~2_combout\,
	cout => \inst8|Add0~3\);

-- Location: LCCOMB_X45_Y51_N6
\inst8|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|count~1_combout\ = (\inst8|Add0~2_combout\ & ((!\inst8|Equal0~9_combout\) # (!\inst8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~4_combout\,
	datab => \inst8|Equal0~9_combout\,
	datac => \inst8|Add0~2_combout\,
	combout => \inst8|count~1_combout\);

-- Location: FF_X46_Y51_N3
\inst8|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|count~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(1));

-- Location: LCCOMB_X46_Y51_N4
\inst8|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Add0~4_combout\ = (\inst8|count\(2) & (\inst8|Add0~3\ $ (GND))) # (!\inst8|count\(2) & (!\inst8|Add0~3\ & VCC))
-- \inst8|Add0~5\ = CARRY((\inst8|count\(2) & !\inst8|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(2),
	datad => VCC,
	cin => \inst8|Add0~3\,
	combout => \inst8|Add0~4_combout\,
	cout => \inst8|Add0~5\);

-- Location: FF_X46_Y51_N5
\inst8|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(2));

-- Location: FF_X46_Y51_N7
\inst8|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(3));

-- Location: LCCOMB_X45_Y51_N22
\inst8|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Equal0~0_combout\ = (!\inst8|count\(3) & (!\inst8|count\(0) & (!\inst8|count\(2) & !\inst8|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(3),
	datab => \inst8|count\(0),
	datac => \inst8|count\(2),
	datad => \inst8|count\(1),
	combout => \inst8|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y51_N28
\inst8|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Equal0~3_combout\ = (!\inst8|count\(15) & (!\inst8|count\(14) & (!\inst8|count\(13) & !\inst8|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(15),
	datab => \inst8|count\(14),
	datac => \inst8|count\(13),
	datad => \inst8|count\(12),
	combout => \inst8|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y51_N14
\inst8|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Equal0~2_combout\ = (!\inst8|count\(10) & (!\inst8|count\(8) & (!\inst8|count\(9) & !\inst8|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(10),
	datab => \inst8|count\(8),
	datac => \inst8|count\(9),
	datad => \inst8|count\(11),
	combout => \inst8|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y51_N18
\inst8|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Equal0~1_combout\ = (!\inst8|count\(5) & (!\inst8|count\(4) & (!\inst8|count\(7) & !\inst8|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(5),
	datab => \inst8|count\(4),
	datac => \inst8|count\(7),
	datad => \inst8|count\(6),
	combout => \inst8|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y51_N30
\inst8|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Equal0~4_combout\ = (\inst8|Equal0~0_combout\ & (\inst8|Equal0~3_combout\ & (\inst8|Equal0~2_combout\ & \inst8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~0_combout\,
	datab => \inst8|Equal0~3_combout\,
	datac => \inst8|Equal0~2_combout\,
	datad => \inst8|Equal0~1_combout\,
	combout => \inst8|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y51_N26
\inst8|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|tmp~0_combout\ = \inst8|tmp~q\ $ (((\inst8|Equal0~4_combout\ & \inst8|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|tmp~q\,
	datac => \inst8|Equal0~4_combout\,
	datad => \inst8|Equal0~9_combout\,
	combout => \inst8|tmp~0_combout\);

-- Location: LCCOMB_X45_Y51_N0
\inst8|tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|tmp~feeder_combout\ = \inst8|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tmp~0_combout\,
	combout => \inst8|tmp~feeder_combout\);

-- Location: FF_X45_Y51_N1
\inst8|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tmp~q\);

-- Location: CLKCTRL_G12
\inst8|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst8|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst8|tmp~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y18_N1
\StartStop~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_StartStop,
	o => \StartStop~input_o\);

-- Location: LCCOMB_X4_Y14_N10
\inst6|count[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[0]~10_combout\ = \inst6|count\(0) $ (\StartStop~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|count\(0),
	datad => \StartStop~input_o\,
	combout => \inst6|count[0]~10_combout\);

-- Location: FF_X4_Y14_N11
\inst6|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|tmp~clkctrl_outclk\,
	d => \inst6|count[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(0));

-- Location: LCCOMB_X4_Y14_N8
\inst6|count[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[1]~9_combout\ = \inst6|count\(1) $ (((\StartStop~input_o\ & \inst6|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStop~input_o\,
	datac => \inst6|count\(1),
	datad => \inst6|count\(0),
	combout => \inst6|count[1]~9_combout\);

-- Location: FF_X4_Y14_N9
\inst6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|tmp~clkctrl_outclk\,
	d => \inst6|count[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(1));

-- Location: LCCOMB_X4_Y14_N22
\inst6|count[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[2]~8_combout\ = \inst6|count\(2) $ (((\StartStop~input_o\ & (\inst6|count\(1) & \inst6|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStop~input_o\,
	datab => \inst6|count\(1),
	datac => \inst6|count\(2),
	datad => \inst6|count\(0),
	combout => \inst6|count[2]~8_combout\);

-- Location: FF_X4_Y14_N23
\inst6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|tmp~clkctrl_outclk\,
	d => \inst6|count[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(2));

-- Location: LCCOMB_X4_Y14_N20
\inst6|count[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[3]~0_combout\ = (\inst6|count\(2) & (\StartStop~input_o\ & (\inst6|count\(1) & \inst6|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(2),
	datab => \StartStop~input_o\,
	datac => \inst6|count\(1),
	datad => \inst6|count\(0),
	combout => \inst6|count[3]~0_combout\);

-- Location: LCCOMB_X4_Y14_N4
\inst6|count[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[3]~7_combout\ = \inst6|count\(3) $ (\inst6|count[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|count\(3),
	datad => \inst6|count[3]~0_combout\,
	combout => \inst6|count[3]~7_combout\);

-- Location: FF_X4_Y14_N5
\inst6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|tmp~clkctrl_outclk\,
	d => \inst6|count[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(3));

-- Location: LCCOMB_X4_Y14_N6
\inst6|count[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[4]~6_combout\ = \inst6|count\(4) $ (((\inst6|count\(3) & \inst6|count[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(3),
	datac => \inst6|count\(4),
	datad => \inst6|count[3]~0_combout\,
	combout => \inst6|count[4]~6_combout\);

-- Location: FF_X4_Y14_N7
\inst6|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|tmp~clkctrl_outclk\,
	d => \inst6|count[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(4));

-- Location: LCCOMB_X4_Y14_N28
\inst6|count[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[5]~5_combout\ = \inst6|count\(5) $ (((\inst6|count\(4) & (\inst6|count\(3) & \inst6|count[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(4),
	datab => \inst6|count\(3),
	datac => \inst6|count\(5),
	datad => \inst6|count[3]~0_combout\,
	combout => \inst6|count[5]~5_combout\);

-- Location: FF_X4_Y14_N29
\inst6|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|tmp~clkctrl_outclk\,
	d => \inst6|count[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(5));

-- Location: LCCOMB_X4_Y14_N12
\inst6|count[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[6]~3_combout\ = (\inst6|count\(4) & (\inst6|count\(5) & (\inst6|count\(3) & \inst6|count[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(4),
	datab => \inst6|count\(5),
	datac => \inst6|count\(3),
	datad => \inst6|count[3]~0_combout\,
	combout => \inst6|count[6]~3_combout\);

-- Location: LCCOMB_X4_Y14_N26
\inst6|count[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[6]~4_combout\ = \inst6|count\(6) $ (\inst6|count[6]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|count\(6),
	datad => \inst6|count[6]~3_combout\,
	combout => \inst6|count[6]~4_combout\);

-- Location: FF_X4_Y14_N27
\inst6|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|tmp~clkctrl_outclk\,
	d => \inst6|count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(6));

-- Location: LCCOMB_X4_Y14_N18
\inst6|count[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[7]~1_combout\ = ((!\inst6|count\(4)) # (!\inst6|count\(3))) # (!\inst6|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(5),
	datac => \inst6|count\(3),
	datad => \inst6|count\(4),
	combout => \inst6|count[7]~1_combout\);

-- Location: LCCOMB_X4_Y14_N16
\inst6|count[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[7]~2_combout\ = \inst6|count\(7) $ (((\inst6|count\(6) & (!\inst6|count[7]~1_combout\ & \inst6|count[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(6),
	datab => \inst6|count[7]~1_combout\,
	datac => \inst6|count\(7),
	datad => \inst6|count[3]~0_combout\,
	combout => \inst6|count[7]~2_combout\);

-- Location: FF_X4_Y14_N17
\inst6|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|tmp~clkctrl_outclk\,
	d => \inst6|count[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(7));

-- Location: M9K_X5_Y14_N0
\inst_mem17|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
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
	logical_ram_name => "mem0:inst_mem17|altsyncram:altsyncram_component|altsyncram_hkq3:auto_generated|ALTSYNCRAM",
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
	clk0 => \inst8|tmp~clkctrl_outclk\,
	portaaddr => \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst_mem17|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

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

ww_endereco(7) <= \endereco[7]~output_o\;

ww_endereco(6) <= \endereco[6]~output_o\;

ww_endereco(5) <= \endereco[5]~output_o\;

ww_endereco(4) <= \endereco[4]~output_o\;

ww_endereco(3) <= \endereco[3]~output_o\;

ww_endereco(2) <= \endereco[2]~output_o\;

ww_endereco(1) <= \endereco[1]~output_o\;

ww_endereco(0) <= \endereco[0]~output_o\;

ww_RGB(23) <= \RGB[23]~output_o\;

ww_RGB(22) <= \RGB[22]~output_o\;

ww_RGB(21) <= \RGB[21]~output_o\;

ww_RGB(20) <= \RGB[20]~output_o\;

ww_RGB(19) <= \RGB[19]~output_o\;

ww_RGB(18) <= \RGB[18]~output_o\;

ww_RGB(17) <= \RGB[17]~output_o\;

ww_RGB(16) <= \RGB[16]~output_o\;

ww_RGB(15) <= \RGB[15]~output_o\;

ww_RGB(14) <= \RGB[14]~output_o\;

ww_RGB(13) <= \RGB[13]~output_o\;

ww_RGB(12) <= \RGB[12]~output_o\;

ww_RGB(11) <= \RGB[11]~output_o\;

ww_RGB(10) <= \RGB[10]~output_o\;

ww_RGB(9) <= \RGB[9]~output_o\;

ww_RGB(8) <= \RGB[8]~output_o\;

ww_RGB(7) <= \RGB[7]~output_o\;

ww_RGB(6) <= \RGB[6]~output_o\;

ww_RGB(5) <= \RGB[5]~output_o\;

ww_RGB(4) <= \RGB[4]~output_o\;

ww_RGB(3) <= \RGB[3]~output_o\;

ww_RGB(2) <= \RGB[2]~output_o\;

ww_RGB(1) <= \RGB[1]~output_o\;

ww_RGB(0) <= \RGB[0]~output_o\;
END structure;


