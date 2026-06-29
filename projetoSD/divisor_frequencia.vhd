library ieee;
use ieee.std_logic_1164.all;

entity divisor_frequencia is
	port(
		clkin: IN std_logic;
		clkout: OUT std_logic
	);
end divisor_frequencia;

architecture arc of divisor_frequencia is 

signal contador : integer range 0 to 25000000 := 0;
signal novoclok : std_logic := '0';

begin
	process(clkin)
		begin
			if (rising_edge(clkin))then
				if (contador = 24999999) then
					contador <= 0;
					novoclok <= not novoclok;
				else 
					contador <= contador + 1;
				end if;
			end if;
	end process;
	
	clkout <= novoclok;
	
end arc;