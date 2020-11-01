library ieee; 
use ieee.std_logic_1164.all;
entity examen is
port(A0,A1,B0,B1: in std_logic;
R0,P0,R1,P1 : out std_logic);
attribute pin_numbers of examen:
entity is "A0:1 A1:2 B0:3 B1:4 R0:23 P0:22 R1:21 P1:20";
end examen;
architecture restador of examen is
begin
R0<= A0 xor B0;
P0<= (not A0) and B0;
R1 <= A1 xor B1;
P1<= (not A1) and B1;
end restador;