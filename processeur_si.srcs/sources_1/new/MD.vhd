----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2023 12:48:15
-- Design Name: 
-- Module Name: MD - Behavioral
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
library UNISIM;
use UNISIM.VComponents.all;

entity MD is
    Port ( addr : in STD_LOGIC_VECTOR (7 downto 0);
           Ent : in STD_LOGIC_VECTOR (7 downto 0);
           RW : in STD_LOGIC;
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Sort : out STD_LOGIC_VECTOR (7 downto 0));
end MD;

architecture Behavioral of MD is
  type reg_array is array (0 to 255) of STD_LOGIC_VECTOR (7 downto 0);
  signal md : reg_array := (others => (others => '0'));

begin
    
    process 
        begin
            wait until CLK'event and CLK='0';
            if (RST = '1') then
             md <= (others => (others => '0'));
            else
                if RW ='0' then md(to_integer(unsigned(addr))) <= Ent;  -- 0 écriture
                    Sort <= md(to_integer(unsigned(addr)));
                else Sort <= md(to_integer(unsigned(addr))); -- 1 lecture 
                end if;
            end if;
    end process;
    
    


end Behavioral;
