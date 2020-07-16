LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Lock_Combined IS
 PORT( clk: IN  STD_LOGIC;
		 s6, s2, s3, s4, s5: IN STD_LOGIC;
		 led: OUT STD_LOGIC;  --'1'点亮，'0'熄灭
		 seg: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);  --数码管的段数据，包括小数点共8段LED，低电平点亮
		 dig: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)		--数码管的选通信号,共4个数码管，低电平选通
       ); 	
END Lock_Combined;
ARCHITECTURE behav OF Lock_Combined IS
	--数码管扫描显示用到的信号
  SIGNAL scan: STD_LOGIC_VECTOR(1 DOWNTO 0);
  SIGNAL divclk: STD_LOGIC; --由基准时钟分频得到的扫描时钟
  SIGNAL data_r: INTEGER RANGE 0 TO 20; 
  
  SIGNAL number: INTEGER RANGE 0 TO 30;  --按键s6消抖及计数用的信号，
  SIGNAL s6filt: STD_LOGIC;	--按键s6消抖后得到的信号
  SIGNAL s6filt2: STD_LOGIC;	--按键s6消抖后得到的信号
  SIGNAL s6cnt: INTEGER RANGE 0 TO 50000000; --用于对s6按键输入有效时间进行计数
  SIGNAL s6cnt2: INTEGER RANGE 0 TO 500000000; --用于对s6按键输入有效时间进行计数
  
  SIGNAL number0: INTEGER RANGE 0 TO 9;  --按键消抖及计数用的信号，数码管0显示的数字
  SIGNAL number1: INTEGER RANGE 0 TO 9;  --按键消抖及计数用的信号，数码管1显示的数字
  SIGNAL number2: INTEGER RANGE 0 TO 9;  --按键消抖及计数用的信号，数码管2显示的数字
  SIGNAL number3: INTEGER RANGE 0 TO 9;  --按键消抖及计数用的信号，数码管3显示的数字
  SIGNAL s2filt: STD_LOGIC;	--按键s2消抖后得到的信号
  SIGNAL s2cnt: INTEGER RANGE 0 TO 50000000; --用于对s2按键输入有效时间进行计数
  
  SIGNAL s3filt: STD_LOGIC;	--按键s2消抖后得到的信号
  SIGNAL s3cnt: INTEGER RANGE 0 TO 50000000; --用于对s2按键输入有效时间进行计数
  
  SIGNAL s4filt: STD_LOGIC;	--按键s2消抖后得到的信号
  SIGNAL s4cnt: INTEGER RANGE 0 TO 50000000; --用于对s2按键输入有效时间进行计数
  
  SIGNAL s5filt: STD_LOGIC;	--按键s2消抖后得到的信号
  SIGNAL s5filt2: STD_LOGIC;	--按键s2消抖后得到的信号
  SIGNAL s5cnt: INTEGER RANGE 0 TO 50000000; --用于对s2按键输入有效时间进行计数
  SIGNAL s5cnt2: INTEGER RANGE 0 TO 500000000; --用于对s2按键输入有效时间进行计数
  
  SIGNAL keyword0: INTEGER RANGE 0 TO 9:=1;
  SIGNAL keyword1: INTEGER RANGE 0 TO 9:=1;
  SIGNAL keyword2: INTEGER RANGE 0 TO 9:=1;
  SIGNAL keyword3: INTEGER RANGE 0 TO 9:=1;

  
