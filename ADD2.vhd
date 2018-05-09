----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:50:09 05/09/2018 
-- Design Name: 
-- Module Name:    ADD2 - Behavioral 
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

entity ADD2 is
    Port ( I_ADD2_A : in  STD_LOGIC_VECTOR (31 downto 0);
           I_ADD2_B : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ADD2_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end ADD2;

architecture Behavioral of ADD2 is

begin


end Behavioral;

