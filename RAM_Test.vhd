--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:36:06 05/07/2018
-- Design Name:   
-- Module Name:   C:/Users/saeed/Documents/CSC 342/Lab 6/Group12_Lab6/RAM_Test.vhd
-- Project Name:  Group12_Lab6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM
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
 
ENTITY RAM_Test IS
END RAM_Test;
 
ARCHITECTURE behavior OF RAM_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         I_RAM_EN : IN  std_logic;
         I_RAM_RE : IN  std_logic;
         I_RAM_WE : IN  std_logic;
         I_RAM_ADDR : IN  std_logic_vector(31 downto 0);
         I_RAM_DATA : IN  std_logic_vector(31 downto 0);
         O_RAM_DATA : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_RAM_EN : std_logic := '0';
   signal I_RAM_RE : std_logic := '0';
   signal I_RAM_WE : std_logic := '0';
   signal I_RAM_ADDR : std_logic_vector(31 downto 0) := (others => '0');
   signal I_RAM_DATA : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_RAM_DATA : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant I_RAM_EN_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          I_RAM_EN => I_RAM_EN,
          I_RAM_RE => I_RAM_RE,
          I_RAM_WE => I_RAM_WE,
          I_RAM_ADDR => I_RAM_ADDR,
          I_RAM_DATA => I_RAM_DATA,
          O_RAM_DATA => O_RAM_DATA
        );

   -- Clock process definitions
--   I_RAM_EN_process :process
--   begin
--		I_RAM_EN <= '0';
--		wait for I_RAM_EN_period/2;
--		I_RAM_EN <= '1';
--		wait for I_RAM_EN_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- to simply read from an address
		I_RAM_EN <= '1';
      I_RAM_RE <= '1'; 
      I_RAM_WE <=	'0';
		I_RAM_DATA <= X"01010101";
      I_RAM_ADDR <= X"00002000";
		
		wait for 10 ns;
		
		-- to write to an address
		I_RAM_EN <= '1'; 
		I_RAM_RE <= '0'; 
		I_RAM_WE <= '1';
		I_RAM_DATA <= X"02020202";
		I_RAM_ADDR <= X"0000200F"; 

		wait for 10 ns; 

		-- read new values
		I_RAM_EN <= '1';
      I_RAM_RE <= '1'; 
      I_RAM_WE <=	'0';
		I_RAM_DATA <= X"01010101";
		I_RAM_ADDR <= X"0000200F";
		

      wait;
   end process;

END;
