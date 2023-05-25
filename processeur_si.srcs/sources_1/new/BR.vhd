----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2023 10:16:01
-- Design Name: 
-- Module Name: BR - Behavioral
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

entity BR is
    Port ( AddrA : in STD_LOGIC_VECTOR (7 downto 0);
           AddrB : in STD_LOGIC_VECTOR (7 downto 0);
           AddrW : in STD_LOGIC_VECTOR (7 downto 0);
           W : in STD_LOGIC;
           DATA : in STD_LOGIC_VECTOR (7 downto 0);
           RST : in STD_LOGIC;
           QA : out STD_LOGIC_VECTOR (7 downto 0);
           QB : out STD_LOGIC_VECTOR (7 downto 0));
end BR;

architecture Behavioral of BR is
    type reg_array is array (0 to 15) of STD_LOGIC_VECTOR (7 downto 0);
    signal bancreg : reg_array := (others => (others => '0'));
begin


    process (RST, AddrA, AddrB, AddrW, W) is 
        begin
            if (RST = '1') then
             bancreg <= (others => (others => '0'));
            else
                if W ='1' then bancreg(to_integer(unsigned(AddrW))) <= DATA;
                end if;
            end if;
    end process;
    
    QA <= bancreg(to_integer(unsigned(AddrA)));
    QB <= bancreg(to_integer(unsigned(AddrB)));
    

end Behavioral;
