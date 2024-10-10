Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ALU is
	port(
	Clock: in std_logic;
	A, B: in unsigned(7 downto 0);
	student_id: in unsigned(3 downto 0);
	OP: in unsigned(15 downto 0);
	Neg: out std_logic;
	R1: out unsigned(3 downto 0);
	R2: out unsigned(3 downto 0)
	);
end ALU;

architecture calculation of ALU is
	signal Reg1, Reg2, Result: unsigned(7 downto 0):=(others=>'0');
	signal digit1, digit2: unsigned(7 downto 0);
	signal Parity : std_logic ;
	begin
		Reg1 <= A;
		
		process(Clock, OP)
			begin
			if(rising_edge(Clock)) then
				Parity <= student_id(3) xor student_id(2) xor student_id(1) xor student_id(0);
				case OP is
					when "0000000000000001" =>
						if Parity = '1' then
							 Result <= "00000000"; -- N
						else
							 Result <= "00000001"; -- Y
						end if;

					when "0000000000000010" =>
						if Parity = '1' then 
							 Result <= "00000000"; -- N
						else
							 Result <= "00000001"; -- Y
						end if;

					when "0000000000000100" =>
						if Parity = '1' then
							 Result <= "00000000"; -- N
						else
							 Result <= "00000001"; -- Y
						end if;

					when "0000000000001000" =>
						if Parity = '1' then
							 Result <= "00000000"; -- N
						else
							 Result <= "00000001"; -- Y
						end if;

					when "0000000000010000" =>
						if Parity = '1' then
							 Result <= "00000000"; -- N
						else
							 Result <= "00000001"; -- Y
						end if;

					when "0000000000100000" =>
						if Parity = '1' then
							 Result <= "00000000"; -- N
						else
							 Result <= "00000001"; -- Y
						end if;

					when "0000000001000000" =>
						if Parity = '1' then
							 Result <= "00000000"; -- N
						else
							 Result <= "00000001"; -- Y
						end if;

					when "0000000010000000" =>
						if Parity = '1' then
							 Result <= "00000000"; -- N
						else
							 Result <= "00000001"; -- Y
						end if;

					when "0000000100000000" =>
						if Parity = '1' then
							 Result <= "00000000"; -- N
						else
							 Result <= "00000001"; -- Y
						end if;

					when others =>
						-- Don't care do nothing
			
				end case;
			end if;
		end process;
	
	R1 <= Result(3 downto 0)

end calculation;