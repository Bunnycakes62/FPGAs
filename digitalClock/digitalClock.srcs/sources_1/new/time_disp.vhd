----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2019 10:26:03 PM
-- Design Name: 
-- Module Name: time_disp - Behavioral
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

entity time_disp is
  Port ( clk_100Mhz : STD_LOGIC;
         btn_min0, btn_min1, btn_hour : in std_logic;
         LED_sec_blink : out STD_LOGIC;
         Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);-- 4 Anode signals
         LED_out : out STD_LOGIC_VECTOR (6 downto 0));-- Cathode patterns of 7-segment display);
end time_disp;

architecture Behavioral of time_disp is
    component clk_divider is --gets 1Hz
        Port (clk_100Mhz : in STD_LOGIC;
        LED_sec_blink : out STD_LOGIC;
        clk_1s : out STD_LOGIC);
    end component;
    component clock_logic is
        Port ( clk_100Mhz : in std_logic;
           clk_1s : in std_logic;
           btn_min0, btn_min1, btn_hour : in std_logic;
           Anode_Activate : out std_logic_vector(3 downto 0);
           LED_out : out STD_LOGIC_VECTOR (6 downto 0));
     end component;
     
     signal clk_1s : std_logic;
begin
    clk_seconds : clk_divider port map( clk_100Mhz => clk_100Mhz,
                                        LED_sec_blink => LED_sec_blink,
                                        clk_1s => clk_1s);
    real_time : clock_logic port map ( clk_100Mhz => clk_100Mhz,
                                       clk_1s => clk_1s,
                                       btn_min0 => btn_min0,
                                       btn_min1 => btn_min1,
                                       btn_hour => btn_hour,
                                       Anode_Activate => Anode_Activate,
                                       LED_out => LED_out);

end Behavioral;
