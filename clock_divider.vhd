----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2022 07:02:21 PM
-- Design Name: 
-- Module Name: clock_divider - Behavioral
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

entity clock_divider is
    Port ( clk : in STD_LOGIC;
           factor : integer;
           clkout : out STD_LOGIC);
end clock_divider;

architecture Behavioral of clock_divider is

signal count : integer :=1;
signal b : std_logic :='0';

begin

process(clk,factor) 

begin
if(rising_edge(clk)) then
count <=count+1;

if(count = factor) then
b <= not b;
count <=1;
end if;

if(count>factor) then
   count <=1;     
end if;


end if;
clkout<=b;
end process;


end Behavioral;
