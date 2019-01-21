-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

COMPONENT CCSiMP32
   PORT( I_EN	:	IN	STD_LOGIC; 
          I_CLK	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL I_EN	:	STD_LOGIC;
   SIGNAL I_CLK	:	STD_LOGIC;

	constant I_CLK_period : time := 10 ns;
BEGIN

   UUT: CCSiMP32 PORT MAP(
		I_EN => I_EN, 
		I_CLK => I_CLK
   );

   -- Clock process definitions
   I_CLK_process :process
   begin
		I_CLK <= '0';
		wait for I_CLK_period/2;
		I_CLK <= '1';
		wait for I_CLK_period/2;
   end process;

   tb : PROCESS
   BEGIN
		wait for I_CLK_period*10;
		I_EN <= '1';
      WAIT; -- will wait forever
   END PROCESS;

END;
