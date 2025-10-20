--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:17:42 07/06/2024
-- Design Name:   
-- Module Name:   C:/Users/vboxuser/Desktop/ise/jump/test_jump.vhd
-- Project Name:  jump
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jump
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
-------------------------------------------------------------------------------
 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_jump is
end tb_jump;

architecture Behavioral of tb_jump is
    signal clk : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    signal instruction : STD_LOGIC_VECTOR(15 downto 0);
    signal zero_flag : STD_LOGIC := '0';
    signal sign_flag : STD_LOGIC := '0';
    signal pc : STD_LOGIC_VECTOR(7 downto 0);
    
    component jump
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               instruction : in STD_LOGIC_VECTOR (15 downto 0);
               zero_flag : in STD_LOGIC;
               sign_flag : in STD_LOGIC;
               pc : inout STD_LOGIC_VECTOR (7 downto 0));
    end component;

begin
    uut: jump port map (
        clk => clk,
        reset => reset,
        instruction => instruction,
        zero_flag => zero_flag,
        sign_flag => sign_flag,
        pc => pc
    );

    clk_process: process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process clk_process;

    stim_proc: process
    begin
        --  reset
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        
        -- Test BR 
        instruction <= "1100000000000011"; 
        wait for 20 ns;
        
        -- Test BZ 
        instruction <= "1101000000000101"; 
        zero_flag <= '1';
        wait for 20 ns;
        
        -- Test BS 
        instruction <= "1110000000000010"; 
        sign_flag <= '1';
        zero_flag <= '0';
        wait for 20 ns;
        
        -- Test BNZ 
        instruction <= "1111000000000100"; 
        zero_flag <= '0';
        wait for 20 ns;
        
        -- Test no jump condition
        instruction <= "1101000000000111"; 
        zero_flag <= '0';
        wait for 20 ns;
        
        wait;
    end process stim_proc;
end Behavioral;

