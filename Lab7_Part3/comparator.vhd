library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comparator is
    Port ( X : in  STD_LOGIC_VECTOR(3 downto 0);
           Z : out STD_LOGIC); -- Z = 1 if X > 9
end comparator;

architecture structural_comparator of comparator is
begin
    Z <= '1' when (X > "1001") else '0'; -- X > 9
	 --sets Z to 1 when X is greater than 1001 (9) in binary
end structural_comparator;
