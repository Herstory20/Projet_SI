----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2023 14:03:42
-- Design Name: 
-- Module Name: processor - Behavioral
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity processor is
    Port ( 
           Qa : out std_logic_vector (7 downto 0);
           Qb : out std_logic_vector (7 downto 0);
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC
   );
end processor;

architecture Behavioral of processor is

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

    COMPONENT MI 
        PORT(
           addr : in STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           Sort : out STD_LOGIC_VECTOR (31 downto 0)
        );
    END COMPONENT;
    
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
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC 
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
    
    signal A_mem :std_logic_vector(7 downto 0) ;
    signal B_mem :std_logic_vector(7 downto 0) ;
    signal C_mem :std_logic_vector(7 downto 0) ;
    signal OP_mem :std_logic_vector(7 downto 0) ;
    
    signal A_re :std_logic_vector(7 downto 0) ;
    signal B_re :std_logic_vector(7 downto 0) ;
    signal C_re :std_logic_vector(7 downto 0) ;
    signal OP_re :std_logic_vector(7 downto 0) ;
    
    signal Addr_Areg : std_logic_vector (7 downto 0);
    signal Addr_Breg : std_logic_vector (7 downto 0);
    signal QA_reg : std_logic_vector (7 downto 0);
    signal QB_reg : std_logic_vector (7 downto 0);
    signal W_reg : std_logic;
    
    signal Mux_di : std_logic_vector (7 downto 0) ;
    signal Mux_ex : std_logic_vector (7 downto 0) ;
    signal Mux_mem : std_logic_vector (7 downto 0) ;
    signal Mux_store : std_logic_vector (7 downto 0) ;
    
    signal S_alu : std_logic_vector (7 downto 0) ;
    signal A_alu : std_logic_vector (7 downto 0) ;
    signal B_alu : std_logic_vector (7 downto 0) ;
    signal Ctrl_Alu : std_logic_vector (2 downto 0) ;
    signal N_alu : std_logic ;
    signal O_alu : std_logic ;
    signal Z_alu : std_logic ;
    signal C_alu : std_logic ;
    
    signal RW_data : std_logic ;
    signal RST_data : std_logic ;
    signal Input_data : STD_LOGIC_VECTOR (7 downto 0);
    signal Output_data : STD_LOGIC_VECTOR (7 downto 0);
    
    signal read_lidi : std_logic;
    signal write_diex : std_logic;
    signal alea_diex : std_logic;
    signal alea_cpt : std_logic_vector (2 downto 0) := b"000";
    signal A_di_alea :std_logic_vector(7 downto 0) ;
    signal B_di_alea :std_logic_vector(7 downto 0) ;
    signal C_di_alea :std_logic_vector(7 downto 0) ;
    signal OP_di_alea :std_logic_vector(7 downto 0) ;
    
    signal IP : STD_LOGIC_VECTOR (7 downto 0) := x"00";
    
  
    
