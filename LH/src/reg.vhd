LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use IEEE.math_real.all;


ENTITY reg IS
	GENERIC(N: INTEGER :=1);
	PORT(DATA_IN: IN STD_LOGIC;
		  EN: IN STD_LOGIC;
		  CLK, RST_n: IN STD_LOGIC;
		  DATA_OUT: OUT STD_LOGIC);
END reg;

ARCHITECTURE Behaviour of reg is

BEGIN
PROCESS (CLK)
	BEGIN
		IF (CLK'EVENT AND CLK = '1') THEN
			IF (RST_n = '0') THEN
				DATA_OUT <= '0';
			ELSIF EN='1' THEN 
				DATA_OUT <= DATA_IN;
			END IF;
		END IF;
	END PROCESS;
	
END Behaviour;
