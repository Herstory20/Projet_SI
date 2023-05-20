----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2023 13:56:20
-- Design Name: 
-- Module Name: Test_AFC - Behavioral
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

entity Test_AFC is
--  Port ( );
end Test_AFC;

architecture Behavioral of Test_AFC is

COMPONENT processor 
    PORT(
          Qa : out std_logic_vector(7 downto 0);
          Qb : out std_logic_vector(7 downto 0);
          CLK : in STD_LOGIC
    );
END COMPONENT;

signal Qa_Test :std_logic_vector(7 downto 0) := (others => '0');
signal Qb_Test :std_logic_vector(7 downto 0) := (others => '0');
signal Test_OP_pro :std_logic_vector(7 downto 0) := x"06";
signal Mon_horloge_de_test : std_logic := '0';
signal Clock_period : time := 100ns;

begin

proc : processor PORT MAP (
    Qa => Qa_Test,
    Qb => Qb_Test,
    CLK => Mon_horloge_de_test
    );

-- Clock process definitions
Clock_process : process
begin
Mon_horloge_de_test <= not(Mon_horloge_de_test);
wait for Clock_period/2;
end process;



end Behavioral;
