LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY teste_ff IS
PORT (
    clk, clr, pr, load, J, K : IN std_logic;
    Q  : OUT std_logic
    
);
END teste_ff;

ARCHITECTURE arc OF teste_ff IS
component divisor_frequencia 
	port(
		clkin: IN std_logic;
		clkout: OUT std_logic
	);
end component;

component ffjk 
PORT (
    clk, clr, pr, load, J, K : IN std_logic;
    Q  : OUT std_logic
    
);
end component;

signal novoclock : std_logic;

begin 
	i1: divisor_frequencia port map (clk, novoclock);
	i2: ffjk port map (novoclock, clr, pr, load, J, K, Q);
end arc;