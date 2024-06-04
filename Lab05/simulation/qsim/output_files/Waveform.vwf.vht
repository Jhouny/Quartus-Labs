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
-- Generated on "05/24/2024 11:56:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          main_VHDL
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY main_VHDL_vhd_vec_tst IS
END main_VHDL_vhd_vec_tst;
ARCHITECTURE main_VHDL_arch OF main_VHDL_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL PB0 : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL Q3 : STD_LOGIC;
COMPONENT main_VHDL
	PORT (
	PB0 : IN STD_LOGIC;
	Q0 : OUT STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC;
	Q3 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : main_VHDL
	PORT MAP (
-- list connections between master ports and signals
	PB0 => PB0,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2,
	Q3 => Q3
	);

-- PB0
t_prcs_PB0: PROCESS
BEGIN
LOOP
	PB0 <= '0';
	WAIT FOR 10000 ps;
	PB0 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_PB0;
END main_VHDL_arch;