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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/20/2024 14:49:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          tmp_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tmp_2_vhd_vec_tst IS
END tmp_2_vhd_vec_tst;
ARCHITECTURE tmp_2_arch OF tmp_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL endereco : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RGB : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL StartStop : STD_LOGIC;
COMPONENT tmp_2
	PORT (
	CLK : IN STD_LOGIC;
	endereco : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RGB : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
	StartStop : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : tmp_2
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	endereco => endereco,
	RGB => RGB,
	StartStop => StartStop
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- StartStop
t_prcs_StartStop: PROCESS
BEGIN
	StartStop <= '0';
	WAIT FOR 2480000 ps;
	StartStop <= '1';
	WAIT FOR 720000 ps;
	StartStop <= '0';
	WAIT FOR 1280000 ps;
	StartStop <= '1';
	WAIT FOR 5120000 ps;
	StartStop <= '0';
WAIT;
END PROCESS t_prcs_StartStop;
END tmp_2_arch;
