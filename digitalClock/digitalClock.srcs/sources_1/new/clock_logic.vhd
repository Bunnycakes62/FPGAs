----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2019 10:26:03 PM
-- Design Name: 
-- Module Name: clock_logic - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_logic is
    Port ( clk_100Mhz : in std_logic;
           clk_1s : in std_logic;
           btn_min0, btn_min1, btn_hour : in std_logic;
           Anode_Activate : out std_logic_vector(3 downto 0);
           LED_out : out STD_LOGIC_VECTOR (6 downto 0));
end clock_logic;

architecture Behavioral of clock_logic is
    signal sec : integer range 0 to 60 := 0;
    signal min0, hour0 : integer range 0 to 13 := 0;
    signal min1 : integer range 0 to 6 := 0;
    signal count1 : integer := 0;
    signal A_counter : integer range 0 to 3 := 0;
    signal tmp_AN : std_logic_vector (3 downto 0);
    
begin
    real_clock : process (clk_1s, btn_min0, btn_min1, btn_hour) begin
    if (rising_edge(clk_1s)) then
        sec <= sec +1;
        if (sec = 60 or btn_min0 = '1') then --roll over for sec
            min0 <= min0 +1;
            sec <= 0;
            if (min0 = 10) then --roll over for min
                min1 <= min1 + 1;
                min0 <= 0;
                if (min1 = 6) then --roll over for hour
                    hour0 <= hour0 + 1;
                    min0 <= 0;
                    min1 <= 0;
                    if (hour0 = 13) then
                        sec <= 0;
                        min0 <= 0;
                        min1 <= 0;
                        hour0 <= 0;
                    end if;
                end if;
            end if;
        elsif (btn_min1 = '1') then
            min1 <= min1 + 1;
        elsif (btn_hour = '1') then
            hour0 <=hour0 + 1;
        end if;
    end if;
end process;

anode_clock : process(count1, clk_100Mhz, A_counter) -- disp all digits
begin
    if (rising_edge(clk_100Mhz)) then
        count1 <= count1 + 1;
        if (count1 = 249999) then
            A_counter <= A_counter + 1;
            count1 <= 0;
        end if;
    end if;
end process;

anode_display : process (A_counter) begin -- matching to display
Anode_Activate <= tmp_AN;
    case A_counter is
        when 0 =>
            tmp_AN <= "1110";
            if (min0 = 0) then
                LED_out <= "0000001";
            elsif min0 = 1 then
                LED_out <= "1001111";
            elsif min0 = 2 then
                LED_out <= "0010010";
            elsif min0 = 3 then
                LED_out <= "0000110";  
            elsif min0 = 4 then
                LED_out <= "1001100";
            elsif min0 = 5 then
                LED_out <= "0100100";
            elsif min0 = 6 then
                LED_out <= "0100000";  
            elsif min0 = 7 then
                LED_out <= "0001111";
            elsif min0 = 8 then
                LED_out <= "0000000";
            elsif min0 = 9 then
                LED_out <= "0000100"; 
            end if;
        when 1 =>
            tmp_AN <= "1101";
            if (min1 = 0) then
                LED_out <= "0000001";
            elsif min1 = 1 then
                LED_out <= "1001111";
            elsif min1 = 2 then
                LED_out <= "0010010";
            elsif min1 = 3 then
                LED_out <= "0000110";  
            elsif min1 = 4 then
                LED_out <= "1001100";
            elsif min1 = 5 then
                LED_out <= "0100100";
            elsif min1 = 6 then
                LED_out <= "0000001";  
            end if;
        when 2 =>   
            tmp_AN <= "1011";     
            if (hour0 = 0) then
                LED_out <= "0000001";
            elsif hour0 = 1 then
                LED_out <= "1001111";
            elsif hour0 = 2 then
                LED_out <= "0010010";
            elsif hour0 = 3 then
                LED_out <= "0000110";  
            elsif hour0 = 4 then
                LED_out <= "1001100";
            elsif hour0 = 5 then
                LED_out <= "0100100";
            elsif hour0 = 6 then
                LED_out <= "0100000";  
            elsif hour0 = 7 then
                LED_out <= "0001111";
            elsif hour0 = 8 then
                LED_out <= "0000000";
            elsif hour0 = 9 then
                LED_out <= "0000100";
            elsif hour0 = 10 then
                LED_out <= "0000001";
            elsif hour0 = 11 then
                LED_out <= "1001111"; 
            elsif hour0 = 12 then
                LED_out <= "0010010";
            end if;
        when 3 =>
            tmp_AN <= "0111";
            if hour0 = 10 then
                LED_out <= "1001111";
            elsif hour0 = 11 then
                LED_out <= "1001111"; 
            elsif hour0 = 12 then
                LED_out <= "1001111";
            else
                LED_out <= "0000001";
            end if;
    end case;
end process;    
                                       
end Behavioral;
