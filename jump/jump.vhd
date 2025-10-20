----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:02:58 07/06/2024 
-- Design Name: 
-- Module Name:    jump - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jump is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           instruction : in STD_LOGIC_VECTOR (15 downto 0);
           zero_flag : in STD_LOGIC;
           sign_flag : in STD_LOGIC;
           pc : inout STD_LOGIC_VECTOR (7 downto 0));
end jump;

architecture Behavioral of jump is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            pc <= (others => '0');
        elsif rising_edge(clk) then
            case instruction(15 downto 12) is
                when "1100" => -- BR
                    pc <= pc + instruction(7 downto 0);
                when "1101" => -- BZ
                    if zero_flag = '1' then
                        pc <= pc + instruction(7 downto 0);
                    end if;
                when "1110" => -- BS
                    if sign_flag = '1' then
                        pc <= pc + instruction(7 downto 0);
                    end if;
                when "1111" => -- BNZ
                    if zero_flag = '0' then
                        pc <= pc + instruction(7 downto 0);
                    end if;
                when others =>
                    -- No operation for other instructions
                    null;
            end case;
        end if;
    end process;
end Behavioral;
