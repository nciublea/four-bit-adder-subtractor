----------------------------------------------------------------------------------
-- Module Name:    fourBitAdder - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fourBitAdder is
    Port ( A0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           A3 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           B3 : in  STD_LOGIC;
			  sel : in STD_LOGIC;
           a : out  STD_LOGIC;
           b : out  STD_LOGIC;
           c : out  STD_LOGIC;
           d : out  STD_LOGIC;
           e : out  STD_LOGIC;
           ff : out  STD_LOGIC;
           g : out  STD_LOGIC);
end fourBitAdder;

architecture Behavioral of fourBitAdder is

component fullAdd is
port (A,B,carry_in : in STD_LOGIC;
sum, carry_out : out STD_LOGIC);
end component;
signal C1, C2, C3 : STD_LOGIC;
signal B0x, B1x, B2x, B3x : STD_LOGIC;
component segDisplay is
port (x0 : in  STD_LOGIC;
           x1 : in  STD_LOGIC;
           x2 : in  STD_LOGIC;
           x3 : in  STD_LOGIC;
           a : out  STD_LOGIC;
           b : out  STD_LOGIC;
           c : out  STD_LOGIC;
           d : out  STD_LOGIC;
           e : out  STD_LOGIC;
           ff : out  STD_LOGIC;
           g : out  STD_LOGIC);
end component;
signal S0, S1, S2, S3: STD_LOGIC;

begin

B0x <= sel xor B0;
B1x <= sel xor B1;
B2x <= sel xor B2;
B3x <= sel xor B3;

F0: fullAdd port map (A => A0, B => B0x, carry_in => sel, sum => S0);
F1: fullAdd port map (A => A1, B => B1x, carry_in => C1, sum => S1);
F2: fullAdd port map (A => A2, B => B2x, carry_in => C2, sum => S2);
F3: fullAdd port map (A => A3, B => B3x, carry_in => C3, sum => S3);

Decoder: segDisplay port map (x0 => S0, x1 => S1, x2 => S2, x3 => S3, a => a, b => b, c => c, d => d, e => e, ff => ff, g => g);

end Behavioral;
