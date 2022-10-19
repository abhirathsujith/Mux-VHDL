library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity muxtb is

end muxtb;

architecture MUX1TB of muxtb is
component mux 

port (A,B,C,D: in std_logic; S0,S1: in std_logic; Z: out std_logic);

end component;

signal A,B,C,D:  std_logic; 
signal S0,S1: std_logic;
signal Z: std_logic;

begin

uut: mux port map (A=>A, B=>B , C=>C, D=>D, S0=>S0, S1=>S1, Z=>Z);

process
begin
wait for 20ns;

A <= '1'; B <= '1'; C <= '0'; D <= '1'; 

S1 <= '0'; S0 <= '0';
wait for 20ns;

S1 <= '0'; S0 <= '1';
wait for 30ns;

S1 <= '1'; S0 <= '0';

wait for 40ns;
S1 <= '1'; S0 <= '1';
wait for 50ns;

end process;
end MUX1TB;
