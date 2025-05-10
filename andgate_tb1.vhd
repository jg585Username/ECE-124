-- Level 1 testbench for andgate

library IEEE;
use IEEE.std_logic_1164.all;

ENTITY andgate_tb IS
END andgate_tb;

ARCHITECTURE simulation1 OF andgate_tb IS

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
    
    	-- Level 1 Testbench (Visual Inspection)
    	stimulus	: PROCESS
    	BEGIN

		ax <= '0';
	    	bx <= '0';
    		wait for 100 ns;

		ax <= '0';
	    	bx <= '1';
    		wait for 100 ns;
	
	    	ax <= '1';
    		bx <= '0';
	    	wait for 100 ns;

		ax <= '1';
    		bx <= '1';
	    	wait for 100 ns;
    
	END PROCESS;
    
END simulation1;
    