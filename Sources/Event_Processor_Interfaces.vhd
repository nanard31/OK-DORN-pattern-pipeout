--------------------------------------------------------------------------------------------
-- Company: IRAP
-- Engineer: TOUCHARD Pierre-Emmanuel Jérémy Noël André René Samuel Richard Serge Eric-Sophie José Lucile-Henry de la Maison Chauve
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
-- Revision: Huile/essuie glace à l'italienne
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
		
		write_instrument	  : out STD_LOGIC;
		
		i_wire                : in std_logic;
		
		o_ADC_Generator_mode  : out std_logic;
		
		Time_period           : in  std_logic_vector(31 downto 0);
		
		start                 : in std_logic
               
    );

end Event_Processor_Interfaces;

architecture Behavioral of Event_Processor_Interfaces is

signal dataout_instrument : STD_LOGIC_VECTOR(15 downto 0);


signal simulate_data_instrument : unsigned(15 downto 0);
signal timer_instrument : unsigned(31 downto 0);

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
		 
		 
		 
				 if (timer_instrument >= unsigned(Time_period)) and start = '1' then	--	write one data in fifo pipe in
	
				 write_instrument <= '1';
				 timer_instrument <=	(others => '0');
				 dataout_instrument <= std_logic_vector(simulate_data_instrument); 
				 simulate_data_instrument <= simulate_data_instrument + 1;
				 
				 else
				 
				 write_instrument <= '0';
				 timer_instrument <= timer_instrument + 1;
				 
					if simulate_data_instrument = x"FFFF" then
					simulate_data_instrument <=	(others => '0');
					dataout_instrument	<=	(others => '0');
					end if;
				 
				 end if;	
		 end if;
		 
	 end if;	
 end if;
 end process;
 
BigVector(255 downto 160)	<=	(others => '0');
BigVector(159 downto 128)	<=	x"0000"&dataout_instrument;	
BigVector(127 downto 96)	<=	(others => '0');
BigVector(95 downto 64)		<=	(others => '0');
BigVector(63 downto 32)		<=	(others => '0');
BigVector(31 downto 16)		<=	(others => '0');
BigVector(15 downto 0)		<=	dataout_instrument;		 

o_ADC_Generator_mode<='0' when (i_wire = '0') else '1';

end architecture Behavioral;