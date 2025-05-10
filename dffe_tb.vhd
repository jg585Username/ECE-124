-- Testbench for dffe.vhd

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE std.env.stop;

ENTITY dffe_tb IS
END dffe_tb;

ARCHITECTURE simulation1 OF dffe_tb IS

COMPONENT dffe IS
	PORT(	rst	: IN	std_logic;
    		clk	: IN	std_logic;
           	ena	: IN	std_logic;
            d	: IN	std_logic; 
            q	: OUT	std_logic );
END COMPONENT;

SIGNAL rstx	: std_logic := '0';
SIGNAL clkx	: std_logic := '0';
SIGNAL enax	: std_logic := '0';
SIGNAL dx	: std_logic := '0';
SIGNAL qx	: std_logic := '0';

BEGIN

	uut: dffe PORT MAP( rst => rstx, clk => clkx, ena => enax, d => dx, q => qx );

	-- Level 1 Testbench (Visual Inspection)
	stimulus	: PROCESS
	BEGIN

		rstx <= '0';
 	      enax <= '0';
      	dx <= '0';
	    	WAIT FOR 100 ns;

		rstx <= '1';
        	enax <= '0';
        	dx <= '0';
	    	WAIT FOR 100 ns;
	
		rstx <= '0';
        	enax <= '1';
        	dx <= '0';
	    	WAIT FOR 100 ns;

		rstx <= '0';
        	enax <= '1';
        	dx <= '1';
	    	WAIT FOR 100 ns;

		rstx <= '0';
        	enax <= '0';
        	dx <= '0';
	    	WAIT FOR 100 ns;

		rstx <= '0';
        	enax <= '0';
        	dx <= '1';
	    	WAIT FOR 100 ns;

		rstx <= '0';
        	enax <= '1';
        	dx <= '0';
	    	WAIT FOR 100 ns;

		rstx <= '0';
        	enax <= '1';
        	dx <= '1';
	    	WAIT FOR 100 ns;

		rstx <= '1';
        	enax <= '0';
        	dx <= '0';
	    	WAIT FOR 100 ns;
        
      	stop;

	END PROCESS;
    
    	clk_generator	: PROCESS( clkx )
    	BEGIN
    	
      	clkx <= NOT clkx AFTER 50 ns;
        
    	END PROCESS;
 
END simulation1;