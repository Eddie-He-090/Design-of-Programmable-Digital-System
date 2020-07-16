LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY seg7led IS
	PORT(
	   clk: IN STD_LOGIC;   --clk为1000Hz
		LIGHT1, LIGHT2, NUM1, NUM2: IN INTEGER RANGE 0 TO 9 ;
		TOseg7com: OUT STD_LOGIC_VECTOR(3 downto 0);
		data_out:	OUT STD_LOGIC_VECTOR(7 downto 0)
		  );
END seg7led;

ARCHITECTURE example OF seg7led IS 
   SIGNAL CNT4: INTEGER RANGE 0 TO 3 := 0;
	SIGNAL SHUJU: INTEGER RANGE 0 TO 9;
BEGIN

   PROCESS(clk)
	BEGIN
	   IF (clk'EVENT AND clk = '1') THEN
		      CNT4 <= CNT4+1;
				CASE CNT4 IS
				   WHEN 0 => 
					          TOseg7com <= "0111"; SHUJU <= NUM2;
					WHEN 1 => 
					          TOseg7com <= "1011"; SHUJU <= NUM1;
					WHEN 2 => 
					          TOseg7com <= "1101"; SHUJU <= LIGHT2;
					WHEN 3 => 
					          TOseg7com <= "1110"; SHUJU <= LIGHT1;
					WHEN OTHERS => NULL;
				END CASE;
		 END IF;
	 END PROCESS;
					

	process(SHUJU)
	begin
			case SHUJU is
				when 0 => data_out <= "11000000"; -- 0
				when 1 => data_out <= "11111001"; -- 1
				when 2 => data_out <= "10100100"; -- 2
				when 3 => data_out <= "10110000"; -- 3
				when 4 => data_out <= "10011001"; -- 4
				when 5 => data_out <= "10010010"; -- 5
				when 6 => data_out <= "10000010"; -- 6			
				when 7 => data_out <= "11111000"; -- 7
				when 8 => data_out <= "10000000"; -- 8
				when 9 => data_out <= "10010000"; -- 9
				when others => NULL;
			end case;
	end process;

END example;