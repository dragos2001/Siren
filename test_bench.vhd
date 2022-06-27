----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.05.2022 15:19:35
-- Design Name: 
-- Module Name: test_bench - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_bench is
--  Port ( );
end test_bench;

architecture Behavioral of test_bench is

component fsm is
    Port  ( clk : in STD_LOGIC;
            clk1:inout STD_LOGIC;
           rst : in STD_LOGIC;
           sout1:inout STD_LOGIC;
           sout2:inout STD_LOGIC;
           sout3:inout STD_LOGIC;
           sout4:inout STD_LOGIC;
           sout5:inout STD_LOGIC;
           sout : out STD_LOGIC);
end component fsm;

signal clk,clk1,rst,sout1,sout2,sout3,sout4,sout5,sout:std_logic;




begin

UUT: fsm port map (clk=>clk,
                    rst=>rst,
                    clk1=>clk1,
                    sout1=>sout1,
                    sout2=>sout2,
                    sout3=>sout3,
                    sout4=>sout4,
                    sout5=>sout5,
                    sout=>sout);
                   
                   
generate_clk:process
begin

clk<= '0';wait for 5 ns;
clk<= '1';wait for 5 ns;

end process;
                    
generate_rst:process
begin

rst<= '0';wait for 11 ns;
rst<= '1';wait for 8*1000000000 ns;

end process;                    
                    
     


end Behavioral;
