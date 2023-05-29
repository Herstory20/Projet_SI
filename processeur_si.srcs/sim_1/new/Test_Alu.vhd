----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2023 15:01:38
-- Design Name: 
-- Module Name: Test_Alu - Behavioral
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

entity Test_Alu is
--  Port ( );
end Test_Alu;

architecture Behavioral of Test_Alu is

COMPONENT ALU 
        PORT(
           A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0);
           N : out STD_LOGIC;
           O : out STD_LOGIC;
           Z : out STD_LOGIC;
           C : out STD_LOGIC;
           Ctrl_Alu : in STD_LOGIC_VECTOR (2 downto 0)
        );
    END COMPONENT;
    
signal S: std_logic_vector (7 downto 0) := (others => '0');
signal A: std_logic_vector (7 downto 0) := (others => '0');
signal B : std_logic_vector (7 downto 0) := (others => '0');
signal Ctrl_Alu: std_logic_vector (2 downto 0) := (others => '0');
signal N: std_logic := '0';
signal O: std_logic := '0';
signal Z: std_logic := '0';
signal C: std_logic := '0';

begin


 ual : ALU PORT MAP(
              A => A,
              B => B,
              S => S,
              N => N,
              O => O,
              Z => Z,
              C => C,
              Ctrl_Alu => Ctrl_Alu
           );
           
process
    begin
 -- hold reset state for 100 ns.
    wait for 100 ns;
           
         -- insert stimulus here
    --Ctrl_Alu<=b"000";
    --A<=b"00000001";
    --B<=b"00000010";
    --wait for 100 ns;
    
    Ctrl_Alu<=b"001"; -- addition
    A<=b"00000011";
    B<=b"00000001";
    wait for 100 ns;

    Ctrl_Alu<=b"010"; -- multiplication
    A<=b"10011111";
    B<=b"00100010";
    wait for 100 ns;

    Ctrl_Alu<=b"011"; --soustraction 
    A<=x"02";
    B<=x"04";
    wait for 100 ns;
    
    Ctrl_Alu<=b"011"; --soustraction 
    A<=x"06";
    B<=x"03";
    wait for 100 ns;
    
end process;

end Behavioral;
