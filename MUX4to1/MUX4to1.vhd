library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4to1 is
    Port ( U : in STD_LOGIC;
           V : in STD_LOGIC;
           W : in STD_LOGIC;
           X : in STD_LOGIC;
           S : in STD_LOGIC_vector (1 downto	0);
           M : out STD_LOGIC);
end MUX4to1;

architecture dataflow of MUX4to1 is
begin
 M <= U when S = "00" else
		V when S = "01" else
		W when S = "10" else
		X when S = "11"; 
		--This uses the S input to decide which output to pass through
end dataflow;


-- SW0 00, SW1 01, SW2 10, SW3 11
-- SW0  U, SW1  V, SW2  W, SW3  X