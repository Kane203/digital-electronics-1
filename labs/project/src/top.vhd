----------------------------------------------------------
--
--! @title Driver for 4-digit 7-segment display
--! @author Tomas Fryza
--! Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
--!
--! @copyright (c) 2020 Tomas Fryza
--! This work is licensed under the terms of the MIT license
--
-- Hardware: Nexys A7-50T, xc7a50ticsg324-1L
-- Software: TerosHDL, Vivado 2020.2, EDA Playground
--
----------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

----------------------------------------------------------

entity top is
  port (
    CLK100MHZ     : in    std_logic;
    SW            : in    std_logic_vector(9 downto 0);
    SW_send       : in    std_logic;
    BTNC          : in    std_logic;
    BTND          : in    std_logic;
    seg           : out    std_logic_vector(6 downto 0);
    dig           : out   std_logic_vector(7 downto 0);
    E16           : out    std_logic;
    LED           : out    std_logic
  );
end entity top;

----------------------------------------------------------
-- Architecture declaration for display driver
----------------------------------------------------------

architecture behavioral of top is

  signal clk_ce    : std_logic;
  signal out_a     : std_logic_vector(9 downto 0);
  signal out_1     : std_logic_vector(9 downto 0);
  signal out_2     : std_logic_vector(9 downto 0);
  signal out_3     : std_logic_vector(9 downto 0);
  signal out_4     : std_logic_vector(9 downto 0);
  signal out_5     : std_logic_vector(9 downto 0);
  signal out_6     : std_logic_vector(9 downto 0);
  signal out_7     : std_logic_vector(9 downto 0);
  signal out_8     : std_logic_vector(9 downto 0);

begin

  clk_ena : entity work.clock_cnt_down
    generic map (
      g_LENGTH => 50000000 --! Length of a point in clocks (10ns).
    )
    port map (
      clk => CLK100MHZ,
      rst => BTNC,
      ce  => clk_ce
    );

  sw_driver : entity work.switch_driver
  port map (
    clk => CLK100MHZ,
    rst => BTNC,
    SW => SW,
    send => BTND,
    output => out_a
  );

  mux_10driv : entity work.mux_10bit_driver
  port map (
    clk => CLK100MHZ,
    rst => BTNC,
    input => out_a,
    output1 => out_1,
    output2 => out_2,
    output3 => out_3,
    output4 => out_4,
    output5 => out_5,
    output6 => out_6,
    output7 => out_7,
    output8 => out_8
  );

  disp_driv : entity work.driver_display
  port map (
    clk => CLK100MHZ,
    rst => BTNC,
    data1 => out_1,
    data2 => out_2,
    data3 => out_3,
    data4 => out_4,
    data5 => out_5,
    data6 => out_6,
    data7 => out_7,
    data8 => out_8,
    seg => seg,
    dig => dig
  );

  sender : entity work.morse_sender
  port map (
    clk => clk_ce,
    rst => BTNC,
    data1 => out_1,
    data2 => out_2,
    data3 => out_3,
    data4 => out_4,
    data5 => out_5,
    data6 => out_6,
    data7 => out_7,
    data8 => out_8,
    send => SW_send,
    output => E16,
    led => LED
  );

end architecture behavioral;