LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL; 

ENTITY Main IS
 PORT(clk: IN  STD_LOGIC;
		S6, S2, S3, S4, S5: IN STD_LOGIC;	--按键计数输入
		led: OUT STD_LOGIC;
      seg: OUT std_logic_vector(7 DOWNTO 0);  --数码管的段数据，包括小数点共8段LED，低电平点亮
		dig: OUT std_logic_vector(3 DOWNTO 0)		--数码管的选通信号,共4个数码管，低电平选通
		); 	
END Main;

ARCHITECTURE behav OF Main IS
  	--数码管扫描显示用到的信号
  SIGNAL scan: STD_LOGIC_VECTOR(1 DOWNTO 0);
  SIGNAL divclk: STD_LOGIC; --由基准时钟分频得到的扫描时钟
  SIGNAL data_r: INTEGER RANGE 0 TO 9; 
  
  SIGNAL num: INTEGER RANGE 0 TO 9;  
  --按键消抖及计数用的信号
  SIGNAL key1filt :STD_LOGIC;	--按键key1消抖后得到的信号
  SIGNAL key1cnt :INTEGER RANGE 0 TO 50000000; --用于对key1按键输入有效时间进行计数
  
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
		 IF clk'EVENT AND clk = '1' THEN
			IF count = clkfrq /(scanfrq*4)-1 THEN   -- 设扫描频率scanfrq为50Hz，基准时钟频率clkfrq为50Mhz                        
				count := 0;
				divclk <= '1'; 		--得到扫描时钟
			ELSE
				count := count + 1;
				divclk <= '0';
			END IF;
		 END IF;
	  END PROCESS;
	  
	b:PROCESS(divclk,S5)
	  BEGIN
		IF S5 = '0' THEN
			scan <= "00";
		ELSIF divclk'EVENT AND divclk = '1' THEN
			scan <= scan + '1';
		END IF;
	  END PROCESS;
	  
	 c:PROCESS(scan)
	   BEGIN
		 CASE scan IS 
			WHEN "00" => dig <= "1110";  --选通第一个数码管
							 data_r <= num; --同时把第一个数码管显示的数据送给总线
			WHEN "01" => dig <= "1101";  --选通第二个数码管
							 data_r <= 2; --同时把第二个数码管显示的数据送给总线
			WHEN "10" => dig <= "1011";  --选通第三个数码管
							 data_r <= 3; --同时把第三个数码管显示的数据送给总线
			WHEN "11" => dig <= "0111";  --选通第四个数码管
							 data_r <= 4; --同时把第四个数码管显示的数据送给总线
		END CASE;
	   END PROCESS;
	 
	 d:PROCESS(data_r)
	   BEGIN
		 CASE data_r IS      -- hgfedcba
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
PROCESS (clk, S2)
BEGIN
	IF clk'EVENT AND clk = '1' THEN
		IF S5 = '0' THEN	
			num <= 0;
		ELSE
			--IF (key1 = '0')  THEN	--直接使用按键key1的信号，未经消抖处理
			IF (S2 = '1')  THEN --按键key1 经消抖处理后
				IF num = 9 THEN 
					num <= 0;
				ELSE	
					num <= num + 1;
				END IF;
			END IF;
		END IF;
	END IF;
	END PROCESS;
END behav;