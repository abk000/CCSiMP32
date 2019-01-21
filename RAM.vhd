----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:15:52 05/05/2018 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity RAM is
    Port ( I_RAM_EN : in  STD_LOGIC;
           I_RAM_RE : in  STD_LOGIC;
           I_RAM_WE : in  STD_LOGIC;
           I_RAM_ADDR : in  STD_LOGIC_VECTOR (31 downto 0);
           I_RAM_DATA : in  STD_LOGIC_VECTOR (31 downto 0);
           O_RAM_DATA : out  STD_LOGIC_VECTOR (31 downto 0));
end RAM;

architecture Behavioral of RAM is

type ram_mem is array(0 to 255) of STD_LOGIC_VECTOR(7 downto 0);
signal ccny_ram : ram_mem;

impure function init_ram_mem(FileName: in String) return ram_mem is 
	constant LINE_NUM: integer := 256;
	file file_pointer : text; 
	variable temp_mem : ram_mem := (others => X"00"); 
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
	process(I_RAM_EN, I_RAM_RE, I_RAM_WE, I_RAM_ADDR)
		constant offset: integer := 8192; 
			-- to account for the address range starting at 0x00002000
		begin
		ccny_ram <= init_ram_mem("RAM_init.txt");
		if I_RAM_EN = '1' then 
			if I_RAM_WE = '1' then 
				ccny_ram(to_integer(unsigned(I_RAM_ADDR))-offset) <= I_RAM_DATA(31 downto 24);
				ccny_ram(to_integer(unsigned(I_RAM_ADDR))-offset+1) <= I_RAM_DATA(23 downto 16);
				ccny_ram(to_integer(unsigned(I_RAM_ADDR))-offset+2) <= I_RAM_DATA(15 downto 8);
				ccny_ram(to_integer(unsigned(I_RAM_ADDR))-offset+3) <= I_RAM_DATA(7 downto 0);
			end if; 
			if I_RAM_RE = '1' then
				O_RAM_DATA(31 downto 24) <= ccny_ram(to_integer(unsigned(I_RAM_ADDR))-offset);
				O_RAM_DATA(23 downto 16) <= ccny_ram(to_integer(unsigned(I_RAM_ADDR))-offset+1);
				O_RAM_DATA(15 downto 8) <= ccny_ram(to_integer(unsigned(I_RAM_ADDR))-offset+2);
				O_RAM_DATA(7 downto 0) <= ccny_ram(to_integer(unsigned(I_RAM_ADDR))-offset+3);				
			end if; 
		end if; 
	end process;
end Behavioral;

