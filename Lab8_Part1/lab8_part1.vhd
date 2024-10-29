library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab8_part1 is
    Port (  A_top   : in STD_LOGIC_VECTOR(7 downto 0);
            B_top   : in STD_LOGIC_VECTOR(7 downto 0);
            Cin_top : in STD_LOGIC;
            S_top   : out STD_LOGIC_VECTOR(7 downto 0);
            Cout_top: out STD_LOGIC);
end lab8_part1;

architecture struct of lab8_part1 is

    -- 4-bit RCA component declaration
    component Four_Bit_RCA
        Port (  A     : in STD_LOGIC_VECTOR(3 downto 0);
                B     : in STD_LOGIC_VECTOR(3 downto 0);
                Cin   : in STD_LOGIC;
                S     : out STD_LOGIC_VECTOR(3 downto 0);
                Cout  : out STD_LOGIC);
    end component;

    -- Intermediate signal for carry between the two 4-bit RCAs
    signal C4: STD_LOGIC;

begin
    -- First 4-Bit RCA for lower 4 bits
    RCA_Lower: Four_Bit_RCA port map(
        A => A_top(3 downto 0),
        B => B_top(3 downto 0),
        Cin => Cin_top,
        S => S_top(3 downto 0),
        Cout => C4
    );

    -- Second 4-Bit RCA for upper 4 bits
    RCA_Upper: Four_Bit_RCA port map(
        A => A_top(7 downto 4),
        B => B_top(7 downto 4),
        Cin => C4,
        S => S_top(7 downto 4),
        Cout => Cout_top
    );

end struct;
