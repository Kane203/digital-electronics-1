
library ieee;
  use ieee.std_logic_1164.all;

----------------------------------------------------------
-- Entity declaration for testbench
----------------------------------------------------------

entity tb_top is
  -- Entity of testbench is always empty
end entity tb_top;

----------------------------------------------------------
-- Architecture body for testbench
----------------------------------------------------------

architecture testbench of tb_top is

  -- Testbench local constants
  constant c_CLK_100MHZ_PERIOD : time := 10 ns;

  -- Testench local signals
  signal CLK100MHZ     : std_logic;
  signal SW            : std_logic_vector(9 downto 0);
  signal BTNC          : std_logic;
  signal SW_send          : std_logic;
  signal BTND          : std_logic;
  signal seg           : std_logic_vector(6 downto 0);
  signal dig           : std_logic_vector(7 downto 0);
  signal E16           : std_logic;
  signal LED           : std_logic;

begin

  -- Connecting testbench signals with driver_7seg_8digits
  -- entity (Unit Under Test)
  uut_top : entity work.top
    port map (
      CLK100MHZ     => CLK100MHZ,
      SW   => SW,
      SW_send   => SW_send,
      BTNC   => BTNC,
      BTND   => BTND,
      seg   => seg,
      dig     => dig,
      E16   => E16,
      LED   => LED
    );

  --------------------------------------------------------
  -- Clock generation process
  --------------------------------------------------------
  p_clk_gen : process is
  begin

    while now < 50 us loop -- 40 periods of 100MHz clock

      CLK100MHZ <= '0';
      wait for c_CLK_100MHZ_PERIOD / 2;
      CLK100MHZ <= '1';
      wait for c_CLK_100MHZ_PERIOD / 2;

    end loop;
    wait;

  end process p_clk_gen;

  --------------------------------------------------------
  -- Data generation process
  --------------------------------------------------------
  p_stimulus : process is
    begin
      BTNC <= '0';
      BTND <= '0';
      SW_send <= '0';
      wait for 10 ns;
      BTNC <= '1';
      wait for 90 ns;
      BTNC <= '0';
      wait for 10 ns;
      SW <= "0001010111"; -- V
      wait for 50 ns;
      BTND <= '1';
      wait for 20 ns;
      BTND <= '0';
      wait for 10 ns;
      SW <= "0001110101"; -- L
      wait for 50 ns;
      BTND <= '1';
      wait for 20 ns;
      BTND <= '0';
      wait for 10 ns;
      SW <= "0000000111"; -- A
      wait for 50 ns;
      BTND <= '1';
      wait for 20 ns;
      BTND <= '0';
      wait for 10 ns;
      SW <= "0000110101"; -- D
      wait for 50 ns;
      BTND <= '1';
      wait for 20 ns;
      BTND <= '0';
      wait for 10 ns;
      SW <= "0000000101"; -- I
      wait for 50 ns;
      BTND <= '1';
      wait for 20 ns;
      BTND <= '0';
      wait for 10 ns;
      SW <= "0000110111"; -- K
      wait for 50 ns;
      BTND <= '1';
      wait for 20 ns;
      BTND <= '0';
      wait for 10 ns;
      SW <= "1111111111"; -- 0
      wait for 50 ns;
      BTND <= '1';
      wait for 20 ns;
      BTND <= '0';
      wait for 10 ns;
      SW <= "0111111111"; -- 1
      wait for 50 ns;
      BTND <= '1';
      wait for 20 ns;
      BTND <= '0';
      wait for 50 ns;

      SW_send <= '1';
      wait for 15 us;
      BTNC <= '1';
      wait for 90 ns;
      BTNC <= '0';
      wait for 10 ns;
      wait;
    end process p_stimulus;
  
  end architecture testbench;
  