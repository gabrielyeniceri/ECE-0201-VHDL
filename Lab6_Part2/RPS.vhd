LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY RPS IS
	PORT (
		A : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		B : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		WA : OUT STD_LOGIC;
		WB : OUT STD_LOGIC;
		E : OUT STD_LOGIC
);
END RPS;
		
ARCHITECTURE comb OF RPS IS
BEGIN
    --draw, both players chose same option
    E <= '1' WHEN (A = "00" AND B = "00") OR  
                  (A = "01" AND B = "01") OR  
                  (A = "10" AND B = "10") ELSE '0';

    --player A wins because rock beats scissors, paper beats rock, and scissors beats paper
    WA <= '1' WHEN (A = "00" AND B = "10") OR  
                  (A = "01" AND B = "00") OR  
                  (A = "10" AND B = "01") ELSE '0';

    --player B wins here, same logic as previous
    WB <= '1' WHEN (B = "00" AND A = "10") OR
                  (B = "01" AND A = "00") OR
                  (B = "10" AND A = "01") ELSE '0';
--11 for either lead to an error, which is shown by all 3 lights off
--00 is rock, 01 is paper and 10 is scissors
END comb;