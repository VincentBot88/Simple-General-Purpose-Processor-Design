	LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY fsseg IS
PORT ( 
bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
neg : IN STD_LOGIC;
leds, ledss : OUT STD_LOGIC_VECTOR(0 TO 6));
END fsseg;

ARCHITECTURE Behavior OF fsseg IS
BEGIN
PROCESS (bcd, neg)

BEGIN

if (neg ='0') then
	ledss <= not("0000000");
end if;
if (neg = '1') then
	ledss <= not("0000001");
end if;

CASE bcd IS --abcdefg
	when "0000" => leds <= not("0010101"); --n
	when "0001" => leds <= not("0111011"); --y
	when others => leds <= not("0001000"); -- displays (_)
END CASE;

END PROCESS;
END Behavior;