----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:45:10 07/07/2024 
-- Design Name: 
-- Module Name:    Shifter - Behavioral 
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

entity Shifter is
    Port (
        data_in : in STD_LOGIC_VECTOR(7 downto 0);
        shift_ctrl : in STD_LOGIC; -- '0' for shift left, '1' for shift right
        data_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Shifter;

architecture Behavioral of Shifter is
begin
    process(data_in, shift_ctrl)
    begin
        if shift_ctrl = '0' then
            data_out <= std_logic_vector(shift_left(unsigned(data_in), 1));
        else
            data_out <= std_logic_vector(shift_right(unsigned(data_in), 1));
        end if;
    end process;
end Behavioral;
