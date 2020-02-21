library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all;

entity Kontadorea is Port(
			RST: in STD_LOGIC;
			T: out STD_LOGIC);
end Kontadorea;

architecture Behavioral of Kontadorea is

SIGNAL kontaketa: std_logic_vector (2 DOWNTO 0);
SIGNAL Tbitarteko: std_logic := '0';

begin

	PROCESS (RST, kontaketa)
		BEGIN
			IF RST = '0' THEN
				kontaketa <= "000";
				Tbitarteko <= '0';
			ELSE
				IF kontaketa >= "100" THEN
					Tbitarteko <= '1';
				ELSE
					kontaketa <= kontaketa + 1;
				END IF;
			END IF;
	END process;
		
	T <= Tbitarteko;

end Behavioral;
