----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2022 06:16:30 PM
-- Design Name: 
-- Module Name: fsm - Behavioral
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

entity fsm is
    Port ( clk : in STD_LOGIC;
           clk1:inout STD_LOGIC;
           rst : in STD_LOGIC;
           sout1:inout STD_LOGIC;
           sout2:inout STD_LOGIC;
           sout3:inout STD_LOGIC;
           sout4:inout STD_LOGIC;
           sout5:inout STD_LOGIC;
          -- stare_start : out STD_LOGIC;
           --stare_1 : out STD_LOGIC;
           --stare_2 : out STD_LOGIC;
          -- stare_3 : out std_logic;
          -- stare_4 : std_logic;
           sout : out STD_LOGIC);
end fsm;

architecture Behavioral of fsm is

component clock_divider is
    Port ( clk : in STD_LOGIC;
           factor : integer;
           clkout : out STD_LOGIC);
end  component clock_divider;


type states is (start,stare1, stare2,  stare3, stare4, stare5, stare6, stare7, stare8, stare9, stare10, stare11);

signal state: states;


constant clkfrequency:integer:=100000000;--100MHZ



signal n : integer:=2*10**7;


begin
 
 

processclk1: clock_divider port map(clk=>clk,factor=>2*10**7 ,clkout=>clk1);
soutul: clock_divider port map(clk=>clk,factor=>n ,clkout=>sout);
sout_20kHz: clock_divider port map(clk=>clk,factor=>25*10**2 ,clkout=>sout1);
sout_4kHz: clock_divider port map(clk=>clk,factor=>125*10**2 ,clkout=>sout2);
sout_800Hz: clock_divider port map(clk=>clk,factor=>625*10**2 ,clkout=>sout3);
sout_160Hz: clock_divider port map(clk=>clk,factor=>3125*10**2 ,clkout=>sout4);
sout_32Hz: clock_divider port map(clk=>clk,factor=>15625*10**2 ,clkout=>sout5);


process(clk1,rst) is
begin
    if rising_edge(clk1) then
        if rst = '0' then
           state <= start;
           
        else
        
            case state is
                when start =>
                
                    state <= stare1;
                    n<=25*10**2;
                    
                   
                 
                    
                    
                when stare1=>
                    
                   
                   state<=stare2;
                   n<=125*10**2;
                   
                    
                    
                 when stare2=>
                      
                      state<=stare3;
                         n<=625*10**2;
                    
                    
                    
                 when stare3=>
                   
                     state<=stare4;
                        n<=3125*10**2;
                       
                                           
                when stare4=>
              
                   state<=stare5;
                 n<=15625*10**2;
                  
                  
               when stare5=>
                 state<=stare6;
                 
                 
                 
               when stare6=>
                    state<=stare7;
                    
                           
                           
                 when stare7=>
                    
                    state<=stare8;
                    n<=3125*10**2;
                   
                    
                when stare8=>
                    
                  state<=stare9;
                  n<=625*10**2;
                    
                                                         
                 when stare9=>
                   
                  state<=stare10;
                      n<=125*10**2;
                      
                  when stare10=>
                         
                         state<=stare11;  
                             n<=25*10**2;
                  
                  when stare11=>
                    state<=stare1;
                     n<=25*10**2;
                                                
                                                                                                 
            end case;
        end if;
    end if;
end process;

    
    end Behavioral;