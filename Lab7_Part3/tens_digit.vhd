library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tens_digit is
    Port ( Z : in  STD_LOGIC;
           D1 : out STD_LOGIC_VECTOR(3 downto 0));
end tens_digit;

architecture structural_tens_digit of tens_digit is
begin
    -- Outputs 0001 when Z = 1
    D1 <= "0001" when (Z = '1') else "0000";
end structural_tens_digit;
