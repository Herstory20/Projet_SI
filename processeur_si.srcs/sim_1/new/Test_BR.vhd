----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2023 13:07:09
-- Design Name: 
-- Module Name: Test_BR - Behavioral
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

entity Test_BR is
--  Port ( );
end Test_BR;

architecture Behavioral of Test_BR is

COMPONENT BR 
        PORT(
           AddrA : in STD_LOGIC_VECTOR (7 downto 0);
           AddrB : in STD_LOGIC_VECTOR (7 downto 0);
           AddrW : in STD_LOGIC_VECTOR (7 downto 0);
           W : in STD_LOGIC;
           DATA : in STD_LOGIC_VECTOR (7 downto 0);
           RST : in STD_LOGIC;
           QA : out STD_LOGIC_VECTOR (7 downto 0);
           QB : out STD_LOGIC_VECTOR (7 downto 0)
        );
    END COMPONENT;
    
    
signal Addr_Areg : std_logic_vector (7 downto 0):= (others => '0');
signal Addr_Breg : std_logic_vector (7 downto 0):= (others => '0');
signal Addr_Wreg : std_logic_vector (7 downto 0):= (others => '0');
signal QA_reg : std_logic_vector (7 downto 0):= (others => '0');
signal QB_reg : std_logic_vector (7 downto 0):= (others => '0');
signal RST_reg : std_logic := '0';
signal W_reg : std_logic := '0';
signal DATA_reg : std_logic_vector (7 downto 0) := (others => '0'); 

constant CLK_period : time := 10 ns;

begin

banc_registre : BR PORT MAP(
       AddrA =>  Addr_Areg,
       AddrB  => Addr_Breg,
       AddrW => Addr_Wreg,
       W => W_reg,
       DATA => DATA_reg,
       RST => RST_reg,
       QA => QA_reg,
       QB =>QB_reg
    );



process 
begin
    wait for 100ns;
    
    RST_reg <= '1';
    Addr_Areg <= x"00";
    Addr_Breg <= x"01";
    wait for CLK_period*10;
    
    RST_reg <= '0';
    W_reg <='1';
    Data_reg <= x"EE";
    Addr_Wreg <= x"02";
    Addr_Breg <= x"02";
    wait for CLK_period*10;
    Data_reg <= x"AA";
    Addr_Wreg <= x"02";
    wait for CLK_period*10;
    
    
    W_reg <= '0';
    wait for CLK_period*10;
end process;

end Behavioral;
