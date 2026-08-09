library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registro4Bits is
    Port (
        CLK   : in  STD_LOGIC;
        LOAD  : in  STD_LOGIC;
        DATA  : in  STD_LOGIC_VECTOR(3 downto 0);
        VALOR : out STD_LOGIC_VECTOR(3 downto 0)
    );
end Registro4Bits;

architecture Behavioral of Registro4Bits is
    signal Q_reg : STD_LOGIC_VECTOR(3 downto 0) := "0000";
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if LOAD = '1' then
                Q_reg <= DATA;
            end if;
        end if;
    end process;

    VALOR <= Q_reg;
end Behavioral;