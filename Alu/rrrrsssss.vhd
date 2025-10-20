--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:03:55 06/11/2024
-- Design Name:   
-- Module Name:   C:/Users/vboxuser/Desktop/ise/pro1/rrrrsssss.vhd
-- Project Name:  pro1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rr
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
 
ENTITY rrrrsssss IS
END rrrrsssss;
 
ARCHITECTURE behavior OF rrrrsssss IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rr
    PORT(a : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         alu_ctrl : IN  std_logic_vector(2 downto 0);
         result : OUT  std_logic_vector(7 downto 0);
         zero : OUT  std_logic
        );
    END COMPONENT;
	 
    --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal alu_ctrl : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal result : std_logic_vector(7 downto 0);
   signal zero : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rr PORT MAP (
        );

   -- Clock process definitions
   a_process :process
   begin
		a <= '0';
		wait for a_period*2;
		a <= '1';
		wait for a_period*2;
   end process;
	
	b_process :process
   begin
		b <= '0';
		wait for b_period/2;
		b <= '1';
		wait for b_period/2;
   end process;
	
	alu_ctrl_process :process
   begin
		alu_ctrl <= '0';
		wait for alu_ctrl_period/4;
		alu_ctrl <= '1';
		wait for alu_ctrl_period/4;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for a_period*10;
		wait for b_period*10;
		wait for alu_ctrl_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
