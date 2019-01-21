----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:39:08 05/09/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( I_ALU_EN : in  STD_LOGIC;
           I_ALU_CTL : in  STD_LOGIC_VECTOR (3 downto 0);
           I_ALU_A : in  STD_LOGIC_VECTOR (31 downto 0);
           I_ALU_B : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ALU_Out : out  STD_LOGIC_VECTOR (31 downto 0);
           O_ALU_Zero : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

begin
	process(I_ALU_EN, I_ALU_CTL, I_ALU_A, I_ALU_B) 
	
	variable result : integer := 0; 
	
	begin 
		if I_ALU_EN = '1' then
		--addu 
			if I_ALU_CTL = "0010" then  
			
				result := to_integer(unsigned(I_ALU_A))+ to_integer(unsigned(I_ALU_B)); 
				
			end if;
		--substract	
			if I_ALU_CTL = "0110" then 
			
				result := to_integer(unsigned(I_ALU_A)) - to_integer(unsigned(I_ALU_B));
			
			end if;
			
		-- check for zero 
			
			if result = 1 then 
			O_ALU_Zero <= '0'; 
			elsif result = 0 then 
			O_ALU_Zero <= '1';
			end if; 
			
			O_ALU_Out <= std_logic_vector(to_unsigned(result, 32)); 
 			
		end if; 
	end process; 
end Behavioral;

