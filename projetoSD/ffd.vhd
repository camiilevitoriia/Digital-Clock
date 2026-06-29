LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ffd IS
PORT (
    clk, clr, d: IN std_logic;
    Q  : OUT std_logic
    
);
end fft;
ARCHITECTURE arc OF ffd IS 

SIGNAL saidaq : STD_LOGIC;

BEGIN 
	PROCESS (clr, clk)
	 BEGIN
		if (clr =  '0') then
			saidaq <= '0';
		elsif (rising_edge(clk)) then 
			if (d = '0') then
				saidaq <= '0';
			else 
				saidaq <= '1';
			end if;
		end if;
	END PROCESS;
	Q <= saidaq;
END arc;

