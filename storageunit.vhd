LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fLab IS
	PORT (D: IN STD_LOGIC_VECTOR(7 DOWNTO 0); --8 bit A input
	Resetn, Clock: IN STD_LOGIC ;--1 bit clock input and 1 bit reset input bit 
	Q: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)) ;-- 8 bit output
END fLab;
ARCHITECTURE Behavior OF fLab IS
BEGIN
	PROCESS (Resetn, Clock )--Process takes reset and clock as inputs 
	BEGIN
		IF Resetn='0' THEN -- when reset input is '0' the latches does not operate 
			Q<= "00000000";
		ELSIF Clock'EVENT AND Clock = '1' THEN -- level sensitive based on clock
			Q<=D;
		END IF;
	END PROCESS;
END Behavior;