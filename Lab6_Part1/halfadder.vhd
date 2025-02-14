LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY halfadder IS
	PORT(
		a :IN STD_LOGIC;
		b :IN STD_LOGIC;
		c :OUT STD_LOGIC;
		s :OUT STD_LOGIC
		);
END halfadder;

ARCHITECTURE comb OF halfadder IS
BEGIN
	c <= a and b;
	s <= a xor b;
END comb;