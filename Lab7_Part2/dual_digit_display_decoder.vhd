library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity dual_digit_display_decoder is
    Port (
        Ain  : in  STD_LOGIC_VECTOR(3 downto 0);
        Bin  : in  STD_LOGIC_VECTOR(3 downto 0);
        Aout : out STD_LOGIC_VECTOR(6 downto 0);
        Bout : out STD_LOGIC_VECTOR(6 downto 0)
    );
end dual_digit_display_decoder;

architecture Behavioral of dual_digit_display_decoder is
    component display_decoder
        Port (
            X : in  STD_LOGIC_VECTOR(3 downto 0);  
            Y : out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;

begin
    --First display
    DISP0: display_decoder
        port map(
            X => Ain,
            Y => Aout
        );

    --Second Display
    DISP1: display_decoder
        port map(
            X => Bin,
            Y => Bout 
        );

end Behavioral;
