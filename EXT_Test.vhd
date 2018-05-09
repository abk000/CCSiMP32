--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:58:01 05/09/2018
-- Design Name:   
-- Module Name:   C:/Users/saeed/Documents/CSC 342/Lab 6/Group12_Lab7_Source/EXT_Test.vhd
-- Project Name:  Group12_Lab7_Source
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: EXT
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
 
ENTITY EXT_Test IS
END EXT_Test;
 
ARCHITECTURE behavior OF EXT_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EXT
    PORT(
         I_EXT_16 : IN  std_logic_vector(15 downto 0);
         O_EXT_32 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_EXT_16 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal O_EXT_32 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EXT PORT MAP (
          I_EXT_16 => I_EXT_16,
          O_EXT_32 => O_EXT_32
        );

   -- Clock process definitions
  -- <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for <clock>_period*10;

    -- insert stimulus here 

	I_EXT_16 <= X"1111"; 

      wait;
   end process;

END;
