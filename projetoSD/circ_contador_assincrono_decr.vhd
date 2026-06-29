LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY circ_contador_assincrono_decr IS
PORT (
    clk, clr : IN std_logic;
    Q1       : OUT std_logic_vector (2 downto 0)
);
END circ_contador_assincrono_decr;

ARCHITECTURE arc OF circ_contador_assincrono_decr IS

    COMPONENT contador_assincrono_dec IS
        PORT (
            clk, clr : IN std_logic;
				Q1       : OUT std_logic_vector (2 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT divisor_frequencia IS
        PORT (
            clkin: IN std_logic;
				clkout: OUT std_logic
        );
    END COMPONENT;

    SIGNAL saidadf : std_logic;

BEGIN

    i0: divisor_frequencia PORT MAP (clk,saidadf);

    i1: contador_assincrono_dec PORT MAP (saidadf, clr, Q1);

END arc;