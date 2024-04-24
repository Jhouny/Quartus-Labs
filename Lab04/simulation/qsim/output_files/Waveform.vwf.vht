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
-- Generated on "04/23/2024 22:10:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          tmp
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tmp_vhd_vec_tst IS
END tmp_vhd_vec_tst;
ARCHITECTURE tmp_arch OF tmp_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL A2 : STD_LOGIC;
SIGNAL A3 : STD_LOGIC;
SIGNAL B0 : STD_LOGIC;
SIGNAL B1 : STD_LOGIC;
SIGNAL B2 : STD_LOGIC;
SIGNAL B3 : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL RSST : STD_LOGIC;
COMPONENT tmp
	PORT (
	A0 : OUT STD_LOGIC;
	A1 : OUT STD_LOGIC;
	A2 : OUT STD_LOGIC;
	A3 : OUT STD_LOGIC;
	B0 : OUT STD_LOGIC;
	B1 : OUT STD_LOGIC;
	B2 : OUT STD_LOGIC;
	B3 : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	RSST : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : tmp
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A1 => A1,
	A2 => A2,
	A3 => A3,
	B0 => B0,
	B1 => B1,
	B2 => B2,
	B3 => B3,
	clk => clk,
	RSST => RSST
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- RSST
t_prcs_RSST: PROCESS
BEGIN
	RSST <= '0';
WAIT;
END PROCESS t_prcs_RSST;
END tmp_arch;
