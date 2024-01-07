----------------------------------------------------------------------------------
-- Module Name:    fullAdd - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdd is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  carry_in : in STD_LOGIC;
           sum : out  STD_LOGIC;
           carry_out : out  STD_LOGIC);
end fullAdd;

architecture Behavioral of fullAdd is
component halfAdd is
port(A,B : in STD_LOGIC;
sum,carry : out STD_LOGIC);
end component;
signal N1,N2,N3 : STD_LOGIC;
begin

halfAdd1: halfAdd port map (A => A, B => B, sum => N1, carry => N2);
haldAdd2: halfAdd port map (A => N1, B => carry_in, sum => sum, carry => N3);
carry_out <= A or B;

end Behavioral;
