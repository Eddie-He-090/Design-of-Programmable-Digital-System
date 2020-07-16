library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity oneseg7 is
 PORT(  clk  :  IN  STD_LOGIC;
		 rst  : IN STD_LOGIC;   --复位输入
		 key1 : IN STD_LOGIC;	--按键计数输入
		 seg: out std_logic_vector(7 downto 0);  --数码管的段数据，包括小数点共8段LED，低电平点亮
		 dig: out std_logic_vector(3 downto 0)		--数码管的选通信号,共4个数码管，低电平选通
       ); 	
END oneseg7;
ARCHITECTURE behav OF oneseg7 IS
	--数码管显示用到的信号
  signal num 	:  integer range 0 to 9;  

begin
   --******************************************
	--数码管译码显示部分
	--************************************
	-- dig <= "1110";		--数码管的选通信号,共4个数码管，低电平选通,这里只选通第一个
	 process(num)
	   begin
		 dig <= "1110"; --数码管的选通信号,共4个数码管，低电平选通,这里只选通第一个
		 case num is			-- hgfedcba
				when 0 => seg <= "11000000"; -- 0
				when 1 => seg <= "11111001"; -- 1
				when 2 => seg <= "10100100"; -- 2
				when 3 => seg <= "10110000"; -- 3
				when 4 => seg <= "10011001"; -- 4
				when 5 => seg <= "10010010"; -- 5
				when 6 => seg <= "10000010"; -- 6
				when 7 => seg <= "11111000"; -- 7
				when 8 => seg <= "10000000"; -- 8
				when 9 => seg <= "10010000"; -- 9
				when others =>NULL;
		  end case;
		end process;
------------------------------------------------------------------------------------
-- 译码示意图
--                        a(0)
--                      +------+ 
--                 f(5) |      | b(1)
--								| g(6) |
--                      +------+  
--                 e(4) |      | c(2)
--								|		 |
--                      +------+  .h(7)
--                        d(3)
--
--                  低电平点亮
------------------------------------------------------------------------------------	
	
--******************************************************************************	
--计数及按键滤波部分
--******************************************************************************

--十进制计数模块
process (clk, key1)
begin
	if clk'event and clk = '1' then
		if rst = '0' then	
			num <= 0;
		else
			if (key1 = '0')  then	--直接使用按键key1的信号，未经消抖处理
				if num = 9 then 
					num <= 0;
				else	
					num <= num + 1;
				end if;
			end if;
		end if;
	end if;
end process;


end behav;