-- D Flip-Flop with Enable (DFFE)

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY dffe IS
	PORT(	rst			: IN	std_logic;
    		clk			: IN	std_logic;
            ena			: IN	std_logic;
            d			: IN	std_logic;
		q			: OUT	std_logic );
END dffe;

ARCHITECTURE synthesis OF dffe IS
BEGIN

	PROCESS (rst, clk)
	BEGIN

		IF (rst = '1') THEN
			q <= '0';
		ELSIF (clk'EVENT) AND (clk = '1') THEN
			IF (ena = '1') THEN
				q <= d;
			END IF;
		END IF;
        
	END PROCESS;
    
END synthesis;
