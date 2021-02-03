----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2019 10:26:03 PM
-- Design Name: 
-- Module Name: clk_divider - Behavioral
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

entity clk_divider is
  Port (clk_100Mhz : in STD_LOGIC;
        LED_sec_blink : out STD_LOGIC;
        clk_1s : out STD_LOGIC);
end clk_divider;

architecture Behavioral of clk_divider is
        signal LED_sec, clk_temp : std_logic :='0';
        signal count : integer :=0;
begin
    clk1s : process (clk_100Mhz) begin
        LED_sec_blink <=LED_sec;
        if rising_edge(clk_100Mhz) then
            count <= count + 1;
            if (count = 50000000) then
                clk_temp <= not clk_temp;
                LED_sec <= not LED_sec;
                count <=0;
            end if;
        end if;
        clk_1s <= clk_temp;
    end process;
    
end Behavioral;
