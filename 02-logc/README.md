# Lab 2: Nurmukhanbet Mussabek

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

   ![K-maps](https://github.com/Kane203/digital-electronics-1/blob/main/02-logc/more.png)

   Less than:

   ![K-maps](https://github.com/Kane203/digital-electronics-1/blob/main/02-logc/less.png)

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](https://github.com/Kane203/digital-electronics-1/blob/main/02-logc/functi.png)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: 64

```vhdl
    p_stimulus : process
	begin
		-- Report a note at the beginning of stimulus process
		report "Stimulus process started" severity note;

		-- 1 test case
        s_b <= "0110"; 
        s_a <= "0100"; 
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A = '0') and
                (s_B_less_A = '0'))
        -- If false, then report an error
        report "Input combination A=0100 B=0110 FAILED" severity error;

        -- 2 test case
        s_b <= "1100"; 
        s_a <= "1111"; 
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
            	(s_B_equals_A = '0') and
          	    (s_B_less_A = '1'))
        -- If false, then report an error
        report "Input combination A=1111 B=1100 FAILED" severity error;

        -- 3 test case
        s_b <= "0110"; 
        s_a <= "0110"; 
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A = '1') and
                (s_B_less_A = '0'))
        -- If false, then report an error
        report "Input combination A=0110 B=0110 FAILED" severity error;

        -- 4 test case
        s_b <= "1011"; 
        s_a <= "0001"; 
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A = '0') and
                (s_B_less_A = '0'))
        -- If false, then report an error
        report "Input combination A=0001 B=1011 FAILED" severity error;

        -- 5 test case with intentional mistake
        s_b <= "1011"; 
        s_a <= "0000"; 
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A = '0') and
                (s_B_less_A = '1'))
        -- If false, then report an error
        report "Input combination A=0000 B=1011 FAILED" severity error;

        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end architecture testbench;

```

2. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/x/M6jR)
