library ieee;
use ieee.std_logic_1164.all;


entity somador5 is
	port(
		x,y: in std_logic_vector(4 downto 0);
		z: out std_logic_vector(4 downto 0)
	);
end somador5;

architecture arc of somador5 is

component MeioSomador
port(
		a1,b1: in std_logic;
		s1,cout: out std_logic
	);
end component;

component somadorCompleto
port(
		a2,b2,cin: in std_logic;
		s2,cout: out std_logic
	);
end component;

signal c1, c2, c3, c4, c5: std_logic;

begin
	i0: MeioSomador port map (x(0), y(0), z(0), c1);
	i1: somadorCompleto port map (x(1), y(1), c1, z(1), c2);
	i2: somadorCompleto port map (x(2), y(2), c2, z(2), c3);
	i3: somadorCompleto port map (x(3), y(3), c3, z(3), c4);
	i4: somadorCompleto port map (x(4), y(4), c4, z(4), c5);
end arc;