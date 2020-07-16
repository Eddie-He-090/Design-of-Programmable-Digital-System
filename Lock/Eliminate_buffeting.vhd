LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Eliminate_buffeting IS
PORT(clk, ein: IN STD_LOGIC;
     eout: OUT STD_LOGIC);
END ENTITY Eliminate_buffeting;
	  
ARCHITECTURE behav OF Eliminate_buffeting IS
  SIGNAL number: INTEGER RANGE 0 TO 9;--按键消抖及计数用的信号
  SIGNAL key1cnt: INTEGER RANGE 0 TO 50000000; --用于对key1按键输入有效时间进行计数

BEGIN
--按键消抖
--设计思路：当按键被按下时，输入低电平，开始计数，一直计数到N，期间一旦按键输入高电平，即清零计数值。
--最后计数值若达到预设值N，表明按键已稳定按下，发出一个脉冲。
PROCESS(ein, clk)IS
    CONSTANT N :INTEGER:= 5000000;	--消抖时间，对于50Mhz的基准时钟，这相当于0.1S
BEGIN
	IF(clk'EVENT AND clk='1')THEN
		IF ein='0' THEN 	--当key1 输入低电平，即按键按下
			IF key1cnt/=N THEN --一直计数到N
				key1cnt<=key1cnt+1;
			END IF;
			IF key1cnt=N-1 THEN --最后一个计数时输出key1filt脉冲 
				eout<='1';
			ELSE
				eout<='0';
			END IF;
		ELSE 					--若key1 输入高电平，表明按键被释放
			key1cnt<=0;
		END IF;	
	END IF;	
END PROCESS;
END behav;