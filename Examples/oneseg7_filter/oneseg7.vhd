LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
--use ieee.std_logic_arith.all; 

ENTITY oneseg7 IS
 PORT(clk: IN  STD_LOGIC;
		rst: IN STD_LOGIC;   --复位输入
		led: OUT STD_LOGIC;
		key1: IN STD_LOGIC;	--按键计数输入
		seg: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);  --数码管的段数据，包括小数点共8段LED，低电平点亮
		dig: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)		--数码管的选通信号,共4个数码管，低电平选通
       ); 	
END oneseg7;
ARCHITECTURE behav OF oneseg7 IS
	--数码管显示用到的信号
  SIGNAL num: INTEGER RANGE 0 TO 9;  
  
  --按键消抖及计数用的信号
  SIGNAL key1filt :STD_LOGIC;	--按键key1消抖后得到的信号
  SIGNAL key1cnt :INTEGER RANGE 0 TO 50000000; --用于对key1按键输入有效时间进行计数

BEGIN
   --******************************************
	--数码管译码显示部分
	--************************************
	-- dig <= "1110";		--数码管的选通信号,共4个数码管，低电平选通,这里只选通第一个
	 PROCESS(num)
	   BEGIN
		 dig <= "1110"; --数码管的选通信号,共4个数码管，低电平选通,这里只选通第一个
		 CASE num IS			-- hgfedcba
				WHEN 0 => seg <= "11000000"; -- 0
				WHEN 1 => seg <= "11111001"; -- 1
				WHEN 2 => seg <= "10100100"; -- 2
				WHEN 3 => seg <= "10110000"; -- 3
				WHEN 4 => seg <= "10011001"; -- 4
				WHEN 5 => seg <= "10010010"; -- 5
				WHEN 6 => seg <= "10000010"; -- 6
				WHEN 7 => seg <= "11111000"; -- 7
				WHEN 8 => seg <= "10000000"; -- 8
				WHEN 9 => seg <= "10010000"; -- 9
				WHEN OTHERS =>NULL;
		  END CASE;
		END PROCESS;
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

PROCESS (clk, key1filt)
BEGIN
	IF clk'EVENT AND clk = '1' THEN
		IF rst = '0' THEN	
			num <= 0;
		ELSE
			--IF (key1 = '0')  THEN	--直接使用按键key1的信号，未经消抖处理
			IF (key1filt = '1')  THEN --按键key1 经消抖处理后
				IF num = 9 THEN 
					num <= 0;
				ELSE	
					num <= num + 1;
				END IF;
			END IF;
		END IF;
	END IF;
	END PROCESS;


--按键消抖
--设计思路：当按键被按下时，输入低电平，开始计数，一直计数到N，期间一旦按键输入高电平，即清零计数值。
--最后计数值若达到预设值N，表明按键已稳定按下，发出一个脉冲。

PROCESS (key1)
    CONSTANT N : INTEGER:= 5000000;	--消抖时间，对于50Mhz的基准时钟，这相当于0.1S
BEGIN 
	IF clk'EVENT AND clk = '1' THEN
		IF key1 = '0' THEN 	--当key1 输入低电平，即按键按下
			IF key1cnt /= N THEN --一直计数到N
				key1cnt <= key1cnt + 1;
			END IF;
			IF key1cnt = N-1 THEN --最后一个计数时输出key1filt脉冲 
				key1filt <= '1';
			ELSE
				key1filt <= '0';
			END IF;
		ELSE 					--若key1 输入高电平，表明按键被释放
			key1cnt <= 0;
		END IF;	
	END IF;	
END process;

END behav;