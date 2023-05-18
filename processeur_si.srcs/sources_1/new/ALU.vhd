----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2023 08:53:53
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0);
           N : out STD_LOGIC;
           O : out STD_LOGIC;
           Z : out STD_LOGIC;
           C : out STD_LOGIC;
           Ctrl_Alu : in STD_LOGIC_VECTOR (2 downto 0));
end ALU;

architecture Behavioral of ALU is

    signal Temp_res : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal Aux : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    
begin

    S <= Aux ;
    
    process (A,B,Ctrl_Alu,Temp_res) is
    begin
        case Ctrl_Alu is
            when b"001" => Temp_res <= ("00000000" & A) + ("00000000" & B);   
            when b"010" => Temp_res <= A*B;
            when b"011" => Temp_res <= ("00000000" & A) - ("00000000" & B);
            --when x"100" => Temp_res <= ('0'+A) / ('0'+B);
            when others => Aux <= x"00" ;
        end case;
        Aux <= Temp_res(7 downto 0);
        if Aux < x"00000000" then N<= '1'; else N<='0'; end if; -- N= négatif
        if Temp_res(15 downto 8)>0 then O<= '1'; else O<='0'; end if;  -- Overflow
        if Aux = x"00000000" then Z <='1'; else Z<='0'; end if; -- sortie nulle
        if Temp_res(8)='1' then C <= '1'; else C<='0'; end if; -- retenue
    end process;

end Behavioral;
