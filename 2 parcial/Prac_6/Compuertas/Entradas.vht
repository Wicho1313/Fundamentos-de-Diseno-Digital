
-- VHDL Test Bench Created from source file Entradas.vhd -- 04/08/18  19:42:16
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Lattice recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "source->import"
-- menu in the ispLEVER Project Navigator to import the testbench.
-- Then edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
LIBRARY generics;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE generics.components.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 

	COMPONENT Entradas
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		C : IN std_logic;
		D : IN std_logic;
		E : IN std_logic;          
		F1 : OUT std_logic;
		F2 : OUT std_logic;
		F3 : OUT std_logic;
		F4 : OUT std_logic;
		F5 : OUT std_logic;
		F6 : OUT std_logic
		);
	END COMPONENT;

	SIGNAL A :  std_logic;
	SIGNAL B :  std_logic;
	SIGNAL C :  std_logic;
	SIGNAL D :  std_logic;
	SIGNAL E :  std_logic;
	SIGNAL F1 :  std_logic;
	SIGNAL F2 :  std_logic;
	SIGNAL F3 :  std_logic;
	SIGNAL F4 :  std_logic;
	SIGNAL F5 :  std_logic;
	SIGNAL F6 :  std_logic;

BEGIN

	uut: Entradas PORT MAP(
		A => A,
		B => B,
		C => C,
		D => D,
		E => E,
		F1 => F1,
		F2 => F2,
		F3 => F3,
		F4 => F4,
		F5 => F5,
		F6 => F6
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
