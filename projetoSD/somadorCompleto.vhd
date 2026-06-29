library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity somadorCompleto is
	port(
		a2,b2,cin: in std_logic;
		s2,cout: out std_logic
	);
end somadorCompleto;

architecture arc of somadorCompleto is
begin
	s2 <= a2 xor b2 xor cin;
	cout <= (a2 and b2) or (cin and (a2 xor b2));
end arc;