----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.05.2023 10:14:56
-- Design Name: 
-- Module Name: Test_MI - Behavioral
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

entity Test_MI is
--  Port ( );
end Test_MI;

architecture Behavioral of Test_MI is

COMPONENT MI 
        PORT(
           addr : in STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           Sort : out STD_LOGIC_VECTOR (31 downto 0)
        );
    END COMPONENT;
    
signal IP : STD_LOGIC_VECTOR (7 downto 0);
signal Output : STD_LOGIC_VECTOR (31 downto 0);
signal Mon_horloge_de_test : std_logic := '0';
signal Clock_period : time := 100ns;

begin

mem_ins : MI PORT MAP (
       addr => IP,
       CLK  => Mon_horloge_de_test,
       Sort => Output
       );
       
Clock_process : process
       begin
       Mon_horloge_de_test <= not(Mon_horloge_de_test);
       wait for Clock_period/2;
       end process;

process 
begin 

wait for 100 ns;

IP <= x"01";
wait for 100 ns;

IP <= x"05";
wait for 100ns;

wait;
end process;
end Behavioral;
