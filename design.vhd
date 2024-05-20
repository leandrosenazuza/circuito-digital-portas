testbench.vhd

design.vhd

-- circuito_leandro_01.vhd
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY circuito_leandro_01 IS
    PORT ( a, b, c : IN STD_LOGIC;
           y : OUT STD_LOGIC);
END circuito_leandro_01;

ARCHITECTURE df OF circuito_leandro_01 IS
    SIGNAL m : STD_LOGIC;
BEGIN
    m <= a AND b;
    y <= m OR c;
END df;
