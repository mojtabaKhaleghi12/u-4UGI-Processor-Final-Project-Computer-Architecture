--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:05:06 07/03/2024
-- Design Name:   
-- Module Name:   C:/Users/sa/ise/MemorayCA/Memory_tb.vhd
-- Project Name:  MemorayCA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Memory
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 

entity Memory_tb is
end Memory_tb;

architecture Behavioral of Memory_tb is
    
    signal clk : STD_LOGIC := '0';
    signal rst : STD_LOGIC := '0';
    signal read_en : STD_LOGIC := '0';
    signal write_en : STD_LOGIC := '0';
    signal addr : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
    signal data_in : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal data_out : STD_LOGIC_VECTOR(7 downto 0);
    
    component Memory
        Port (
            clk : in STD_LOGIC;
            rst : in STD_LOGIC;
            read_en : in STD_LOGIC;
            write_en : in STD_LOGIC;
            addr : in STD_LOGIC_VECTOR(2 downto 0);
            data_in : in STD_LOGIC_VECTOR(7 downto 0);
            data_out : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

begin

    uut: Memory
        Port map (
            clk => clk,
            rst => rst,
            read_en => read_en,
            write_en => write_en,
            addr => addr,
            data_in => data_in,
            data_out => data_out
        );

    clk_process :process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    stim_proc: process
    begin
        rst <= '1';
        wait for 20 ns;
        rst <= '0';
        
        write_en <= '1';
        read_en <= '0';
        
        addr <= "000"; data_in <= "00000001"; wait for 20 ns;
        addr <= "001"; data_in <= "00000010"; wait for 20 ns;
        addr <= "010"; data_in <= "00000011"; wait for 20 ns;
        addr <= "011"; data_in <= "00000100"; wait for 20 ns;
        addr <= "100"; data_in <= "00000101"; wait for 20 ns;
        addr <= "101"; data_in <= "00000110"; wait for 20 ns;
        addr <= "110"; data_in <= "00000111"; wait for 20 ns;
        addr <= "111"; data_in <= "00001000"; wait for 20 ns;
        
        write_en <= '0';
        
        read_en <= '1';
        
        addr <= "000"; wait for 20 ns;
        assert (data_out = "00000001") report "Test failed for address 000" severity error;
        
        addr <= "001"; wait for 20 ns;
        assert (data_out = "00000010") report "Test failed for address 001" severity error;
        
        addr <= "010"; wait for 20 ns;
        assert (data_out = "00000011") report "Test failed for address 010" severity error;
        
        addr <= "011"; wait for 20 ns;
        assert (data_out = "00000100") report "Test failed for address 011" severity error;
        
        addr <= "100"; wait for 20 ns;
        assert (data_out = "00000101") report "Test failed for address 100" severity error;
        
        addr <= "101"; wait for 20 ns;
        assert (data_out = "00000110") report "Test failed for address 101" severity error;
        
        addr <= "110"; wait for 20 ns;
        assert (data_out = "00000111") report "Test failed for address 110" severity error;
        
        addr <= "111"; wait for 20 ns;
        assert (data_out = "00001000") report "Test failed for address 111" severity error;
        
        wait;
    end process;

end Behavioral;

