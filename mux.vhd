library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity mux is
port (A,B,C,D: in std_logic; S0,S1: in std_logic; Z: out std_logic);
end mux;

architecture Behavioral of muxb is

begin

process (A,B,C,D,S0,S1)
begin

if (S1='0' and S0='0') then Z<=A;
elsif (S1='0' and S0='1') then Z<=B;
elsif (S1='1' and S0='0') then Z<=C;
else Z<=D;

end if;
end process;
end Behavioral;
