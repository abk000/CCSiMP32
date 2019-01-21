--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:55:12 04/30/2018
-- Design Name:   
-- Module Name:   C:/Users/saeed/Documents/CSC 342/Lab 6/Group12_Lab6/REG_Test.vhd
-- Project Name:  Group12_Lab6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: REG
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
 
ENTITY REG_Test IS
END REG_Test;
 
ARCHITECTURE behavior OF REG_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REG
    PORT(
         I_REG_EN : IN  std_logic;
         I_REG_WE : IN  std_logic;
         I_REG_SELECT_RS : IN  std_logic_vector(4 downto 0);
         I_REG_SELECT_RT : IN  std_logic_vector(4 downto 0);
         I_REG_SELECT_RD : IN  std_logic_vector(4 downto 0);
         I_REG_DATA_RD : IN  std_logic_vector(31 downto 0);
         O_REG_DATA_A : OUT  std_logic_vector(31 downto 0);
         O_REG_DATA_B : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_REG_EN : std_logic := '0';
   signal I_REG_WE : std_logic := '0';
   signal I_REG_SELECT_RS : std_logic_vector(4 downto 0) := (others => '0');
   signal I_REG_SELECT_RT : std_logic_vector(4 downto 0) := (others => '0');
   signal I_REG_SELECT_RD : std_logic_vector(4 downto 0) := (others => '0');
   signal I_REG_DATA_RD : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_REG_DATA_A : std_logic_vector(31 downto 0);
   signal O_REG_DATA_B : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant I_REG_EN_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REG PORT MAP (
          I_REG_EN => I_REG_EN,
          I_REG_WE => I_REG_WE,
          I_REG_SELECT_RS => I_REG_SELECT_RS,
          I_REG_SELECT_RT => I_REG_SELECT_RT,
          I_REG_SELECT_RD => I_REG_SELECT_RD,
          I_REG_DATA_RD => I_REG_DATA_RD,
          O_REG_DATA_A => O_REG_DATA_A,
          O_REG_DATA_B => O_REG_DATA_B
        );

   -- Clock process definitions
   I_REG_EN_process :process
   begin
		I_REG_EN <= '0';
		wait for I_REG_EN_period/2;
		I_REG_EN <= '1';
		wait for I_REG_EN_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for I_REG_EN_period*10;

      -- insert stimulus here

		-- to test writing and reading of registers 
		I_REG_EN <= '1'; 		 
		I_REG_SELECT_RS <= "01000"; -- reading value of register 8 or $t0
		I_REG_SELECT_RT <= "01001"; -- reading value of register 9 or $t1 
		I_REG_SELECT_RD <= "01000"; -- write to register 10 or $t2 
		I_REG_DATA_RD <= X"01010101"; -- value to write to $t2   
		I_REG_WE <= '0';
		wait for 40 ns; 
		
		 --to test if values are stored 
		I_REG_EN <= '1'; 
		I_REG_WE <= '1'; 
		I_REG_SELECT_RS <= "01000"; -- reading value of register 8 or $t0
		I_REG_SELECT_RT <= "01001"; -- reading value of register 10 or $t2 
		I_REG_SELECT_RD <= "01000"; -- write to register 9 or $t1 
		I_REG_DATA_RD <= X"01010101"; -- value to write to $t1
			-- the last two lines don't matter because since enable signals are 0, we can't change the registers anyhow. 

		wait for 40 ns; 

		I_REG_EN <= '0'; 
		I_REG_WE <= '1'; 
		I_REG_SELECT_RS <= "01000"; -- reading value of register 8 or $t0
		I_REG_SELECT_RT <= "01001"; -- reading value of register 10 or $t2 
		I_REG_SELECT_RD <= "01000"; -- write to register 9 or $t1 
		I_REG_DATA_RD <= X"FFFFFFFF"; -- value to write to $t1		
		
      wait;
   end process;

END;
