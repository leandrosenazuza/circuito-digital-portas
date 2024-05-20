
-- tb_circuito_leandro_01.vhd
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tb_circuito_leandro_01 IS
END tb_circuito_leandro_01;

ARCHITECTURE simple OF tb_circuito_leandro_01 IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT circuito_leandro_01 IS
        PORT (
            a, b, c : IN STD_LOGIC;
            y : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Signals for testing
    signal a, b, c, y : std_logic := '0';

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: circuito_leandro_01 PORT MAP (
        a => a,
        b => b,
        c => c,
        y => y
    );

    -- Stimulus process
    stim_proc: process
    begin
        -- Apply test vectors
        a <= '0'; b <= '0'; c <= '0'; -- y should be '0'
        wait for 10 ns;

        a <= '0'; b <= '0'; c <= '1'; -- y should be '1'
        wait for 10 ns;

        a <= '0'; b <= '1'; c <= '0'; -- y should be '0'
        wait for 10 ns;

        a <= '0'; b <= '1'; c <= '1'; -- y should be '1'
        wait for 10 ns;

        a <= '1'; b <= '0'; c <= '0'; -- y should be '0'
        wait for 10 ns;

        a <= '1'; b <= '0'; c <= '1'; -- y should be '1'
        wait for 10 ns;

        a <= '1'; b <= '1'; c <= '0'; -- y should be '1'
        wait for 10 ns;

        a <= '1'; b <= '1'; c <= '1'; -- y should be '1'
        wait for 10 ns;

        -- End simulation
        wait;
    end process;

END simple;
