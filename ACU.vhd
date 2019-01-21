----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:05:17 04/18/2018 
-- Design Name: 
-- Module Name:    ACU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ACU is
    Port ( I_ACU_ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           I_ACU_Funct : in  STD_LOGIC_VECTOR (5 downto 0);
           O_ACU_CTL : out  STD_LOGIC_VECTOR (3 downto 0));
end ACU;
architecture Behavioral of ACU is
begin

Sorting : process (I_ACU_ALUOp (1 downto 0)) is
begin
-- sw/lw & addi/addiu
	if I_ACU_ALUOp = "00" then 
		O_ACU_CTL <= "0010"; 
	end if; 
-- beq/bne
	if I_ACU_ALUOp = "01" then 
		O_ACU_CTL <= "0110"; 
	end if; 
-- R-Type instructions 
	if I_ACU_ALUOp = "10" then 
		if I_ACU_Funct = "100000" or I_ACU_Funct = "100001" then --addu 
			O_ACU_CTL <= "0010"; 
		elsif I_ACU_Funct = "100010" then -- sub
			O_ACU_CTL <= "0110"; 
		end if; 		
	end if; 
end process Sorting;
end Behavioral;

