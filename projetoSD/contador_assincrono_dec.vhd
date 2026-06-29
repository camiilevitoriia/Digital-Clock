LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY contador_assincrono_dec IS
PORT (
    clk, clr : IN std_logic;
    Q1       : OUT std_logic_vector (2 downto 0)
);
END contador_assincrono_dec;

ARCHITECTURE arc OF contador_assincrono_dec IS

    COMPONENT fft IS
        PORT (
            clk, clr, t : IN std_logic;
            Q           : OUT std_logic
        );
    END COMPONENT;

    SIGNAL saidaq, saidaq1, saidaq2 : std_logic;

BEGIN

    i0: fft PORT MAP (clk,clr,'1',saidaq);

    i1: fft PORT MAP (saidaq,clr,'1',saidaq1);

    i2: fft PORT MAP (saidaq1,clr,'1',saidaq2);

    Q1(0) <= saidaq;
    Q1(1) <= saidaq1;
    Q1(2) <= saidaq2;

END arc;