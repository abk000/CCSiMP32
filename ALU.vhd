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
--use IEEE.NUMERIC_STD.ALL;

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


end Behavioral;

