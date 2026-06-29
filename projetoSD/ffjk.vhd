LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ffjk IS
PORT (
    clk, clr, pr, load, J, K : IN std_logic;
    Q  : OUT std_logic
    
);
END ffjk;

ARCHITECTURE arc OF ffjk IS

signal saidaq : std_logic;

begin
	process( clk, clr, pr)
		begin
			if (clr = '0') then
				saidaq<='0';
			elsif (pr = '0') then
				saidaq <= '1';
			elsif (rising_edge(clk)) then
				if (load = '1') then
					if (J = '0' and K='0') then
						saidaq <= saidaq;
					elsif (J = '0' and K='1') then
						saidaq <= '0';
					elsif (J = '1' and K='0') then
						saidaq <= '1';
					elsif (J = '1' and K='1') then
						saidaq <= not saidaq;
					end if;
				end if;
			end if;
	end process;
	
	q <= saidaq;
		
end arc;
				