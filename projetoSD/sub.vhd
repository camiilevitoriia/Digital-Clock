library ieee;
use ieee.std_logic_1164.all;

entity sub is
    port(
        A, B : in  std_logic_vector(3 downto 0);
        S    : out std_logic_vector(3 downto 0);
        Cout : out std_logic
    );
end sub;

architecture arc of sub is

    component comp2
        port(
            num  : in  std_logic_vector(4 downto 0);
            comp : out std_logic_vector(4 downto 0)
        );
    end component;

    component somador4bits
        port(
            A, B : in  std_logic_vector(3 downto 0);
            S    : out std_logic_vector(3 downto 0);
            Cout : out std_logic
        );
    end component;

    signal B_comp2 : std_logic_vector(4 downto 0);

begin

    U1: comp2 port map(
        num  => B,
        comp => B_comp2
    );

    U2: somador4bits port map(
        A => A,
        B => B_comp2,
        S => S,
        Cout => Cout
    );

end arc;