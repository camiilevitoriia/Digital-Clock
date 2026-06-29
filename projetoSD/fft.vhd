LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fft IS
PORT (
    clk, clr, t: IN std_logic;
    Q  : OUT std_logic
    
);
end fft;
ARCHITECTURE arc OF fft IS 

SIGNAL saidaq : STD_LOGIC;

BEGIN 
	PROCESS (clr, clk)
	 BEGIN
		if (clr =  '0') then
			saidaq <= '0';
		elsif (rising_edge(clk)) then 
			if (t = '0') then
				saidaq <= saidaq;
			else 
				saidaq <= not saidaq;
			end if;
		end if;
	END PROCESS;
	Q <= saidaq;
END arc;

