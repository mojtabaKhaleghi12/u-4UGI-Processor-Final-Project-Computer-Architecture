----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:43:53 07/07/2024 
-- Design Name: 
-- Module Name:    TopModule - Behavioral 
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



entity TopModule is
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
end TopModule;

architecture Behavioral of TopModule is
    signal alu_ctrl : STD_LOGIC_VECTOR (3 downto 0); 
    signal alu_result : STD_LOGIC_VECTOR (7 downto 0);
    signal alu_zero : STD_LOGIC;
    signal alu_sign : STD_LOGIC; 
    signal reg_dst, alu_src, mem_to_reg, reg_write, mem_read, mem_write, branch : STD_LOGIC;
    signal cmp_request : STD_LOGIC; 
    signal carry_in : STD_LOGIC := '0'; 

begin
    U_ALU: entity work.ALU
        port map (
            a => a,
            b => b,
            alu_ctrl => alu_ctrl,
            carry_in => carry_in, 
            immediate => immediate, 
            cmp_request => cmp_request, 
            result => alu_result,
            zero => alu_zero,
            carry => carry, 
            sign => alu_sign  
        );

    U_Control: entity work.Control_unit
        port map (
            opcode => opcode,
            reg_dst => reg_dst,
            alu_src => alu_src,
            mem_to_reg => mem_to_reg,
            reg_write => reg_write,
            mem_read => mem_read,
            mem_write => mem_write,
            branch => branch,
            alu_op => alu_ctrl,
            cmp_request => cmp_request 
        );

    U_Memory: entity work.Memory
        port map (
            clk => clk,
            rst => rst,
            read_en => read_en,
            write_en => write_en,
            addr => addr,
            data_in => data_in,
            data_out => data_out
        );

    U_Jump: entity work.jump
        port map (
            clk => clk,
            reset => rst,
            instruction => instruction,
            zero_flag => alu_zero,
            sign_flag => alu_sign, 
            pc => pc
        );

    result <= alu_result;
    zero <= alu_zero;
    sign <= alu_sign;

end Behavioral;
