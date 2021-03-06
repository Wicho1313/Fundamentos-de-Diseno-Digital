LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY DECO IS
PORT (
E : IN STD_LOGIC_VECTOR( 2 DOWNTO 0 );
DISPLAY : OUT STD_LOGIC_VECTOR( 6 DOWNTO 0 )
);

ATTRIBUTE PIN_NUMBERS OF DECO: ENTITY IS
"E(0):3 E(1):2 E(2):1"
& " display(0):14 display(1):15 display(2):16 display(3):17"
& " display(4):18 display(5):19 display(6):20";
END DECO;


ARCHITECTURE ADECO OF DECO IS
BEGIN
PDECO : PROCESS( E )
BEGIN
CASE E IS
WHEN "000" => DISPLAY <= "0000000"; -- 8
WHEN "001" => DISPLAY <= "0001100"; -- 9
WHEN "010" => DISPLAY <= "0100100"; -- 5
WHEN "011" => DISPLAY <= "0100000"; -- 6
WHEN "100" => DISPLAY <= "0000001"; -- 0
WHEN "101" => DISPLAY <= "1001111"; -- 1
WHEN "110" => DISPLAY <= "0001111"; -- 7
WHEN OTHERS => DISPLAY <= "1001111"; -- 1
END CASE;
END PROCESS PDECO;
END ADECO;