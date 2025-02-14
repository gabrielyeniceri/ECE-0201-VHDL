library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display_decoder is
    Port ( X : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (6 downto 0)  
         );
end display_decoder;

architecture Behavioral of display_decoder is
begin
    Y(0) <= (not X(3) and not X(2) and not X(1) and X(0)) or
            (not X(3) and X(2) and not X(1) and not X(0)) or
            (X(3) and not X(2) and X(1) and X(0)) or
            (X(3) and X(2) and not X(1) and X(0));

    Y(1) <= (not X(3) and X(2) and not X(1) and X(0)) or
            (X(2) and X(1) and not X(0)) or
            (X(3) and X(1) and X(0)) or
            (X(3) and X(2) and not X(0));

    Y(2) <= (not X(3) and not X(2) and X(1) and not X(0)) or
            (X(3) and X(2) and not X(0)) or
            (X(3) and X(2) and X(1));

    Y(3) <= (not X(3) and not X(2) and not X(1) and X(0)) or
            (not X(3) and X(2) and not X(1) and not X(0)) or
            (X(2) and X(1) and X(0)) or
            (X(3) and not X(2) and X(1) and not X(0));

    Y(4) <= (not X(3) and X(0)) or
            (not X(3) and X(2) and not X(1)) or
            (not X(2) and not X(1) and X(0));

    Y(5) <= (not X(3) and not X(2) and X(0)) or
            (not X(3) and not X(2) and X(1)) or
            (not X(3) and X(1) and X(0)) or
            (X(3) and X(2) and not X(1) and X(0));

    Y(6) <= (not X(3) and not X(2) and not X(1)) or
            (not X(3) and X(2) and X(1) and X(0)) or
            (X(3) and X(2) and not X(1) and not X(0));

end Behavioral;
