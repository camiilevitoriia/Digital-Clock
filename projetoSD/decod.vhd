library ieee;
use ieee.std_logic_1164.all;

entity decod is
port (
	a: in std_logic_vector(3 downto 0);
	s: out std_logic_vector(6 downto 0)
);
end decod;

architecture arc of decod is
begin
	s<= "1000000" when a= "0000" else
	"1111001" when a= "0001" else
	"0100100" when a= "0010" else
	"0110000" when a= "0011" else
	"0011001" when a= "0100" else
	"0010010" when a= "0101" else
	"0000010" when a= "0110" else
	"1111000" when a= "0111" else
	"0000000" when a= "1000" else
	"0010000" when a= "1001";
end arc;