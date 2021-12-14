--------------------------------------------------------------------------------------------
-- Company: IRAP
-- Engineer: TOUCHARD Pierre-Emmanuel J�r�my No�l Andr� Ren� Samuel Richard Serge Eric-Sophie Jos� Lucile-Henry de la Maison Chauve
-- :
-- Create Date:    08:30:00 01/04/2020 
-- Design Name: 
-- Module Name:    Dorn_Top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: This is the top entity
--
-- Dependencies: 
--
-- Revision: Huile/essuie glace � l'italienne
-- Revision 0.01 - File Created
-- Additional Comments:

--------------------------------------------------------------------------------------------
--VERSION WITH UNIVERSAL GENERATOR
--VERSION WITH UNIVERSAL GENERATOR
--VERSION WITH UNIVERSAL GENERATOR
--VERSION WITH UNIVERSAL GENERATOR
--VERSION WITH UNIVERSAL GENERATOR
--VERSION WITH UNIVERSAL GENERATOR
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.textio.all;

--use work.EP_Package.ALL;
--use work.FRONTPANEL.all;

--Library UNISIM;
--use UNISIM.vcomponents.all;

entity Event_Processor_Interfaces is
    port(
        i_Rst_n               : in  std_logic;
		
		init_calib_complete	  : in  std_logic;	
        -------------------------------
        -- CLOCK
        ------------------------------

        i_Clk                 : in  std_logic; -- 100 MHz
		
		BigVector			  : out  std_logic_vector(255 downto 0);
		
		write_instrument	  : out STD_LOGIC
               
    );

end Event_Processor_Interfaces;

architecture Behavioral of Event_Processor_Interfaces is

signal dataout_instrument : STD_LOGIC_VECTOR(15 downto 0);


signal simulate_data_instrument : unsigned(15 downto 0);
signal timer_instrument : unsigned(15 downto 0);

begin

-- --------------------------------------------------------------------------
-- PATTERN CONTINU
-- --------------------------------------------------------------------------	
	
 process (i_Rst_n, i_Clk) begin
 if i_Rst_n = '1' then
 
 simulate_data_instrument <=	(others => '0');
 dataout_instrument	<=	(others => '0');
 write_instrument <= '0';
 timer_instrument <=	(others => '0');

 else
	 if rising_edge (i_Clk) then
	 
	 --write_instrument <= '0';
	 
	 --dataout_instrument	<=	(others => '1');
	 
		 if init_calib_complete = '1'  then 
		 
		 
		 
				 if timer_instrument >= to_unsigned(10,16) then	--	write one data in fifo pipe in
	
				 write_instrument <= '1';
				 timer_instrument <=	(others => '0');
				 dataout_instrument <= std_logic_vector(simulate_data_instrument); 
				 simulate_data_instrument <= simulate_data_instrument + 1;
				 
				 else
				 
				 write_instrument <= '0';
				 timer_instrument <= timer_instrument + 1;
				 
				 end if;	
		 end if;
		 
	 end if;	
 end if;
 end process;
 
BigVector(255 downto 144)	<=	(others => '0');
BigVector(143 downto 112)	<=	x"0000"&dataout_instrument;	
BigVector(111 downto 80)	<=	x"0000"&dataout_instrument;	
BigVector(79 downto 48)		<=	x"0000"&dataout_instrument;	
BigVector(47 downto 32)		<=	dataout_instrument;	
BigVector(31 downto 16)		<=	dataout_instrument;	
BigVector(15 downto 0)		<=	dataout_instrument;		 

end architecture Behavioral;