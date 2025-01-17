library ieee;
use ieee.std_logic_1164.all;

entity FA is
	port(A, B, Cin: std_logic;
		S, Cout: out std_logic);
end;

architecture arch of FA is
begin
	S <= A xor B xor Cin;
	Cout <= ( Cin and (A xor B) ) or (A and B);
end;