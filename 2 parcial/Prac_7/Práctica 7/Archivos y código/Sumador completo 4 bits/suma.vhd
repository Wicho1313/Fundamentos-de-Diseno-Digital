LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY SUMA IS
	PORT(A,B:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S:OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 COUT: OUT STD_LOGIC);
END SUMA;
ARCHITECTURE PARALELA OF SUMA IS
SIGNAL C: STD_LOGIC_VECTOR(2 DOWNTO 0);
ATTRIBUTE SYNTHESIS_OFF OF C: SIGNAL IS TRUE;
BEGIN
	S(0) <= A(0) XOR B(0);
	C(0) <= A(0) AND B(0);
	S(1) <= (A(1) XOR B(1)) XOR C(0);
	C(1) <= (A(1) AND B(1)) OR (C(0) AND (A(1) XOR B(1)));
	S(2) <= (A(2) XOR B(2)) XOR C(1);
	C(2) <= (A(2) AND B(2)) OR (C(1) AND (A(2) XOR B(2)));
	S(3) <= (A(3) XOR B(3)) XOR C(2);
	COUT <= (A(3) AND B(3)) OR (C(2) AND (A(3) XOR B(3)));
END PARALELA;
