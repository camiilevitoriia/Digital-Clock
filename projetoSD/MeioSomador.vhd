library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity MeioSomador is
	port(
		a1,b1: in std_logic;
		s1,cout: out std_logic
	);
end MeioSomador;

architecture arc of MeioSomador is
begin
	s1 <= a1 xor b1;
	cout <= a1 and b1;
end arc;
	