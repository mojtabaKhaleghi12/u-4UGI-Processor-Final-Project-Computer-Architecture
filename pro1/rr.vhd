----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:34:51 06/11/2024 
-- Design Name: 
-- Module Name:    rr - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;††

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port (
        a : in STD_LOGIC_VECTOR (7 downto 0);
        b : in STD_LOGIC_VECTOR (7 downto 0);
        alu_ctrl : in STD_LOGIC_VECTOR (3 downto 0);
        carry_in : in STD_LOGIC;
        immediate : in STD_LOGIC_VECTOR (3 downto 0);
        cmp_request : in STD_LOGIC;  -- Ê—ÊœÌ »—«Ì œ—ŒÊ«”  CMP
        result : out STD_LOGIC_VECTOR (7 downto 0);
        zero : out STD_LOGIC;
        carry : out STD_LOGIC;
        sign : out STD_LOGIC
    );
end ALU;

architecture Behavioral of ALU is
    signal temp_result : STD_LOGIC_VECTOR(7 downto 0);
    signal temp_carry : STD_LOGIC;
    signal shift_ctrl : STD_LOGIC;
    signal shift_result : STD_LOGIC_VECTOR(7 downto 0);
begin
    process(a, b, alu_ctrl, carry_in, immediate, cmp_request)
    begin
        temp_carry <= '0'; 
        if cmp_request = '1' then
            -- CMP operation
            if a = b then
                zero <= '1';
            else
                zero <= '0';
            end if;
            if a < b then
                temp_result <= (others => '1');  -- Set all bits to 1 for carry flag
            else
                temp_result <= (others => '0');  -- Clear carry flag
            end if;
        else
            -- Normal ALU operations
            case alu_ctrl is
                when "0000" => temp_result <= a + b;  -- ADD
                when "0001" => temp_result <= a - b;  -- SUB
                when "0010" => temp_result <= a and b;  -- AND
                when "0011" => temp_result <= a or b;  -- OR
                when "0100" => temp_result <= a + ("0000" & immediate);  -- ADD Immediate
                when "0101" => temp_result <= a - ("0000" & immediate);  -- SUB Immediate
                when "0110" => temp_result <= a xor b;  -- XOR
                when "0111" => temp_result <= a + b + carry_in;  -- ADC
                when "1000" => 
                    shift_ctrl <= '0'; 
                    temp_result <= shift_result; 
                when "1001" => 
                    shift_ctrl <= '1'; 
                    temp_result <= shift_result; 
                when others => temp_result <= (others => '0');
            end case;
            
            if temp_result = "00000000" then
                zero <= '1';
            else
                zero <= '0';
            end if;
        end if;
        
        carry <= temp_carry;
        sign <= temp_result(7); 
    end process;

    result <= temp_result;

end Behavioral;
