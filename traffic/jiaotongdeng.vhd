LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY jiaotongdeng IS
PORT ( clk, subway: IN STD_LOGIC;     --subway按键代表次干道有无车等待，clk为1Hz
       LIGHT1, LIGHT2, NUM1, NUM2: OUT INTEGER RANGE 0 TO 9 ); --数码管依次显示主干道灯，次干道灯，十位数，个位数
END jiaotongdeng;

ARCHITECTURE example OF jiaotongdeng IS 
 TYPE STATES IS (S1,S2,S3,S4) ; --四种状态：
 SIGNAL STATE: STATES := S1;
 SIGNAL COUNT : INTEGER RANGE 0 TO 45 := 0;
BEGIN

PROCESS (subway, clk)
  BEGIN 
        IF(clk'EVENT AND clk='1')THEN
		     CASE STATE IS
			  WHEN S1 => 
			            IF (subway = '0' and COUNT =0) THEN
							    STATE <= S2;
								 COUNT <= 5;
								 LIGHT1 <= 2;
						       LIGHT2 <= 4;
								ELSE
			                 IF (COUNT = 0) THEN
							        COUNT <= 45;
								    ELSE
								     COUNT <= COUNT-1;
							     END IF;
								  LIGHT1 <= 1;
								  LIGHT2 <= 4;
						    END IF;
           WHEN S2 =>			            
				         IF (COUNT = 0) THEN
							    STATE <= S3;
								 COUNT <= 25;
								 LIGHT1 <= 4;
						       LIGHT2 <= 1;
								ELSE
								  COUNT <= COUNT-1;
						   END IF;
           WHEN S3 =>			            
			            IF (COUNT = 0 OR SUBWAY = '1') THEN
							    STATE <= S4;
								 COUNT <= 5;
								 LIGHT1 <= 4;
							    LIGHT2 <= 2;
								ELSE								  
								  COUNT <= COUNT-1;								  
							END IF;
			  WHEN S4 =>		            
			            IF (COUNT = 0) THEN
							    STATE <= S1;
								 COUNT <= 45;
								 LIGHT1 <= 1;
						       LIGHT2 <= 4;
							   ELSE					  
								  COUNT <= COUNT-1;                    
							END IF;
			  END CASE;
		  END IF;
 NUM1 <= COUNT/10;      --得十位
 NUM2 <= COUNT REM 10;  --得个位
END PROCESS;			
END example;