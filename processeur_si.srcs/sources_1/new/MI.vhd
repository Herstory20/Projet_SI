----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2023 12:48:15
-- Design Name: 
-- Module Name: MI - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity MI is
    Port ( addr : in STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           Sort : out STD_LOGIC_VECTOR (31 downto 0));
end MI;

architecture Behavioral of MI is
    type reg_array is array (0 to 255) of STD_LOGIC_VECTOR (31 downto 0);
    signal mi : reg_array := (others => (others => '0'));
    
begin

    mi <= (x"00000000", x"00000000",x"02060800", x"01060400", --x"00000000", x"00000000", x"00000000",x"00000000", 
        x"03020201", x"00000000", x"08050300", x"0c090102", x"000f0c00", x"00000000",
   -- x"02080100", x"04070200", x"00000000", x"00000000", x"00000000", x"00000000",
    others => x"00000201");

     process 
       begin
           wait until CLK'event and CLK='1'; 
               Sort <= mi(to_integer(unsigned(addr)));   
   end process;
    
end Behavioral;
