# Lab 7:Nurmukhanbet Mussabek

### Display driver

1. Listing of VHDL code of the completed process `p_mux`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
    --------------------------------------------------------
    -- p_mux:
    -- A sequential process that implements a multiplexer for
    -- selecting data for a single digit, a decimal point 
    -- signal, and switches the common anodes of each display.
    --------------------------------------------------------
    p_mux : process(clk)
    begin
        if rising_edge(clk) then
            if (reset = '1') then
                s_hex <= data0_i;
                dp_o  <= dp_i(0);
                dig_o <= "1110";
            else
                case s_cnt is
                    when "11" =>
                        s_hex <= data3_i;
                        dp_o  <= dp_i(3);
                        dig_o <= "0111";

                    when "10" =>
                        s_hex <= data2;
			            dp_o  <= dp_vect(2);
			            dig_o <= "1011";

                    when "01" =>
                       s_hex <= data1;
			           dp_o  <= dp_vect(1);
			           dig_o <= "1101";

                    when others =>
                       s_hex <= data0;
                       dp_o  <= dp_vect(0);
                       dig_o <= "1110";
                end case;
            end if;
        end if;
    end process p_mux;
```
### Eight-digit driver

1. Image of the 8-digit driver's block schematic. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components, and internal signals!

   ![your figure](https://github.com/Kane203/digital-electronics-1/blob/main/labs/07-display_driver/digittt.png)
