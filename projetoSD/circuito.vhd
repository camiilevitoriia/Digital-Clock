library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity circuito is
	port (
		a,b: in std_logic;
		sor, sand: out std_logic
	);
end circuito;

ARCHITECTURE arc of circuito is
begin
	sor <= a or b;
	sand <= a and b;
end arc;