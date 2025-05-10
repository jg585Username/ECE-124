-- AND Gate Example

library IEEE;
use IEEE.std_logic_1164.all;

ENTITY andgate IS
	PORT(  	a	: IN	std_logic;
        		b	: IN	std_logic;
        		c	: OUT	std_logic );
END andgate;

ARCHITECTURE synthesis1 OF andgate IS
BEGIN
	c <= a AND b;
END synthesis1;