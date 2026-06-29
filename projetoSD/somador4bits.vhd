library ieee;
use ieee.std_logic_1164.all;

entity somador4bits is
    port(
        A, B : in  std_logic_vector(3 downto 0);
        S    : out std_logic_vector(3 downto 0);
        Cout : out std_logic
    );
end somador4bits;

architecture arc of somador4bits is

    component somadorCompleto
        port(
            a2,b2,cin: in std_logic;
            s2,cout: out std_logic
        );
    end component;

    signal c1, c2, c3 : std_logic;

begin

    FA0: somadorCompleto port map(A(0), B(0), '0', S(0), c1);
    FA1: somadorCompleto port map(A(1), B(1), c1, S(1), c2);
    FA2: somadorCompleto port map(A(2), B(2), c2, S(2), c3);
    FA3: somadorCompleto port map(A(3), B(3), c3, S(3), Cout);

end arc;