begin

   Qa <= QA_reg;
   Qb <= QB_reg;
   
  process
   begin 
       wait until CLK'event and CLK='1';
       if RST = '0' then
            if alea_diex = '0' and alea_cpt = b"000" then
                IP <= IP + x"1";
            else
                 alea_cpt <= alea_cpt + b"001";
                 if alea_cpt = b"010" then 
                    alea_cpt <= b"000";
                    IP <= IP - x"01";
                end if;
            end if;
       end if; 
   end process;
   
   
   alea_diex <= '1' When read_lidi = '1' and write_diex = '1' and ( B_li = A_di or C_li = A_di )
            else '0';
           
   
   mem_ins : MI PORT MAP (
       addr => IP,
       CLK  => CLK,
       Sort(31 downto 24) => A_li,
       Sort(23 downto 16) => OP_li,
       Sort(15 downto 8) => B_li,
       Sort(7 downto 0) => C_li
       );
       
   A_di_alea <= x"00" when alea_cpt /= b"000" else A_di;
   B_di_alea <= x"00" when alea_cpt /= b"000" else Mux_di;
   C_di_alea <= x"00" when alea_cpt /= b"000" else QB_reg;
   OP_di_alea <= x"00" when alea_cpt /= b"000" else OP_di;

    piplidi: PipeLine PORT MAP (
       A_in => A_li,
       B_in  => B_li,
       C_in  => C_li,
       OP_in  => OP_li,
       --A_in => A_li,
       --B_in  => B_li,
       --C_in  => C_li,
       --OP_in  => OP_li,
       A_out  => A_di,
       B_out => Addr_Areg,
       C_out => Addr_Breg,
       OP_out  => OP_di,
       CLK => CLK,
       RST=> RST
    );
    
    read_lidi <= '0' When OP_li = x"06" else
                '0' When Op_li = x"07" else
                '0' When Op_li = x"00" else
                '1';
    
    --Multiplexeur DI
    Mux_di <= QA_reg WHEN OP_di = x"01" Else
        QA_reg WHEN OP_di = x"02" Else
        QA_reg WHEN OP_di = x"03" Else
        QA_reg WHEN OP_di = x"05" Else
        QA_reg WHEN OP_di = x"08" 
        Else Addr_Areg;
    
    
    pipdiex: PipeLine PORT MAP (
       A_in => A_di_alea,
       B_in  => B_di_alea,
       C_in  => C_di_alea,
       OP_in  => OP_di_alea,
       A_out  => A_ex,
       B_out  => A_alu,
       C_out  => B_alu,
       OP_out  => OP_ex,
       CLK => CLK,
       RST=> RST
    );
    
    write_diex <= '0' When Op_di = x"08" else
                    '0' When Op_di = x"00" else
                   '1';
                    
             
    Ctrl_Alu <= b"001" when OP_ex = x"01"
                    else b"010" when OP_ex = x"02"
                    else b"011" when OP_ex = x"03" 
                    else b"000";
                  
     ual : ALU PORT MAP(
              A => A_alu,
              B => B_alu,
              S => S_alu,
              N => N_alu,
              O => O_alu,
              Z => Z_alu,
              C => C_alu,
              Ctrl_Alu => Ctrl_Alu
           );
           
    Mux_ex <= S_alu when OP_ex = x"01"
                       or OP_ex = x"02" 
                      or OP_ex = x"03" 
                       else A_alu;
       
    pipexmem: PipeLine PORT MAP (
       A_in => A_ex,
       B_in  => Mux_ex,
       C_in  => (others =>'Z'),
       OP_in  => OP_ex,
       A_out  => A_mem,
       B_out  => B_mem,
       --C_out  => C_mem,
       OP_out  => OP_mem,
       CLK => CLK,
       RST=> RST
    );
    
    Rw_data <=  '0' when OP_mem = x"08"
            else '1';
    
    Mux_store <= A_mem when OP_mem = x"08" 
            else B_mem;
            
    -- Faire le LC et le MUX (fig 4)
    mem_data : MD PORT MAP ( 
      addr  => Mux_store,
       Ent => B_mem,
       RW  => RW_data,
       RST => RST,
       CLK => CLK,
       Sort => Output_data
    );
    
    Mux_mem <= Output_data when OP_mem = x"07" 
                else B_mem;
    
    pipmemre: PipeLine PORT MAP (
       A_in => A_mem,
       B_in  => Mux_mem,
       C_in  => (others =>'Z'),
       OP_in  => OP_mem,
       A_out  => A_re,
       B_out  => B_re,
       --C_out  => C_re,
       OP_out  => OP_re,
       CLK => CLK,
       RST=> RST
    );
    
    W_reg <= '0' when OP_re = x"08" 
            else '0' when OP_re = x"00" 
             else '1';
    
    banc_registre : BR PORT MAP(
       AddrA =>  Addr_Areg,
       AddrB  => Addr_Breg,
       AddrW => A_re,
       W => W_reg,
       DATA => B_re,
       RST => RST,
       QA => QA_reg,
       QB => QB_reg
    );
   

end Behavioral;
