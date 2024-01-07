----------------------------------------------------------------------------------
-- Module Name:    halfAdd - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity halfAdd is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end halfAdd;

architecture Behavioral of halfAdd is

begin

sum <= A xor B;

carry <= A and B;

end Behavioral;
