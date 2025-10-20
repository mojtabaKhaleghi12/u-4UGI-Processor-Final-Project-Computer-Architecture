--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:47:04 07/07/2024
-- Design Name:   
-- Module Name:   C:/Users/sa/ise/CA_pro/Top_Moudel_/TopModule_tb.vhd
-- Project Name:  Top_Moudel_
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TopModule
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 

entity TopModule_tb is
end TopModule_tb;

architecture Behavioral of TopModule_tb is
    component TopModule
        Port (
            clk : in STD_LOGIC;
            rst : in STD_LOGIC;
            opcode : in STD_LOGIC_VECTOR (3 downto 0);
            a : in STD_LOGIC_VECTOR (7 downto 0);
            b : in STD_LOGIC_VECTOR (7 downto 0);
            addr : in STD_LOGIC_VECTOR (8 downto 0);
            data_in : in STD_LOGIC_VECTOR (7 downto 0);
            read_en : in STD_LOGIC;
            write_en : in STD_LOGIC;
            result : out STD_LOGIC_VECTOR (7 downto 0);
            zero : out STD_LOGIC;
            data_out : out STD_LOGIC_VECTOR (7 downto 0);
            instruction : in STD_LOGIC_VECTOR (15 downto 0);
            pc : inout STD_LOGIC_VECTOR (7 downto 0);
            sign : out STD_LOGIC;
            carry : out STD_LOGIC;
				immediate : in STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    signal clk : STD_LOGIC := '0';
    signal rst : STD_LOGIC := '0';
    signal opcode : STD_LOGIC_VECTOR (3 downto 0);
    signal a : STD_LOGIC_VECTOR (7 downto 0);
    signal b : STD_LOGIC_VECTOR (7 downto 0);
    signal addr : STD_LOGIC_VECTOR (8 downto 0);
    signal data_in : STD_LOGIC_VECTOR (7 downto 0);
    signal read_en : STD_LOGIC := '0';
    signal write_en : STD_LOGIC := '0';
    signal result : STD_LOGIC_VECTOR (7 downto 0);
    signal zero : STD_LOGIC;
    signal data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal instruction : STD_LOGIC_VECTOR (15 downto 0);
    signal pc : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal sign : STD_LOGIC;
    signal carry : STD_LOGIC;
	 signal immediate : STD_LOGIC_VECTOR (3 downto 0);

    constant clk_period : time := 1 ns;
begin
    -- Instantiate the Unit Under Test (UUT)
    uut: TopModule
        port map (
            clk => clk,
            rst => rst,
            opcode => opcode,
            a => a,
            b => b,
            addr => addr,
            data_in => data_in,
            read_en => read_en,
            write_en => write_en,
            result => result,
            zero => zero,
            data_out => data_out,
            instruction => instruction,
            pc => pc,
            sign => sign,
            carry => carry,
				immediate => immediate
        );

    clk_process : process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    stim_proc : process
    begin
        rst <= '1';
        wait for clk_period * 2;
        rst <= '0';
        
        opcode <= "0000"; -- ADD operation
        a <= "00000001";
        b <= "00000001";
        wait for clk_period * 10;

        opcode <= "0001"; -- SUB operation
        a <= "00000010";
        b <= "00000001";
        wait for clk_period * 10;

        opcode <= "0100"; -- ADD im
        a <= "00000001";
        immediate <= "0001";
        wait for clk_period * 10;		  


        opcode <= "0000"; -- sub im
        a <= "00000001";
        immediate <= "0001";
        wait for clk_period * 10;

        opcode <= "0011"; -- or 
        a <= "00001111";
        b <= "00011100";
        wait for clk_period * 10;
		  
        opcode <= "0010"; -- and 
        a <= "00011001";
        b <= "00010000";
        wait for clk_period * 10;

        opcode <= "0110"; -- xor
        a <= "00000001";
        b <= "00010101";
        wait for clk_period * 10;
		  		  		  
		  
        -- Test Memory write
        write_en <= '1';
        addr <= "000000000";
        data_in <= "11110000";
        wait for clk_period * 10;
        write_en <= '0';

        -- Test Memory read
        read_en <= '1';
        wait for clk_period * 10;
        read_en <= '0';
		   -- Test Memory write
        write_en <= '1';
        addr <= "000000001";
        data_in <= "11110000";
        wait for clk_period * 10;
        write_en <= '0';

        -- Test Memory read
        read_en <= '1';
        addr <= "000000001";  -- Address from which to read
        wait for clk_period * 10;
        read_en <= '0';
		  -- Change addr for another test
        addr <= "111111111";
        wait for clk_period * 10;

        instruction <= "1100000000000001"; -- BR zz
        wait for clk_period * 10;

        instruction <= "1101000000000001"; -- BZ zz
        wait for clk_period * 10;

        instruction <= "1110000000000001"; -- BS zz
        wait for clk_period * 10;

        instruction <= "1111000000000001"; -- BNZ zz
        wait for clk_period * 10;

        opcode <= "1011"; -- CMP operation
        a <= "00000010";
        b <= "00000010";
        wait for clk_period * 10;

        wait;
    end process;

end Behavioral;
