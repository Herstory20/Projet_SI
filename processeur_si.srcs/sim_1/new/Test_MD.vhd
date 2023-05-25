----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.05.2023 09:49:37
-- Design Name: 
-- Module Name: Test_MD - Behavioral
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

entity Test_MD is
--  Port ( );
end Test_MD;

architecture Behavioral of Test_MD is

 COMPONENT MD 
        PORT(
           addr : in STD_LOGIC_VECTOR (7 downto 0);
           Ent : in STD_LOGIC_VECTOR (7 downto 0);
           RW : in STD_LOGIC;
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Sort : out STD_LOGIC_VECTOR (7 downto 0)
        );
    END COMPONENT;


signal B_mem :std_logic_vector(7 downto 0) := (others => '0');
signal RW_data : std_logic := '1' ; --lecture;
signal RST_data : std_logic := '0';
signal Input_data : STD_LOGIC_VECTOR (7 downto 0);
signal Output_data : STD_LOGIC_VECTOR (7 downto 0);
signal Clk : std_logic := '0';
signal Clock_period : time := 100ns;


begin

Clock_process : process
       begin
       Clk <= not(Clk);
       wait for Clock_period/2;
       end process;

 -- Faire le LC et le MUX (fig 4)
   mem_data : MD PORT MAP ( 
      addr  => B_mem,
      Ent => Input_data,
      RW  => RW_data,
      RST => RST_data,
      CLK => Clk,
      Sort => Output_data
   );
   
   

process 
begin 

wait for 100 ns;

RST_data <= '1';
wait for 100ns ;

RST_data <='0';
wait for 100ns ;

-- ecriture
RW_data <= '0';
B_mem <= x"01";
Input_data <= x"02";
wait for 100 ns;

-- lecture
RW_data <= '1';
B_mem <= x"01";
wait for 100 ns;

-- lecture
B_mem <= x"02";
wait for 100 ns;


wait;
end process;



end Behavioral;
