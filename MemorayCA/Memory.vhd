----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:12 07/03/2024 
-- Design Name: 
-- Module Name:    Memory - Behavioral 
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
use IEEE.NUMERIC_STD.ALL; -- ÝÞØ ˜ÊÇÈÎÇäå NUMERIC_STD ÈÑÇí ÊÈÏíáåÇ

entity Memory is
    Port (
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        read_en : in STD_LOGIC;
        write_en : in STD_LOGIC;
        addr : in STD_LOGIC_VECTOR(8 downto 0);  -- 9-bit address for 512 bytes
        data_in : in STD_LOGIC_VECTOR(7 downto 0);
        data_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Memory;

architecture Behavioral of Memory is
    type mem_array is array (0 to 511) of STD_LOGIC_VECTOR(7 downto 0);  -- 512 bytes memory
    signal memory : mem_array := (others => (others => '0'));
begin
    process(clk, rst)
    begin
        if rst = '1' then
            memory <= (others => (others => '0'));
        elsif rising_edge(clk) then
            if write_en = '1' then
                memory(to_integer(unsigned(addr))) <= data_in;
            end if;
        end if;
    end process;

    process(read_en, addr)
    begin
        if read_en = '1' then
            data_out <= memory(to_integer(unsigned(addr)));
        else
            data_out <= (others => 'Z');
        end if;
    end process;
end Behavioral;
