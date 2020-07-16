LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY div1000 IS

GENERIC(m: INTEGER := 50000);  --原来有50000000个脉冲。现在每一个脉冲里包含原来的50000个脉冲，所以变成1000hz
PORT (clk: IN STD_LOGIC;
        q: OUT STD_LOGIC);
		  
END div1000;

ARCHITECTURE behave OF div1000 IS

signal count :integer range m-1 downto 0:=m-1;
BEGIN

   process(clk)
   begin

     if rising_edge(clk) then
       count<=count-1;
        if count>=m/2 then    --脉冲占空比是1/2，前半部分输出低电平，后半部分输出高电平
          q<='0';
           else
            q<='1';
        end if;
        if count<=0 then
          count<=m-1;
        end if;
     end if;

   end process;
end behave;