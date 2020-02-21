library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_arith.ALL; -- Balioak gehitzeko (+) funtzioa duen liburutegia.

entity Plentziapolis_Main is PORT(

	clk: IN std_logic;
	reset: IN std_logic_vector(0 DOWNTO 0);
	dirua: IN std_logic_vector(2 DOWNTO 0);
	irteerak: OUT std_logic_vector(2 DOWNTO 0)
	);
	
end Plentziapolis_Main;

ARCHITECTURE Behavioral of Plentziapolis_Main is

	TYPE estados IS(s0,s1,s2,s3,s4,s5,s6,s7);
	SIGNAL kontua: estados;
	SIGNAL kontadore : integer := 1;
	
		
BEGIN
	
	PROCESS(clk, reset)
	
	BEGIN
		kontua <= s0;
		
		-- Reset etengailua aktibatzean edozein momentuan guren zentimoak 0ra itzuliko dira
		IF reset = "1" THEN
			kontua <= s0;
		
		ELSIF (clk'EVENT AND clk = '1') THEN
		
			CASE kontua IS
				
				-- 0
				WHEN s0 =>
					IF dirua = "000" THEN kontua <= s0; -- Egoera mantentzen du
					ELSIF dirua = "001" THEN kontua <= s1; -- +5
					ELSIF dirua = "010" THEN kontua <= s3; -- +10
					ELSIF dirua = "100" THEN kontua <= s5; -- +20
					END IF;
				
				-- 5 (pasuko egoera)
				WHEN s1 =>
					IF dirua = "001" THEN kontua <= s1; -- Egoera mantentzen du
					ELSIF dirua = "000" THEN kontua <= s2; --Hurrengo egoerara pasatzen da
					END IF;
					
					-- 5 (benetazko egoera) 
				WHEN s2 =>
					IF dirua = "000" THEN kontua <= s2; -- Egoera mantentzen du
					ELSIF dirua = "001" THEN kontua <= s3; -- +5
					ELSIF dirua = "010" THEN kontua <= s5; -- +10
					ELSIF dirua = "100" THEN kontua <= s6; -- +20
					END IF;
					
					-- 10 (pasuko egoera)
				WHEN s3 =>
					IF dirua = "000" THEN kontua <= s4; -- Hurrengo egoerara pasatzen da
					ELSIF dirua = "001" THEN kontua <= s3; -- Egoera mantentzen du
					ELSIF dirua = "010" THEN kontua <= s3; -- Egorea mantentzen du
					END IF;
					
					-- 10 (benetazko egoera)
				WHEN s4 =>
					IF dirua = "000" THEN kontua <= s4; -- Egoera mantentzen du
					ELSIF dirua = "001" THEN kontua <= s5; -- +5
					ELSIF dirua = "010" THEN kontua <= s5; -- +10
					ELSIF dirua = "100" THEN kontua <= s7; -- +20
					END IF;
					
					-- 15 
				WHEN s5 => -- Izozkiaren Egoera
					kontua <= s5;
					
					-- 25
				WHEN s6 => -- Haizagailuaren Egoera
					kontua <= s6;
					
					-- 500000000 tick = 5 segundu (100000kHz-ko clk bat daukagu, beraz 100000000 tick/seg)
					IF (kontadore = 500000000) THEN 
						kontadore <= 1;
						kontua <= s0;
					ELSE
						kontadore <= kontadore + 1; -- +100000000 tick/seg
					END IF;
					
					-- 30
				WHEN s7 =>  -- Haizagailu 
					kontua <= s7;	
					
					IF (kontadore = 500000000) THEN 
						kontadore <= 1;
						kontua <= s0;
					ELSE
						kontadore <= kontadore + 1; -- +100000000 tick/seg
					END IF;
				
			END CASE;
			
		END IF;
	
	END PROCESS;

	PROCESS(kontua)
	
	BEGIN
	
		CASE kontua IS
	
			--15
			WHEN s5 => 
				irteerak <= "001";
				
			--25
			WHEN s6 => 
				irteerak <= "010"; 		
				
			--30
			WHEN s7 => 
				irteerak <= "100"; 
				
			-- Beste edozein kasurako LEDak itzalita egongo dira
			WHEN OTHERS => 
				irteerak <= "000";
			
		END CASE;
		
	END PROCESS;

end Behavioral;
