library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_tb is
end ALU_tb;

architecture Behavioral of ALU_tb is
    signal a : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal b : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal alu_ctrl : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal carry_in : STD_LOGIC := '0';
    signal immediate : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal cmp_request : STD_LOGIC := '0';  
    signal result : STD_LOGIC_VECTOR(7 downto 0);
    signal zero : STD_LOGIC;
    signal carry : STD_LOGIC;
    signal sign : STD_LOGIC;

    component ALU
        Port (
            a : in STD_LOGIC_VECTOR (7 downto 0);
            b : in STD_LOGIC_VECTOR (7 downto 0);
            alu_ctrl : in STD_LOGIC_VECTOR (3 downto 0);
            carry_in : in STD_LOGIC;
            immediate : in STD_LOGIC_VECTOR (3 downto 0);
            cmp_request : in STD_LOGIC;  
            result : out STD_LOGIC_VECTOR (7 downto 0);
            zero : out STD_LOGIC;
            carry : out STD_LOGIC;
            sign : out STD_LOGIC
        );
    end component;

begin

    uut: ALU
        Port map (
            a => a,
            b => b,
            alu_ctrl => alu_ctrl,
            carry_in => carry_in,
            immediate => immediate,
            cmp_request => cmp_request,  
            result => result,
            zero => zero,
            carry => carry,
            sign => sign
        );

    process
    begin
        -- ADD
        a <= "00000001";
        b <= "00000010";
        alu_ctrl <= "0000";
        cmp_request <= '0'; 
        wait for 10 ns;
        
        -- SUB
        a <= "00000011";
        b <= "00000001";
        alu_ctrl <= "0001";
        cmp_request <= '0'; 
        wait for 10 ns;

        -- CMP
        a <= "00000011";
        b <= "00000001";
        alu_ctrl <= "0001";
        cmp_request <= '1'; 
        wait for 10 ns;

        -- AND
        a <= "00001111";
        b <= "11110000";
        alu_ctrl <= "0010";
        cmp_request <= '0';  
        wait for 10 ns;

        -- OR
        a <= "00001111";
        b <= "11110000";
        alu_ctrl <= "0011";
        cmp_request <= '0';  
        wait for 10 ns;

        -- ADD Immediate
        a <= "00001111";
        immediate <= "1010";
        alu_ctrl <= "0100";
        cmp_request <= '0';  
        wait for 10 ns;

        -- SUB Immediate
        a <= "00001111";
        immediate <= "0010";
        alu_ctrl <= "0101";
        cmp_request <= '0';  
        wait for 10 ns;

        -- XOR
        a <= "10101010";
        b <= "01010101";
        alu_ctrl <= "0110";
        cmp_request <= '0';  
        wait for 10 ns;

        -- ADC
        a <= "00001111";
        b <= "00000001";
        carry_in <= '1';
        alu_ctrl <= "0111";
        cmp_request <= '0';  
        wait for 10 ns;

        -- test lsh
        a <= "00001111";
        alu_ctrl <= "1000";
        cmp_request <= '0';  
        wait for 10 ns;

        -- test rsh
        a <= "00001111";
        alu_ctrl <= "1001";
        cmp_request <= '0';  
        wait for 10 ns;

        wait;
    end process;

end Behavioral;
