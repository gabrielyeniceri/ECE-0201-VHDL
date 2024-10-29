library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--https://surf-vhdl.com/vhdl-syntax-web-course-surf-vhdl/vhdl-behavioral-modeling-style/
--https://surf-vhdl.com/vhdl-syntax-web-course-surf-vhdl/vhdl-structural-modeling-style/
entity main is
    Port ( X : in  STD_LOGIC_VECTOR(3 downto 0);
           Hout : out STD_LOGIC_VECTOR(6 downto 0);
           D1out : out STD_LOGIC_VECTOR(6 downto 0);
           D0out : out STD_LOGIC_VECTOR(6 downto 0));
end main;

architecture structural_main of main is
    component comparator
        Port ( X : in  STD_LOGIC_VECTOR(3 downto 0);
               Z : out STD_LOGIC);
    end component;
    
    component unit_digit
        Port ( X : in  STD_LOGIC_VECTOR(3 downto 0);
               Y : out STD_LOGIC_VECTOR(3 downto 0));
    end component;
    
    component tens_digit
        Port ( Z : in  STD_LOGIC;
               D1 : out STD_LOGIC_VECTOR(3 downto 0));
    end component;
    
    component mux_4b_2to1
        Port ( X : in  STD_LOGIC_VECTOR(3 downto 0);
               Y : in  STD_LOGIC_VECTOR(3 downto 0);
               Z : in  STD_LOGIC;
               D0 : out STD_LOGIC_VECTOR(3 downto 0));
    end component;
    
    component display_decoder
        Port ( X : in  STD_LOGIC_VECTOR(3 downto 0);
               Y : out STD_LOGIC_VECTOR(6 downto 0));
    end component;
    
    signal Z : STD_LOGIC;
    signal Y : STD_LOGIC_VECTOR(3 downto 0);
    signal D1 : STD_LOGIC_VECTOR(3 downto 0);
    signal D0 : STD_LOGIC_VECTOR(3 downto 0);
    
begin
    COMP: comparator
        Port map (X => X, Z => Z);

    UNIT: unit_digit
        Port map (X => X, Y => Y);

    TENS: tens_digit
        Port map (Z => Z, D1 => D1);

    MUX: mux_4b_2to1
        Port map (X => X, Y => Y, Z => Z, D0 => D0);

    DISP_H: display_decoder
        Port map (X => X, Y => Hout);
    
    DISP_D1: display_decoder
        Port map (X => D1, Y => D1out); 
    
    DISP_D0: display_decoder
        Port map (X => D0, Y => D0out);
    
end structural_main;