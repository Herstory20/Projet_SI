----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.05.2023 11:10:11
-- Design Name: 
-- Module Name: Test_Pipeline - Behavioral
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

entity Test_Pipeline is
--  Port ( );
end Test_Pipeline;

architecture Behavioral of Test_Pipeline is

COMPONENT PipeLine 
        PORT(
           A_in : in STD_LOGIC_VECTOR (7 downto 0);
           B_in : in STD_LOGIC_VECTOR (7 downto 0);
           C_in : in STD_LOGIC_VECTOR (7 downto 0);
           OP_in : in STD_LOGIC_VECTOR (7 downto 0);
           A_out : out STD_LOGIC_VECTOR (7 downto 0);
           B_out : out STD_LOGIC_VECTOR (7 downto 0);
           C_out : out STD_LOGIC_VECTOR (7 downto 0);
           OP_out : out STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC 
        );
    END COMPONENT;


signal A_li :std_logic_vector(7 downto 0) ;
signal B_li :std_logic_vector(7 downto 0) ;
signal C_li :std_logic_vector(7 downto 0) ;
signal OP_li :std_logic_vector(7 downto 0) ;
signal A_di :std_logic_vector(7 downto 0) ;
signal B_di :std_logic_vector(7 downto 0) ;
signal C_di :std_logic_vector(7 downto 0) ;
signal OP_di :std_logic_vector(7 downto 0) ;
signal A_ex :std_logic_vector(7 downto 0) ;
signal B_ex :std_logic_vector(7 downto 0) ;
signal C_ex :std_logic_vector(7 downto 0) ;
signal OP_ex :std_logic_vector(7 downto 0) ;
signal Mon_horloge_de_test : std_logic := '0';
signal Clock_period : time := 100ns;

begin

 piplidi: PipeLine PORT MAP (
       A_in => A_li,
       B_in  => B_li,
       C_in  => C_li,
       OP_in  => OP_li,
       A_out  => A_di,
       B_out  => B_di,
       C_out  => C_di,
       OP_out  => OP_di,
       CLK => Mon_horloge_de_test
    );
    
    pipdiex: PipeLine PORT MAP (
           A_in => A_di,
          -- B_in  => Mux_di,
           B_in => B_di,
           C_in  => C_di,
           OP_in  => OP_di,
           A_out  => A_ex,
           B_out  => B_ex,
           C_out  => C_ex,
           OP_out  => OP_ex,
           CLK => Mon_horloge_de_test
        );
        
Clock_process : process
begin
Mon_horloge_de_test <= not(Mon_horloge_de_test);
wait for Clock_period/2;
end process;

process 
begin

wait for 100 ns;

A_li <= "00000001";
B_li <= "00000011";
C_li <= "00000111";
OP_li <= "01000001";

wait for 100 ns;

A_li <= "00001001";
B_li <= "00001011";
C_li <= "01000111";
OP_li <= "01100001";
end process;

end Behavioral;
