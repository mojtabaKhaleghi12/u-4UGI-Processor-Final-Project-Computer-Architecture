library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity jump_test is
end jump_test;

architecture Behavioral of jump_test is
    signal clk : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    signal instruction : STD_LOGIC_VECTOR (15 downto 0);
    signal zero_flag : STD_LOGIC := '0';
    signal sign_flag : STD_LOGIC := '0';
    signal pc : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');

    -- Component declaration for the Unit Under Test (UUT)
    component jump_test
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               instruction : in STD_LOGIC_VECTOR (15 downto 0);
               zero_flag : in STD_LOGIC;
               sign_flag : in STD_LOGIC;
               pc : inout STD_LOGIC_VECTOR (7 downto 0));
    end component;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: jump_test Port Map (
        clk => clk,
        reset => reset,
        instruction => instruction,
        zero_flag => zero_flag,
        sign_flag => sign_flag,
        pc => pc
    );

    -- Clock process definitions
    clk_process :process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset the system
        reset <= '1';
        wait for 20 ns;
        reset <= '0';

        -- Test case for Br zz
        instruction <= "1100000000000010"; -- Br 0x02
        wait for 20 ns;
        assert (pc = x"02") report "Test Br failed" severity error;

        -- Test case for BZ R1, zz
        pc <= (others => '0');
        instruction <= "1101000000000010"; -- BZ R1, 0x02
        zero_flag <= '1';
        wait for 20 ns;
        assert (pc = x"02") report "Test BZ with zero_flag = 1 failed" severity error;

        pc <= (others => '0');
        zero_flag <= '0';
        instruction <= "1101000000000010"; -- BZ R1, 0x02
        wait for 20 ns;
        assert (pc /= x"02") report "Test BZ with zero_flag = 0 failed" severity error;

        -- Test case for BS R1, zz
        pc <= (others => '0');
        instruction <= "1110000000000010"; -- BS R1, 0x02
        sign_flag <= '1';
        wait for 20 ns;
        assert (pc = x"02") report "Test BS with sign_flag = 1 failed" severity error;

        pc <= (others => '0');
        sign_flag <= '0';
        instruction <= "1110000000000010"; -- BS R1, 0x02
        wait for 20 ns;
        assert (pc /= x"02") report "Test BS with sign_flag = 0 failed" severity error;

        -- Test case for BNZ R1, zz
        pc <= (others => '0');
        instruction <= "1111000000000010"; -- BNZ R1, 0x02
        zero_flag <= '0';
        wait for 20 ns;
        assert (pc = x"02") report "Test BNZ with zero_flag = 0 failed" severity error;

        pc <= (others => '0');
        zero_flag <= '1';
        instruction <= "1111000000000010"; -- BNZ R1, 0x02
        wait for 20 ns;
        assert (pc /= x"02") report "Test BNZ with zero_flag = 1 failed" severity error;

        wait;
    end process;

end Behavioral;
