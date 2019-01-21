----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:52:34 05/05/2018 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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
use STD.textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    Port ( I_ROM_EN : in  STD_LOGIC;
           I_ROM_ADDR : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ROM_DATA : out  STD_LOGIC_VECTOR (31 downto 0));
end ROM;

architecture Behavioral of ROM is

type rom_mem is array(0 to 255) of STD_LOGIC_VECTOR(7 downto 0);
signal ccny_rom : rom_mem; 

impure function init_rom_mem(FileName: in String) return rom_mem is 
	constant LINE_NUM: integer := 256;
	file file_pointer : text; 
	variable temp_mem : rom_mem := (others => X"00"); 
	variable line_cache: line; 
	variable byte_cache : bit_vector (31 downto 0):= X"00000000"; 
	
begin 
	file_open(file_pointer, FileName, read_mode); 
	for i in 0 to LINE_NUM loop 
		if endfile(file_pointer) then 
			exit; 
		else 
			readline(file_pointer, line_cache); 
			read(line_cache, byte_cache); 
			temp_mem(4*i) := to_stdlogicvector(byte_cache(31 downto 24));
			temp_mem(4*i+1) := to_stdlogicvector(byte_cache(23 downto 16));
			temp_mem(4*i+2) := to_stdlogicvector(byte_cache(15 downto 8));
			temp_mem(4*i+3) := to_stdlogicvector(byte_cache(7 downto 0));			
		end if; 
	end loop; 
	file_close(file_pointer);
	return temp_mem; 
end function; 

begin
	process(I_ROM_EN, I_ROM_ADDR)

		begin
		ccny_rom <= init_rom_mem("Fibonacci.txt");
			if I_ROM_EN = '1' then 
				O_ROM_DATA(31 downto 24) <= ccny_rom(to_integer(unsigned(I_ROM_ADDR)));
				O_ROM_DATA(23 downto 16) <= ccny_rom(to_integer(unsigned(I_ROM_ADDR)) +1);
				O_ROM_DATA(15 downto 8) <= ccny_rom(to_integer(unsigned(I_ROM_ADDR)) + 2);
				O_ROM_DATA(7 downto 0) <= ccny_rom(to_integer(unsigned(I_ROM_ADDR)) + 3);
			end if;
		end process;
end Behavioral;

