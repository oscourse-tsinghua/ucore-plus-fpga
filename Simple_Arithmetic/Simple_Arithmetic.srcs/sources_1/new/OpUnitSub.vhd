----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2017 07:12:43 PM
-- Design Name: 
-- Module Name: OpUnitAdd - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OpUnitSub is
    Port ( oprand1 : in STD_LOGIC_VECTOR (31 downto 0);
           oprand2 : in STD_LOGIC_VECTOR (31 downto 0);
           result : out STD_LOGIC_VECTOR (31 downto 0));
end OpUnitSub;

architecture Behavioral of OpUnitSub is

begin
    process(oprand1, oprand2)
    begin
        result <= std_logic_vector(signed(oprand1) - signed(oprand2));
    end process;

end Behavioral;
