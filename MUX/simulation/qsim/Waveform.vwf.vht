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
-- Generated on "04/05/2024 15:40:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Contador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Contador_vhd_vec_tst IS
END Contador_vhd_vec_tst;
ARCHITECTURE Contador_arch OF Contador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL J : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
COMPONENT Contador
	PORT (
	clk : IN STD_LOGIC;
	J : IN STD_LOGIC;
	K : IN STD_LOGIC;
	Q : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Contador
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	J => J,
	K => K,
	Q => Q
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		clk <= '0';
		WAIT FOR 10000 ps;
		clk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- J
t_prcs_J: PROCESS
BEGIN
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 20000 ps;
	J <= '1';
	WAIT FOR 20000 ps;
	J <= '0';
	WAIT FOR 20000 ps;
	J <= '1';
	WAIT FOR 40000 ps;
	J <= '0';
	WAIT FOR 30000 ps;
	J <= '1';
	WAIT FOR 20000 ps;
	J <= '0';
	WAIT FOR 30000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 20000 ps;
	J <= '0';
	WAIT FOR 40000 ps;
	J <= '1';
	WAIT FOR 20000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 20000 ps;
	J <= '0';
	WAIT FOR 20000 ps;
	J <= '1';
	WAIT FOR 20000 ps;
	J <= '0';
	WAIT FOR 40000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 20000 ps;
	J <= '1';
	WAIT FOR 20000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 30000 ps;
	J <= '1';
	WAIT FOR 20000 ps;
	J <= '0';
	WAIT FOR 30000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 20000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
	WAIT FOR 10000 ps;
	J <= '0';
	WAIT FOR 20000 ps;
	J <= '1';
	WAIT FOR 50000 ps;
	J <= '0';
	WAIT FOR 30000 ps;
	J <= '1';
	WAIT FOR 40000 ps;
	J <= '0';
	WAIT FOR 30000 ps;
	J <= '1';
	WAIT FOR 20000 ps;
	J <= '0';
	WAIT FOR 20000 ps;
	J <= '1';
	WAIT FOR 20000 ps;
	J <= '0';
	WAIT FOR 30000 ps;
	J <= '1';
	WAIT FOR 30000 ps;
	J <= '0';
	WAIT FOR 10000 ps;
	J <= '1';
WAIT;
END PROCESS t_prcs_J;

-- K
t_prcs_K: PROCESS
BEGIN
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 30000 ps;
	K <= '0';
	WAIT FOR 20000 ps;
	K <= '1';
	WAIT FOR 20000 ps;
	K <= '0';
	WAIT FOR 20000 ps;
	K <= '1';
	WAIT FOR 10000 ps;
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 20000 ps;
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 10000 ps;
	K <= '0';
	WAIT FOR 40000 ps;
	K <= '1';
	WAIT FOR 10000 ps;
	K <= '0';
	WAIT FOR 30000 ps;
	K <= '1';
	WAIT FOR 50000 ps;
	K <= '0';
	WAIT FOR 30000 ps;
	K <= '1';
	WAIT FOR 50000 ps;
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 30000 ps;
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 10000 ps;
	K <= '0';
	WAIT FOR 20000 ps;
	K <= '1';
	WAIT FOR 10000 ps;
	K <= '0';
	WAIT FOR 20000 ps;
	K <= '1';
	WAIT FOR 30000 ps;
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 20000 ps;
	K <= '0';
	WAIT FOR 40000 ps;
	K <= '1';
	WAIT FOR 30000 ps;
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 50000 ps;
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 50000 ps;
	K <= '0';
	WAIT FOR 30000 ps;
	K <= '1';
	WAIT FOR 20000 ps;
	K <= '0';
	WAIT FOR 50000 ps;
	K <= '1';
	WAIT FOR 10000 ps;
	K <= '0';
	WAIT FOR 10000 ps;
	K <= '1';
	WAIT FOR 70000 ps;
	K <= '0';
	WAIT FOR 50000 ps;
	K <= '1';
WAIT;
END PROCESS t_prcs_K;
END Contador_arch;
