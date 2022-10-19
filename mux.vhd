library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
port (A,B,C,D: in std_logic; S0,S1: in std_logic; Z: out std_logic);
end mux;

architecture MUX1 of mux is

begin

Z <= ((not S1) and (not S0) and ( A )) or ((not S1) and ( S0) and ( B )) or (( S1) and (not S0) and ( C )) or ((S1) and (S0) and ( D ));


end MUX1;