BEGIN
   --******************************************
	--数码管译码显示部分
	--************************************
	--分频得到扫描时钟
	a: PROCESS(clk)
	  CONSTANT clkfrq: INTEGER:=50000000; --设基准时钟频率clkfrq为50Mhz
	  constant scanfrq: INTEGER:=50; --设扫描频率scanfrq为50Hz
	  VARIABLE count: INTEGER RANGE 0 TO 50000000;
	  BEGIN
		 IF(clk'EVENT AND clk = '1')THEN
			IF(count = clkfrq /(scanfrq*4)-1)THEN   -- 设扫描频率scanfrq为50Hz，基准时钟频率clkfrq为50Mhz                        
				count := 0;
				divclk <= '1'; 		--得到扫描时钟
			ELSE
				count := count + 1;
				divclk <= '0';
			END IF;
		 END IF;
	  END PROCESS;
	  
	b:PROCESS(divclk,s4)
	  BEGIN
		IF(s5 = '0')THEN
			scan <= "00";
		ELSIF(divclk'EVENT AND divclk = '1')THEN
			scan <= scan + '1';
		END IF;
	  END PROCESS;
	  
	 c:PROCESS(scan)
	   BEGIN
		IF(number=0 OR number=5 OR number=10 OR number=20)THEN
		CASE scan IS 
			WHEN "00" => dig <= "1110";  --选通第一个数码管
							 data_r <= 10; --同时把第一个数码管显示的数据送给总线
			WHEN "01" => dig <= "1101";  --选通第二个数码管
							 data_r <= 10; --同时把第二个数码管显示的数据送给总线
			WHEN "10" => dig <= "1011";  --选通第三个数码管
							 data_r <= 10; --同时把第三个数码管显示的数据送给总线
			WHEN "11" => dig <= "0111";  --选通第四个数码管
							 data_r <= 10; --同时把第四个数码管显示的数据送给总线
		END CASE;
		END IF;
		
		IF(number=1 OR number=6 OR number=11 OR number=21)THEN
		CASE scan IS 
			WHEN "00" => dig <= "1110";  --选通第一个数码管
							 data_r <= number0; --同时把第一个数码管显示的数据送给总线
			WHEN "01" => dig <= "1101";  --选通第二个数码管
							 data_r <= 10; --同时把第二个数码管显示的数据送给总线
			WHEN "10" => dig <= "1011";  --选通第三个数码管
							 data_r <= 10; --同时把第三个数码管显示的数据送给总线
			WHEN "11" => dig <= "0111";  --选通第四个数码管
							 data_r <= 10; --同时把第四个数码管显示的数据送给总线
		END CASE;
		END IF;
		
		IF(number=2 OR number=7 OR number=12 OR number=22)THEN
		CASE scan IS 
			WHEN "00" => dig <= "1110";  --选通第一个数码管
							 data_r <= number1; --同时把第一个数码管显示的数据送给总线
			WHEN "01" => dig <= "1101";  --选通第二个数码管
							 data_r <= number0; --同时把第二个数码管显示的数据送给总线
			WHEN "10" => dig <= "1011";  --选通第三个数码管
							 data_r <= 10; --同时把第三个数码管显示的数据送给总线
			WHEN "11" => dig <= "0111";  --选通第四个数码管
							 data_r <= 10; --同时把第四个数码管显示的数据送给总线
		END CASE;
		END IF;
		
		IF(number=3 OR number=8 OR number=13 OR number=23)THEN
		CASE scan IS 
			WHEN "00" => dig <= "1110";  --选通第一个数码管
							 data_r <= number2; --同时把第一个数码管显示的数据送给总线
			WHEN "01" => dig <= "1101";  --选通第二个数码管
							 data_r <= number1; --同时把第二个数码管显示的数据送给总线
			WHEN "10" => dig <= "1011";  --选通第三个数码管
							 data_r <= number0; --同时把第三个数码管显示的数据送给总线
			WHEN "11" => dig <= "0111";  --选通第四个数码管
							 data_r <= 10; --同时把第四个数码管显示的数据送给总线
		END CASE;
		END IF;
		
		IF(number=4 OR number=9 OR number=14 OR number=24)THEN
		CASE scan IS 
			WHEN "00" => dig <= "1110";  --选通第一个数码管
							 data_r <= number3; --同时把第一个数码管显示的数据送给总线
			WHEN "01" => dig <= "1101";  --选通第二个数码管
							 data_r <= number2; --同时把第二个数码管显示的数据送给总线
			WHEN "10" => dig <= "1011";  --选通第三个数码管
							 data_r <= number1; --同时把第三个数码管显示的数据送给总线
			WHEN "11" => dig <= "0111";  --选通第四个数码管
							 data_r <= number0; --同时把第四个数码管显示的数据送给总线
		END CASE;
		END IF;
		
		IF(number=18)THEN
		CASE scan IS 
			WHEN "00" => dig <= "1110";  --选通第一个数码管
							 data_r <= 13; --同时把第一个数码管显示的数据送给总线
			WHEN "01" => dig <= "1101";  --选通第二个数码管
							 data_r <= 12; --同时把第二个数码管显示的数据送给总线
			WHEN "10" => dig <= "1011";  --选通第三个数码管
							 data_r <= 11; --同时把第三个数码管显示的数据送给总线
			WHEN "11" => dig <= "0111";  --选通第四个数码管
							 data_r <= 0; --同时把第四个数码管显示的数据送给总线
		END CASE;
		END IF;
		
		IF(number=19)THEN
		CASE scan IS 
			WHEN "00" => dig <= "1110";  --选通第一个数码管
							 data_r <= 14; --同时把第一个数码管显示的数据送给总线
			WHEN "01" => dig <= "1101";  --选通第二个数码管
							 data_r <= 14; --同时把第二个数码管显示的数据送给总线
			WHEN "10" => dig <= "1011";  --选通第三个数码管
							 data_r <= 14; --同时把第三个数码管显示的数据送给总线
			WHEN "11" => dig <= "0111";  --选通第四个数码管
							 data_r <= 14; --同时把第四个数码管显示的数据送给总线
		END CASE;
		END IF;
	   END PROCESS;
	 
	 PROCESS(data_r)
	   BEGIN
		 CASE data_r IS      -- hgfedcba,0亮
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
				WHEN 10=> seg <= "10111111"; -- 显示-
				WHEN 11=> seg <= "10001100"; -- P
				WHEN 12=> seg <= "10000110"; -- E
				WHEN 13=> seg <= "11001000"; -- N
				WHEN 14=> seg <= "10001110"; -- F
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
PROCESS (clk, s6filt)
BEGIN
	IF(clk'EVENT AND clk = '1')THEN  --按键s6
		IF(s5filt2 = '1')THEN	
			keyword0<=1; keyword1<=1; keyword2<=1; keyword3<=1;
			number<=0;
		ELSIF(s6filt2='1' AND number=18)THEN
		   number<=20;
		ELSIF(s6filt2='1' AND number=24)THEN
		   number<=0;
		ELSE
			--IF (s2 = '0')  THEN	--直接使用按键s2的信号，未经消抖处理
			IF (s6filt='1' OR s4filt='1')  THEN --按键s6 经消抖处理后
				IF(number= 4)THEN 
					IF((number0=keyword0) AND (number1=keyword1) AND (number2=keyword1) AND (number3=keyword1))THEN 
				      number<=18;
					ELSE
						number<=number+1;
					END IF;
				ELSIF(number=9)THEN
				   IF((number0=keyword0) AND (number1=keyword1) AND (number2=keyword1) AND (number3=keyword1))THEN 
				      number<=18;
					ELSE
						number<=number+1;
					END IF;
				ELSIF(number=14)THEN
				   IF((number0=keyword0) AND (number1=keyword1) AND (number2=keyword1) AND (number3=keyword1))THEN 
				      number<=18;
					ELSE
						number<=19;
					END IF;
				ELSIF(number=18)THEN
				   number<=18;
				ELSIF(number=19)THEN
				   number<=19;
				ELSIF(number=24)THEN
				   keyword0<=number0; keyword1<=number1; keyword2<=number2; keyword3<=number3; 
				ELSE	
					number<=number+1;
				END IF;
			END IF;
		END IF;
	END IF;
END PROCESS;
	
	PROCESS (clk, s2filt)
	BEGIN
	IF(clk'EVENT AND clk = '1')THEN
		IF((number=0) OR (number=5) OR (number=10) OR (number=20))THEN	
			number0<= 0;
		ELSIF(s5filt='1' AND (number=1 OR number=6 OR number=11 OR number=21))THEN
		   number0<= 0;
		ELSIF (s3filt='1' AND (number=1 OR number=6 OR number=11 OR number=21))THEN --按键s2 经消抖处理后
				IF(number0= 0)THEN 
					number0<= 9;
				ELSE	
					number0<=number0-1;
				END IF;
		ELSE
			--IF (s2 = '0')  THEN	--直接使用按键s2的信号，未经消抖处理
			IF (s2filt='1' AND (number=1 OR number=6 OR number=11 OR number=21))  THEN --按键s2 经消抖处理后
				IF(number0= 9)THEN 
					number0<= 0;
				ELSE	
					number0<=number0+1;
				END IF;
			END IF;
		END IF;
	END IF;
END PROCESS;	
	
	PROCESS (clk, s2filt)
	BEGIN
	IF(clk'EVENT AND clk = '1')THEN
		IF((number=0) OR (number=5) OR (number=10) OR (number=20))THEN	
			number1<= 0;
		ELSIF(s5filt='1' AND (number=2 OR number=7 OR number=12 OR number=22))THEN
		   number1<= 0;
		ELSIF (s3filt='1' AND (number=2 OR number=7 OR number=12 OR number=22))  THEN --按键s2 经消抖处理后
				IF(number1= 0)THEN 
					number1<= 9;
				ELSE	
					number1<=number1-1;
				END IF;
		ELSE
			--IF (s2 = '0')  THEN	--直接使用按键s2的信号，未经消抖处理
			IF (s2filt='1' AND (number=2 OR number=7 OR number=12 OR number=22))  THEN --按键s2 经消抖处理后
				IF(number1= 9)THEN 
					number1<= 0;
				ELSE	
					number1<=number1+1;
				END IF;
			END IF;
		END IF;
	END IF;
END PROCESS;	
	
	PROCESS (clk, s2filt)
	BEGIN
	IF(clk'EVENT AND clk = '1')THEN
		IF((number=0) OR (number=5) OR (number=10) OR (number=20))THEN	
			number2<= 0;
		ELSIF(s5filt='1' AND (number=3 OR number=8 OR number=13 OR number=23))THEN
		   number2<= 0;
		ELSIF (s3filt='1' AND (number=3 OR number=8 OR number=13 OR number=23))  THEN --按键s2 经消抖处理后
				IF(number2= 0)THEN 
					number2<= 9;
				ELSE	
					number2<=number2-1;
				END IF;
		ELSE
			--IF (s2 = '0')  THEN	--直接使用按键s2的信号，未经消抖处理
			IF (s2filt='1' AND (number=3 OR number=8 OR number=13 OR number=23))  THEN --按键s2 经消抖处理后
				IF(number2= 9)THEN 
					number2<= 0;
				ELSE	
					number2<=number2+1;
				END IF;
			END IF;
		END IF;
	END IF;
END PROCESS;	
	
	PROCESS (clk, s2filt)
	BEGIN
	IF(clk'EVENT AND clk = '1')THEN
		IF((number=0) OR (number=5) OR (number=10) OR (number=20))THEN	
			number3<= 0;
		ELSIF(s5filt='1' AND (number=4 OR number=9 OR number=14 OR number=24))THEN
		   number3<= 0;
		ELSIF (s3filt='1' AND (number=4 OR number=9 OR number=14 OR number=24))  THEN --按键s2 经消抖处理后
				IF(number3= 0)THEN 
					number3<= 9;
				ELSE	
					number3<=number3-1;
				END IF;
		ELSE
			--IF (s2 = '0')  THEN	--直接使用按键s2的信号，未经消抖处理
			IF (s2filt='1' AND (number=4 OR number=9 OR number=14 OR number=24))  THEN --按键s2 经消抖处理后
				IF(number3= 9)THEN 
					number3<= 0;
				ELSE	
					number3<=number3+1;
				END IF;
			END IF;
		END IF;
	END IF;
	

   

END PROCESS;



--按键消抖
--设计思路：当按键被按下时，输入低电平，开始计数，一直计数到N，期间一旦按键输入高电平，即清零计数值。
--最后计数值若达到预设值N，表明按键已稳定按下，发出一个脉冲。

PROCESS (s6)
    CONSTANT N : INTEGER:= 5000000;	--消抖时间，对于50Mhz的基准时钟，这相当于0.1S
BEGIN 
	IF(clk'EVENT AND clk='1')THEN
		IF(s6='0')THEN 	--当s6 输入低电平，即按键按下
			IF(s6cnt /= N)THEN --一直计数到N
				s6cnt <= s6cnt + 1;
			END IF;
			IF(s6cnt=N-1)THEN --最后一个计数时输出s2filt脉冲 
				s6filt <= '1';
			ELSE
				s6filt <= '0';
			END IF;
		ELSE 					--若s2 输入高电平，表明按键被释放
			s6cnt <= 0;
		END IF;	
	END IF;	
END PROCESS;

PROCESS (s6)
	 CONSTANT M : INTEGER:= 150000000; --3秒
BEGIN 
	IF(clk'EVENT AND clk='1')THEN
		IF(s6='0')THEN 	--当s6 输入低电平，即按键按下
			IF(s6cnt2 /= M)THEN --一直计数到M
				s6cnt2 <= s6cnt2 + 1;
			END IF;
			IF(s6cnt2=M-1)THEN --最后一个计数时输出s6filt2脉冲 
				s6filt2 <= '1';
			ELSE
				s6filt2 <= '0';
			END IF;
		ELSE 					--若s6 输入高电平，表明按键被释放
			s6cnt2 <= 0;
		END IF;	
	END IF;	
END PROCESS;

PROCESS (s2)
    CONSTANT N : INTEGER:= 5000000;	--消抖时间，对于50Mhz的基准时钟，这相当于0.1S
BEGIN 
	IF(clk'EVENT AND clk='1')THEN
		IF(s2='0')THEN 	--当s2 输入低电平，即按键按下
			IF(s2cnt /= N)THEN --一直计数到N
				s2cnt <= s2cnt + 1;
			END IF;
			IF(s2cnt=N-1)THEN --最后一个计数时输出s2filt脉冲 
				s2filt <= '1';
			ELSE
				s2filt <= '0';
			END IF;
		ELSE 					--若s2 输入高电平，表明按键被释放
			s2cnt <= 0;
		END IF;	
	END IF;	
END PROCESS;

PROCESS (s3)
    CONSTANT N : INTEGER:= 5000000;	--消抖时间，对于50Mhz的基准时钟，这相当于0.1S
BEGIN 
	IF(clk'EVENT AND clk='1')THEN
		IF(s3='0')THEN 	--当s2 输入低电平，即按键按下
			IF(s3cnt /= N)THEN --一直计数到N
				s3cnt <= s3cnt + 1;
			END IF;
			IF(s3cnt=N-1)THEN --最后一个计数时输出s2filt脉冲 
				s3filt <= '1';
			ELSE
				s3filt <= '0';
			END IF;
		ELSE 					--若s2 输入高电平，表明按键被释放
			s3cnt <= 0;
		END IF;	
	END IF;	
END PROCESS;

PROCESS (s4)
    CONSTANT N : INTEGER:= 5000000;	--消抖时间，对于50Mhz的基准时钟，这相当于0.1S
BEGIN 
	IF(clk'EVENT AND clk='1')THEN
		IF(s4='0')THEN 	--当s4 输入低电平，即按键按下
			IF(s4cnt /= N)THEN --一直计数到N
				s4cnt <= s4cnt + 1;
			END IF;
			IF(s4cnt=N-1)THEN --最后一个计数时输出s2filt脉冲 
				s4filt <= '1';
			ELSE
				s4filt <= '0';
			END IF;
		ELSE 					--若s4 输入高电平，表明按键被释放
			s4cnt <= 0;
		END IF;	
	END IF;	
END PROCESS;

PROCESS (s5)
    CONSTANT N : INTEGER:= 5000000;	--消抖时间，对于50Mhz的基准时钟，这相当于0.1S
BEGIN 
	IF(clk'EVENT AND clk='1')THEN
		IF(s5='0')THEN 	--当s5 输入低电平，即按键按下
			IF(s5cnt /= N)THEN --一直计数到N
				s5cnt <= s5cnt + 1;
			END IF;
			IF(s5cnt=N-1)THEN --最后一个计数时输出s2filt脉冲 
				s5filt <= '1';
			ELSE
				s5filt <= '0';
			END IF;
		ELSE 					--若s5 输入高电平，表明按键被释放
			s5cnt <= 0;
		END IF;	
	END IF;	
END PROCESS;

PROCESS (s5)
	 CONSTANT M : INTEGER:= 150000000; --3秒
BEGIN 
	IF(clk'EVENT AND clk='1')THEN
		IF(s5='0')THEN 	--当s5 输入低电平，即按键按下
			IF(s5cnt2 /= M)THEN --一直计数到N
				s5cnt2 <= s5cnt2 + 1;
			END IF;
			IF(s5cnt2=M-1)THEN --最后一个计数时输出s2filt脉冲 
				s5filt2 <= '1';
			ELSE
				s5filt2 <= '0';
			END IF;
		ELSE 					--若s2 输入高电平，表明按键被释放
			s5cnt2 <= 0;
		END IF;	
	END IF;	
END PROCESS;

END behav;