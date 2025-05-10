-- Level 2 testbench for andgate

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY andgate_tb IS
END andgate_tb;

ARCHITECTURE simulation2 OF andgate_tb IS

COMPONENT andgate IS
	PORT(	a	: IN	std_logic;
    		b	: IN	std_logic;
            c	: OUT	std_logic );
END COMPONENT;

SIGNAL ax	: std_logic;
SIGNAL bx	: std_logic;
SIGNAL cx	: std_logic;

BEGIN

	UUT: andgate PORT MAP(
	    	a => ax,
      	b => bx,
        	c => cx );
    
	-- Level 2 Testbench (Automated Verification)
	stimulus	: PROCESS
	BEGIN

		ax <= '0';
   		bx <= '0';
	    	WAIT FOR 100 ns;
    		ASSERT (cx = '0')
    		REPORT "Failed for a = 0, b = 0, c = 0" SEVERITY error;
    
    		ax <= '0';
    		bx <= '1';
    		WAIT FOR 100 ns;
    		ASSERT (cx = '0')
    		REPORT "Failed for a = 0, b = 1, c = 0" SEVERITY error;
    
    		ax <= '1';
    		bx <= '0';
    		WAIT FOR 100 ns;
    		ASSERT (cx = '0')
    		REPORT "Failed for a = 1, b = 0, c = 0" SEVERITY error;
    
    		ax <= '1';
    		bx <= '1';
    		WAIT FOR 100 ns;
    		ASSERT (cx = '1')
    		REPORT "Failed for a = 1, b = 1, c = 1" SEVERITY error;
    
    	END PROCESS;
    
END simulation2;
    