--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:55:24 05/06/2018
-- Design Name:   
-- Module Name:   C:/Users/saeed/Documents/CSC 342/Lab 6/Group12_Lab6/ROM_test.vhd
-- Project Name:  Group12_Lab6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM
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
USE ieee.numeric_std.ALL;
 
ENTITY ROM_test IS
END ROM_test;
 
ARCHITECTURE behavior OF ROM_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM
    PORT(
         I_ROM_EN : IN  std_logic;
         I_ROM_ADDR : IN  std_logic_vector(31 downto 0);
         O_ROM_DATA : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_ROM_EN : std_logic := '0';
   signal I_ROM_ADDR : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_ROM_DATA : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --constant I_ROM_EN_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM PORT MAP (
          I_ROM_EN => I_ROM_EN,
          I_ROM_ADDR => I_ROM_ADDR,
          O_ROM_DATA => O_ROM_DATA
        );

   -- Clock process definitions
--  I_ROM_EN_process :process
--   begin
--		I_ROM_EN <= '0';
--		wait for I_ROM_EN_period/2;
--		I_ROM_EN <= '1';
--		wait for I_ROM_EN_period/2;
--   end process;


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      --wait for 10 ns;

      -- insert stimulus here

		I_ROM_EN <= '1' ; 
		I_ROM_ADDR <= X"00000000";
	
		wait for 10 ns;
		
		I_ROM_EN <= '0'; 
		I_ROM_ADDR <= X"0000000B";

      wait;
   end process;

END;
