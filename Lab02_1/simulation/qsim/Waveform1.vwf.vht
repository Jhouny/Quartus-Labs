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
-- Generated on "04/22/2024 21:53:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TMP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TMP_vhd_vec_tst IS
END TMP_vhd_vec_tst;
ARCHITECTURE TMP_arch OF TMP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CTRL : STD_LOGIC;
SIGNAL D0 : STD_LOGIC;
SIGNAL D1 : STD_LOGIC;
SIGNAL D2 : STD_LOGIC;
SIGNAL D3 : STD_LOGIC;
SIGNAL E0 : STD_LOGIC;
SIGNAL E1 : STD_LOGIC;
SIGNAL E2 : STD_LOGIC;
SIGNAL E3 : STD_LOGIC;
SIGNAL O0 : STD_LOGIC;
SIGNAL O1 : STD_LOGIC;
SIGNAL O2 : STD_LOGIC;
SIGNAL O3 : STD_LOGIC;
COMPONENT TMP
	PORT (
	CTRL : IN STD_LOGIC;
	D0 : IN STD_LOGIC;
	D1 : IN STD_LOGIC;
	D2 : IN STD_LOGIC;
	D3 : IN STD_LOGIC;
	E0 : IN STD_LOGIC;
	E1 : IN STD_LOGIC;
	E2 : IN STD_LOGIC;
	E3 : IN STD_LOGIC;
	O0 : OUT STD_LOGIC;
	O1 : OUT STD_LOGIC;
	O2 : OUT STD_LOGIC;
	O3 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TMP
	PORT MAP (
-- list connections between master ports and signals
	CTRL => CTRL,
	D0 => D0,
	D1 => D1,
	D2 => D2,
	D3 => D3,
	E0 => E0,
	E1 => E1,
	E2 => E2,
	E3 => E3,
	O0 => O0,
	O1 => O1,
	O2 => O2,
	O3 => O3
	);

-- CTRL
t_prcs_CTRL: PROCESS
BEGIN
LOOP
	CTRL <= '0';
	WAIT FOR 20000 ps;
	CTRL <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CTRL;

-- D3
t_prcs_D3: PROCESS
BEGIN
	D3 <= '1';
WAIT;
END PROCESS t_prcs_D3;

-- D2
t_prcs_D2: PROCESS
BEGIN
	D2 <= '0';
WAIT;
END PROCESS t_prcs_D2;

-- D1
t_prcs_D1: PROCESS
BEGIN
	D1 <= '0';
WAIT;
END PROCESS t_prcs_D1;

-- D0
t_prcs_D0: PROCESS
BEGIN
	D0 <= '1';
WAIT;
END PROCESS t_prcs_D0;

-- E3
t_prcs_E3: PROCESS
BEGIN
	E3 <= '0';
WAIT;
END PROCESS t_prcs_E3;

-- E2
t_prcs_E2: PROCESS
BEGIN
	E2 <= '1';
WAIT;
END PROCESS t_prcs_E2;

-- E1
t_prcs_E1: PROCESS
BEGIN
	E1 <= '1';
WAIT;
END PROCESS t_prcs_E1;

-- E0
t_prcs_E0: PROCESS
BEGIN
	E0 <= '0';
WAIT;
END PROCESS t_prcs_E0;
END TMP_arch;
