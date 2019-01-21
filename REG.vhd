----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:13:40 04/30/2018 
-- Design Name: 
-- Module Name:    REG - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity REG is
    Port ( I_REG_EN : in  STD_LOGIC;
           I_REG_WE : in  STD_LOGIC;
           I_REG_SELECT_RS : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_SELECT_RT : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_SELECT_RD : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_DATA_RD : in  STD_LOGIC_VECTOR (31 downto 0);
           O_REG_DATA_A : out  STD_LOGIC_VECTOR (31 downto 0);
           O_REG_DATA_B : out  STD_LOGIC_VECTOR (31 downto 0));
end REG;

architecture Behavioral of REG is
type registers is array (0 to 31) of std_logic_vector(31 downto 0);
signal ccny_regs: registers := (	0 => X"00000000",
											2 => X"02020202", 
											4 => X"04040404", 
											8 => X"08080808", 
											9 => X"09090909", 
											10=> X"0A0A0A0A", 
											11 => X"0B0B0B0B", 
											12 => X"0C0C0C0C", 
											13 => X"0D0D0D0D", 
											14 => X"0E0E0E0E", 
											15 => X"0F0F0F0F", 
											16 => X"10101010", 
											17 => X"11111111", 
											18 => X"12121212", 
											19 => X"13131313", 
											20 => X"14141414", 
											21 => X"15151515", 
											22 => X"16161616", 
											23 => X"17171717", 
											24 => X"18181818", 
											25 => X"19191919", 
											others => X"00000000");
begin
process(I_REG_EN, I_REG_WE)
	begin
		if I_REG_EN = '1' then 
		O_REG_DATA_A <= ccny_regs(to_integer(unsigned(I_REG_SELECT_RS)));
		O_REG_DATA_B <= ccny_regs(to_integer(unsigned(I_REG_SELECT_RT))); 
			if I_REG_WE = '1' then 
				ccny_regs(to_integer(unsigned(I_REG_SELECT_RD))) <= I_REG_DATA_RD; 
			end if;
		end if;
	end process;
end Behavioral;

