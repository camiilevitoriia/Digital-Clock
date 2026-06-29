library ieee;
use ieee.std_logic_1164.all;

entity magnitude is
    port(
        num   : in  std_logic_vector (4 downto 0);
        sinal : out std_logic;
        s     : out std_logic_vector (4 downto 0)
    );
end magnitude;

architecture arc of magnitude is 

    component comp2 port(
        num  : in  std_logic_vector(4 downto 0);
        comp : out std_logic_vector(4 downto 0)
    );
    end component;

    component mux port (
        seletor : in std_logic;
        a, b    : in std_logic_vector(4 downto 0);
        s       : out std_logic_vector(4 downto 0)
    );
    end component;

    signal complement2: std_logic_vector(4 downto 0);

begin

    i0: comp2 port map (
        num  => num, 
        comp => complement2
    );

    i1: mux port map (
        seletor => num(4),      
        a       => num,         
        b       => complement2, 
        s       => s            
    );

    sinal <= num(4);

end arc;