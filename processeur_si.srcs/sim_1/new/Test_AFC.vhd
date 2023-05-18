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
    PORT( A_pro : in STD_LOGIC_VECTOR (7 downto 0);
          B_pro : in STD_LOGIC_VECTOR (7 downto 0);
          C_pro : in STD_LOGIC_VECTOR (7 downto 0);
          OP_pro : in STD_LOGIC_VECTOR (7 downto 0);
          Qa : out std_logic_vector(7 downto 0);
          Qb : out std_logic_vector(7 downto 0);
          CLK : in STD_LOGIC
    );
END COMPONENT;

signal Test_A_pro :std_logic_vector(7 downto 0) := (others => '0');
signal Test_B_pro :std_logic_vector(7 downto 0) := (others => '0');
signal Test_C_pro :std_logic_vector(7 downto 0) := (others => '0');
signal Qa_Test :std_logic_vector(7 downto 0) := (others => '0');
signal Qb_Test :std_logic_vector(7 downto 0) := (others => '0');
signal Test_OP_pro :std_logic_vector(7 downto 0) := x"06";
signal Mon_horloge_de_test : std_logic := '0';
signal Clock_period : time := 100ns;

begin

proc : processor PORT MAP (
    A_pro => Test_A_Pro,
    B_pro => Test_B_Pro,
    C_pro => Test_C_Pro,
    OP_pro => Test_OP_Pro,
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

Test_B_pro <= x"01" after 400ns, x"05" after 800ns;


end Behavioral;
