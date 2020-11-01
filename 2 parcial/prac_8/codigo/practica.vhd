library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Entradas is

port( 
	A: in std_logic ;
	B: in std_logic ;
	C: in std_logic ;
	D: in std_logic ;
	E: in std_logic ;
	F1: out std_logic; 
	F2: out std_logic;  
	F3: out std_logic;  
	F4: out std_logic; 
	F5: out std_logic;  
	F6: out std_logic  );


end;

architecture Comportamiento of Entradas is
begin


	F1 <= A and B and C and D and E;
	F2 <= A or B or C or D or E;
	F3 <= A xor B xor C xor D xor E;
	F4 <= not F1;
	F5 <= not F2;
	F6 <= not F3;



end Comportamiento;