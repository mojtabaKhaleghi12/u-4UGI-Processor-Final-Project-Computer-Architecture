----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:27:31 06/12/2024 
-- Design Name: 
-- Module Name:    Control_unit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Control_unit is
    Port ( 
        opcode : in STD_LOGIC_VECTOR (3 downto 0);
        reg_dst : out STD_LOGIC;
        alu_src : out STD_LOGIC;
        mem_to_reg : out STD_LOGIC;
        reg_write : out STD_LOGIC;
        mem_read : out STD_LOGIC;
        mem_write : out STD_LOGIC;
        branch : out STD_LOGIC;
        alu_op : out STD_LOGIC_VECTOR (3 downto 0);
        cmp_request : out STD_LOGIC 
    );
end Control_unit;

architecture Behavioral of Control_unit is
begin
    process (opcode)
    begin
        case opcode is
            when "0000" => -- ADD
                reg_dst <= '1';
                alu_src <= '0';
                mem_to_reg <= '0';
                reg_write <= '1';
                mem_read <= '0';
                mem_write <= '0';
                branch <= '0';
                alu_op <= "0000";
                cmp_request <= '0';  

            when "0001" => -- SUB
                reg_dst <= '1';
                alu_src <= '0';
                mem_to_reg <= '0';
                reg_write <= '1';
                mem_read <= '0';
                mem_write <= '0';
                branch <= '0';
                alu_op <= "0001";
                cmp_request <= '0'; 

            when "0010" => -- AND
                reg_dst <= '1';
                alu_src <= '0';
                mem_to_reg <= '0';
                reg_write <= '1';
                mem_read <= '0';
                mem_write <= '0';
                branch <= '0';
                alu_op <= "0010";
                cmp_request <= '0'; 

            when "0011" => -- OR
                reg_dst <= '1';
                alu_src <= '0';
                mem_to_reg <= '0';
                reg_write <= '1';
                mem_read <= '0';
                mem_write <= '0';
                branch <= '0';
                alu_op <= "0011";
                cmp_request <= '0'; 

            when "0100" => -- ADD Immediate
                reg_dst <= '0';
                alu_src <= '1';
                mem_to_reg <= '0';
                reg_write <= '1';
                mem_read <= '0';
                mem_write <= '0';
                branch <= '0';
                alu_op <= "0100";
                cmp_request <= '0';  

            when "0101" => -- SUB Immediate
                reg_dst <= '0';
                alu_src <= '1';
                mem_to_reg <= '0';
                reg_write <= '1';
                mem_read <= '0';
                mem_write <= '0';
                branch <= '0';
                alu_op <= "0101";
                cmp_request <= '0';  

            when "0110" => -- XOR
                reg_dst <= '1';
                alu_src <= '0';
                mem_to_reg <= '0';
                reg_write <= '1';
                mem_read <= '0';
                mem_write <= '0';
                branch <= '0';
                alu_op <= "0110";
                cmp_request <= '0';  

            when "0111" => -- ADC
                reg_dst <= '1';
                alu_src <= '0';
                mem_to_reg <= '0';
                reg_write <= '1';
                mem_read <= '0';
                mem_write <= '0';
                branch <= '0';
                alu_op <= "0111";
                cmp_request <= '0'; 

            when "1000" => -- Shift Left
                reg_dst <= '1';
                alu_src <= '0';
                mem_to_reg <= '0';
                reg_write <= '1';
                mem_read <= '0';
                mem_write <= '0';
                branch <= '0';
                alu_op <= "1000";
                cmp_request <= '0'; 

            when "1001" => -- Shift Right
                reg_dst <= '1';
                alu_src <= '0';
                mem_to_reg <= '0';
                reg_write <= '1';
                mem_read <= '0';
                mem_write <= '0';
                branch <= '0';
                alu_op <= "1001";
                cmp_request <= '0'; 

            when "1010" => -- Branch instruction
                reg_dst <= '0';
                alu_src <= '0';
                mem_to_reg <= '0';
                reg_write <= '0';
                mem_read <= '0';
                mem_write <= '0';
                branch <= '1'; 
                alu_op <= "0000"; -- alu_op
                cmp_request <= '0';  

            when others =>
                reg_dst <= '0';
                alu_src <= '0';
                mem_to_reg <= '0';
                reg_write <= '0';
                mem_read <= '0';
                mem_write <= '0';
                branch <= '0';
                alu_op <= "0000";
                cmp_request <= '1';  
        end case;
    end process;            
end Behavioral;
