library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity unit_digit is
    Port ( 
        X : in STD_LOGIC_VECTOR (3 downto 0); 
        Y : out STD_LOGIC_VECTOR (3 downto 0) 
    );
end unit_digit;

architecture Behavioral of unit_digit is
begin
    Y(0) <= X(3) and X(0);
    Y(1) <= X(3) and X(2) and (not X(1));
    Y(2) <= X(3) and X(2) and X(1);
    Y(3) <= '0'; --Y3 is always 0
end Behavioral;
