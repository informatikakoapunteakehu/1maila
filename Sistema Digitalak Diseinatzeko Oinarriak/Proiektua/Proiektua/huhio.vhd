--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:40:26 12/22/2014
-- Design Name:   
-- Module Name:   C:/Documents and Settings/alumno/Mis documentos/PDSD_C/GL3/p_3_1/Practica_3.2/Plentziapolis/huhio.vhd
-- Project Name:  Plentziapolis
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Plentziapolis_Main
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY huhio IS
END huhio;
 
ARCHITECTURE behavior OF huhio IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Plentziapolis_Main
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic_vector(0 downto 0);
         dirua : IN  std_logic_vector(2 downto 0);
         irteerak : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic_vector(0 downto 0) := (others => '0');
   signal dirua : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal irteerak : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Plentziapolis_Main PORT MAP (
          clk => clk,
          reset => reset,
          dirua => dirua,
          irteerak => irteerak
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
	
      wait for clk_period*10;

      -- insert stimulus here 
		
		dirua <= "100";

      wait;
   end process;

END;
