----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.08.2020 10:07:56
-- Design Name: 
-- Module Name: Double_fp_TB - Behavioral
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

entity Double_fp_TB is
--  Port ( );
end Double_fp_TB;

architecture Behavioral of Double_fp_TB is
component Double_Floating_Point_Multiplier is
    port (FP_a: in std_logic_vector(63 downto 0);--Normalized  biased values.
          FP_b: in std_logic_vector(63 downto 0);
          overflow: out std_logic;
          FP_z: out std_logic_vector(63 downto 0));
end component;

signal a, b, z: std_logic_vector(63 downto 0);
signal ov: std_logic;

begin
dut : Double_Floating_Point_Multiplier port map (a, b, ov, z);

    process
    begin
       --Test addition.
        b <= x"4040000000000000";
        a <= x"4000000000000000";
        wait for 10 ns;
        b <= x"406ccccd00000000";
        a <= x"400ccccd00000000";
        wait for 10 ns;  
        b <= x"408e147b00000000";
        a <= x"3f99999a00000000";
        wait for 10 ns;
        b <= x"3f00000000000000";
        a <= x"408e147b00000000";
        wait for 10 ns;
        b <= x"3f00000000000000";
        a <= x"3f00000000000000";
        wait for 10 ns;
        b <= x"400eb85200000000";
        a <= x"40eccccd00000000";
        wait for 10 ns;
        b <= x"c0b0000000000000";
        a <= x"40eccccd00000000";
        wait for 10 ns;
        b <= x"c0b0000000000000";
        a <= x"c056666600000000";
        wait for 10 ns;
        b <= x"c0b0000000000000";
        a <= x"c056666600000000";
        wait for 10 ns;
        b <= x"c0b0000000000000";
        a <= x"0000000000000000";
        wait;
    end process;

end Behavioral;
