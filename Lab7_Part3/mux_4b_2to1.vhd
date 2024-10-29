library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4b_2to1 is
    Port ( X : in  STD_LOGIC_VECTOR(3 downto 0);
           Y : in  STD_LOGIC_VECTOR(3 downto 0);
           Z : in  STD_LOGIC;
           D0 : out STD_LOGIC_VECTOR(3 downto 0));
end mux_4b_2to1;

architecture structural_mux_4b_2to1 of mux_4b_2to1 is
begin
	 -- When Z = 1 then D0 is set to Y otherwise it is X
    D0 <= Y when (Z = '1') else X;
end structural_mux_4b_2to1;
