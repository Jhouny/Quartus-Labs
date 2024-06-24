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
-- Generated on "06/23/2024 21:29:46"
                                                             
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
SIGNAL C : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL StStop : STD_LOGIC;
COMPONENT tmp_2
	PORT (
	C : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLK : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
	StStop : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : tmp_2
	PORT MAP (
-- list connections between master ports and signals
	C => C,
	CLK => CLK,
	Q => Q,
	StStop => StStop
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- StStop
t_prcs_StStop: PROCESS
BEGIN
	StStop <= '0';
	WAIT FOR 120000 ps;
	StStop <= '1';
WAIT;
END PROCESS t_prcs_StStop;
END tmp_2_arch;
