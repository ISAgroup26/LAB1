LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use IEEE.math_real.all;


ENTITY myregister IS
	GENERIC(N: INTEGER :=12);
	PORT(DATA_IN: IN SIGNED (N-1 DOWNTO 0);
		  EN: IN STD_LOGIC;
		  CLK, RST_n: IN STD_LOGIC;
		  DATA_OUT: OUT SIGNED (N-1 DOWNTO 0));
END myregister;

ARCHITECTURE Behaviour of myregister is

BEGIN
PROCESS (CLK)
	BEGIN
		IF (CLK'EVENT AND CLK = '1') THEN
			IF (RST_n = '0') THEN
				DATA_OUT <= (OTHERS => '0');
			ELSIF EN='1' THEN 
				DATA_OUT <= DATA_IN;
			END IF;
		END IF;
	END PROCESS;
	
END Behaviour;
