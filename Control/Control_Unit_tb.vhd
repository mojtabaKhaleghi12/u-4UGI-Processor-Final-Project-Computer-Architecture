library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control_unit_tb is
end Control_unit_tb;

architecture Behavioral of Control_unit_tb is
    signal opcode : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal reg_dst : STD_LOGIC;
    signal alu_src : STD_LOGIC;
    signal mem_to_reg : STD_LOGIC;
    signal reg_write : STD_LOGIC;
    signal mem_read : STD_LOGIC;
    signal mem_write : STD_LOGIC;
    signal branch : STD_LOGIC;
    signal alu_op : STD_LOGIC_VECTOR(3 downto 0);
    signal cmp_request : STD_LOGIC; 

    component Control_unit
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
    end component;

begin

    uut: Control_unit
        port map (
            opcode => opcode,
            reg_dst => reg_dst,
            alu_src => alu_src,
            mem_to_reg => mem_to_reg,
            reg_write => reg_write,
            mem_read => mem_read,
            mem_write => mem_write,
            branch => branch,
            alu_op => alu_op,
            cmp_request => cmp_request  
        );

    process
    begin
        -- Test ADD
        opcode <= "0000";
        wait for 10 ns;

        -- Test SUB
        opcode <= "0001";
        wait for 10 ns;

        -- Test AND
        opcode <= "0010";
        wait for 10 ns;

        -- Test OR
        opcode <= "0011";
        wait for 10 ns;

        -- Test ADD Immediate
        opcode <= "0100";
        wait for 10 ns;

        -- Test SUB Immediate
        opcode <= "0101";
        wait for 10 ns;

        -- Test XOR
        opcode <= "0110";
        wait for 10 ns;

        -- Test ADC
        opcode <= "0111";
        wait for 10 ns;

        -- Test SHL
        opcode <= "1000";
        wait for 10 ns;

        -- Test SHR
        opcode <= "1001";
        wait for 10 ns;

        -- Test Branch
        opcode <= "1010";
        wait for 10 ns;

        -- Test CMP
        opcode <= "1011";  
        wait for 10 ns;

        wait;
    end process;

end Behavioral;
