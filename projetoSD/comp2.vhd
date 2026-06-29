library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity comp2 is
    port(
        num  : in  std_logic_vector(4 downto 0);
        comp : out std_logic_vector(4 downto 0)
    );
end comp2;

architecture arc of comp2 is
    signal inv  : std_logic_vector(4 downto 0);
begin

    inv <= not num;
    comp <= inv + "0001";

end arc;