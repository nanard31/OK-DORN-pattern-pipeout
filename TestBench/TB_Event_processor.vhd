----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:30:00 09/04/2020
-- Design Name: 
-- Module Name:    TB_Event_processor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: 
-- 
-- command line count occurences
-- sort Gaus_Amp.txt | uniq -c > result.txt
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;
use STD.textio.all;

--library NX;
--use NX.nxPackage.all;


entity TB_Event_processor is
end TB_Event_processor;

architecture Behavioral of TB_Event_processor is
	signal TB_Reset_n             : std_logic;
	signal TB_Reset        		  : std_logic;
	signal i                      : integer range 0 to 20;
	signal index_pulse            : integer range 0 to 127;
	signal clk        : std_logic;
	signal TB_CLOCK_200MHZ        : std_logic;
	signal TB_CLOCK_100_8_MHZ        : std_logic;
	
	constant CLOCK_100_MHZ_period : time := 10 ns;
	constant CLOCK_1008_MHZ_period : time := 9.9 ns;

	type Datas_ReadState is (TB_Datas_Read_Idle, Datas_Read, TB_New_Gauss_Value);
	signal TB_Datas_Read_State : Datas_ReadState;


	-----------------------------
	-- ADC
	-----------------------------
	signal ADC_CNV_n : std_logic;
	signal ADC_SCK   : std_logic;
	signal ADC_SDO   : std_logic;

	signal TB_ADC_Data_to_send     : unsigned(15 downto 0);
	signal TB_ADC_Start_Serializer : std_logic;

	type DeserialiserState is (Serialiser_Idle, Serialiser_wait, Serialiser_Send);
	signal Serialiser_State : DeserialiserState;

	signal Shift_out   : real;
	signal Start_pulse : std_logic;

	-----------------------------
	-- Analog pulse
	-----------------------------

	signal x                   : real;
	signal Analog_Pulse        : real;
	signal Analog_Pulse_Shift  : time;
	signal debug_Analog_Pulse  : unsigned(15 downto 0);
	signal TB_ADC_Data_sampled : unsigned(15 downto 0);

	signal Analog_Pulse_2        : real;
	signal Analog_Pulse_Shift_2  : time;
	signal debug_Analog_Pulse_2  : unsigned(15 downto 0);
	signal TB_ADC_Data_sampled_2 : unsigned(15 downto 0);

	signal x_tick   : std_logic;
	signal x_tick_2 : std_logic;
	signal x_plot   : real;

	constant Gauss_amp   : real := 3.3;--3.3;
	constant Gauss_mu    : real := 5.0E-6;
	constant Gauss_sigma : real := 1.41E-6;

	-----------------------------------------------------------------------
	-- EP
	-----------------------------------------------------------------------

	signal EP_Capture_Raw      : std_logic_vector(15 downto 0);
	signal EP_Capture_Filter_A : std_logic_vector(31 downto 0);
	signal EP_Capture_Filter_B : std_logic_vector(31 downto 0);
	signal EP_Event_Time       : std_logic_vector(7 downto 0);
	signal EP_Event_Filter_A   : std_logic_vector(31 downto 0);
	signal EP_Event_Filter_B   : std_logic_vector(31 downto 0);
	signal EP_Event_Phi        : std_logic_vector(31 downto 0);
	signal EP_Event_Energy     : std_logic_vector(15 downto 0);
	signal EP_Event_Rdy        : std_logic;
	signal EP_Test_Mode_Enable : std_logic;
	signal DIRAC               : std_logic_vector(15 downto 0);
	signal dirac_counter       : unsigned(7 downto 0);	
	signal CHAPEAU               : unsigned(15 downto 0);
	signal CHAPEAU_counter       : unsigned(7 downto 0);
    signal rand_sig : real := 0.0;
    
    signal ramp               : unsigned(15 downto 0);
    signal address            : unsigned(15 downto 0);
    signal counter_trig_start  : unsigned(15 downto 0);
    signal write_en           : std_logic;
    signal trig_start           : std_logic;
    
--signal Gauss_Amp   : real range 0.0 to 32767.0;
--signal Gauss_Shift : real range 0.0 to 32767.0;

begin
-------------------------------------------------------
-- NOISE generation
--------------------------------------------------------
process
    variable seed1, seed2: positive;              
    variable rand: real;  
begin
seed1 :=0;
seed2 :=1;
loop
    uniform(seed1, seed2, rand);   -- generate a random number
    rand_sig <= rand;
    wait for 1 ns;
end loop;
end process;




	Shift_out <= real(Analog_Pulse_Shift / 1 ns) * 1.0;
	TB_Reset <= not TB_Reset_n;
	
	Reset_process : process
	begin
		TB_Reset_n <= '0';
		wait for 100 ns;
		TB_Reset_n <= '1';
		wait;
	end process Reset_process;

	------------------------------
	-- Clk process definitions
	------------------------------
	Clk_in_100MHz_process : process
	begin
		clk <= '0';
		wait for CLOCK_100_MHZ_period / 2;
		clk <= '1';
		wait for CLOCK_100_MHZ_period / 2;
	end process;


	Clk_in_1008MHz_process : process
	begin
		TB_CLOCK_100_8_MHZ <= '0';
		wait for CLOCK_1008_MHZ_period / 2;
		TB_CLOCK_100_8_MHZ <= '1';
		wait for CLOCK_1008_MHZ_period / 2;
	end process;


TB_CLOCK_200MHZ_process : process
    begin
        TB_CLOCK_200MHZ <= '1';
        wait for CLOCK_100_MHZ_period / 4;
        TB_CLOCK_200MHZ <= '0';
        wait for CLOCK_100_MHZ_period / 4;
        TB_CLOCK_200MHZ <= '1';
        wait for CLOCK_100_MHZ_period / 4;
        TB_CLOCK_200MHZ <= '0';
        wait for CLOCK_100_MHZ_period / 4;
    end process;
	------------------------------------------------------------------------------------------------------------------------------------------------------
	--
	-- Pulse generator
	--
	------------------------------------------------------------------------------------------------------------------------------------------------------
	debug_Analog_Pulse <= to_unsigned(integer(Analog_Pulse * 15000.0), 16);

--	Gen_Pulse : process
--		variable Gauss_Noise : real;
--		variable x           : real;

--	begin
--		x                  := 0.0;
--		x_plot             <= 0.0;
--		Analog_Pulse_Shift <= 0 ns;
--		x_tick             <= '0';

--		wait for 1 us;

--		loop
--			wait until rising_edge(ADC_CNV_n);
--			wait for Analog_Pulse_Shift;
--			x := 0.0;
--			for i in 0 to 80 * 200      -- 100 points de 200 ns 
--			loop
--				Analog_Pulse <= Gauss_amp * exp(-((x - Gauss_mu) ** 2) / (2.0 * ((Gauss_sigma) ** 2)));
--				x            := x + 1.0E-9;
--				x_tick       <= not x_tick;
--				x_plot       <= x;
--				wait for 1 ns;
--			end loop;
--			Analog_Pulse_Shift <= Analog_Pulse_Shift + 10 ns;
--		end loop;

--	end process;

	Gen_Pulse : process
		variable Gauss_Noise : real;
		variable x           : real;

	begin
		x                  := 0.0;
		x_plot             <= 0.0;
		Analog_Pulse_Shift <= 0 ns;
		x_tick             <= '0';

		wait for 1 us;

		loop
			wait until rising_edge(ADC_CNV_n);
			wait for Analog_Pulse_Shift;
			x := 0.0;
			for i in 0 to 160 * 200 --200      -- 100 points de 200 ns 
			loop
			if x <= 4.0 then
				Analog_Pulse <= Gauss_amp * exp(-((x - 4.0) ** 2) / (2.0 * ((1.414213562) ** 2))); -- sigma� is 4
			else
			    Analog_Pulse <= Gauss_amp * exp(-((x - 4.0) ** 2) / (2.0 * ((1.4953487812) ** 2))); -- sigma� is 5
			end if;
				x            := x + 0.0005;
				x_tick       <= not x_tick;
				x_plot       <= x;
				wait for 1 ns;
			end loop;
			Analog_Pulse_Shift <= Analog_Pulse_Shift + 10 ns;
		end loop;

	end process;
	
	--DIRAC generation
	Gen_DIRAC : process
	begin
		DIRAC <= (others =>'0');
        dirac_counter <= (others =>'0');
		wait for 1 us;

		loop
			wait until rising_edge(ADC_CNV_n);
			dirac_counter <= dirac_counter +1;
			
			if dirac_counter = x"FF" then
			     DIRAC <= x"0FFF";
			else
			     DIRAC <= x"0000";
			end if;
        end loop;
	end process;
	
	--CHAPEAU generation
	Gen_CHAPEAU : process
	begin
		CHAPEAU <= (others =>'0');
        CHAPEAU_counter <= (others =>'0');
		--wait for 1 us;

		loop
			wait until rising_edge(ADC_CNV_n);
			CHAPEAU_counter <= CHAPEAU_counter +1;
			
			if CHAPEAU_counter <= x"7F" then
			     CHAPEAU <= CHAPEAU+255;
			else
			     CHAPEAU <= CHAPEAU-253
			     ;
			end if;
        end loop;
	end process;	
	
	
	

--	Inst_event_processor : entity work.event_processor
--		port map(
--			rst => TB_Reset,
--			EP_Capture_Raw      => EP_Capture_Raw,
--			EP_Capture_Filter_A => EP_Capture_Filter_A,
--			EP_Capture_Filter_B => EP_Capture_Filter_B,
--			EP_Event_Time       => EP_Event_Time,
--			EP_Event_Filter_A   => EP_Event_Filter_A,
--			EP_Event_Filter_B   => EP_Event_Filter_B,
--			EP_Event_Phi        => EP_Event_Phi,
--			EP_Event_Energy     => EP_Event_Energy,
--			EP_Event_Rdy        => EP_Event_Rdy,
--			EP_Test_Mode_Enable => '1',
--			clk => clk,
--			ADC_Conv_n        => ADC_CNV_n,
--			ADC_Sck           => ADC_SCK,
--			ADC_SDO           => ADC_SDO
--		);
		
		Inst_Event_Processor_Interfaces: entity work.Event_Processor_Interfaces
    port map(
        i_Rst_n               => TB_Reset_n,--: in  std_logic;
        -------------------------------
        -- CLOCK
        ------------------------------

        i_Clk                 =>        clk,--: in  std_logic; -- 100 MHz
        i_Clk_200MHz          =>        TB_CLOCK_200MHZ,--: in  std_logic; -- 200 MHz
        
        i_Clk_opal_Kelly     =>         TB_CLOCK_100_8_MHZ               ,--(okClk),
        o_read_Fifo          =>         open               ,--(o_read_Fifo),
        i_pipe_in_full       =>         '0'               ,--(pipe_in_full),
        ---------------------------------------------------------------------------------------------
        -- Test
        ---------------------------------------------------------------------------------------------

        i_EP_Test_Mode_Enable => '0',--: in  std_logic;
        ---------------------------------------------------------------------------------------------
        -- EP outputs
        ---------------------------------------------------------------------------------------------

        o_EP_Event_Filter_A   =>  open ,--out std_logic_vector(31 downto 0);
        o_EP_Event_Filter_B   =>  open ,--out std_logic_vector(31 downto 0);
        o_EP_Event_Phi        =>  open ,--out std_logic_vector(31 downto 0);
        o_EP_Event_Energy     =>  open ,--out std_logic_vector(15 downto 0);
        o_EP_Event_Rdy        =>  open ,--out std_logic;
        o_EP_Capture_Buffered =>  open ,--out std_logic_vector(79 downto 0);
        -------------------------------
        -- ADC
        -------------------------------
        o_ADC_Conv_n       => ADC_CNV_n,  --: o_ADC_Conv_n std_logic;
        o_ADC_Sck          => ADC_SCK,    --: o_ADC_Sck std_logic;
        i_ADC_SDO          => ADC_SDO,--ADC_SDO,     --:  i_ADC_SDO  std_logic;
        -------------------------------
        -- Division
        -------------------------------

        --o_EP_Division_Done    => open,--: out std_logic;
        -------------------------------
        -- Debug
        -------------------------------
        i_wire                => '1',--:in std_logic;
        o_start_division      => open ,--: out std_logic;
        o_Phase_enable        => open ,--: out std_logic;
        o_div_read            => open ,--: out std_logic;
        o_Trig                => open ,--:out std_logic;
        Time_period           => x"000009F" ,--:in std_logic_vector(27 downto 0);
        o_Peak_detected       => open ,--: out std_logic;
        o_Peak_Value          => open ,--: out std_logic_vector(15 downto 0);
        --------------------------------------------------------------------------------------------
        -- Phase Trig
        --------------------------------------------------------------------------------------------
        o_Trig_out            => open ,--:out std_logic;
        o_ADC_Generator_mode  => open ,--:out std_logic 
        
        --------------------------------------------------------------------------------------------
        -- UNIVERSAL GENERATOR SIGNALS
        --------------------------------------------------------------------------------------------
        i_Data_in           => STD_LOGIC_VECTOR (ramp),--x"ABCD"    ,-- in STD_LOGIC_VECTOR (15 downto 0);  
        i_Address           => STD_LOGIC_VECTOR (address),--x"0000"    ,--: in STD_LOGIC_VECTOR (15 downto 0);  
        i_Write             => write_en        ,--: in STD_LOGIC;                         
        i_trig_start        => trig_start        ,--: in std_logic;                    
        i_delay             => x"0012"    --: in std_logic_vector(15 downto 0)   
    );

	ADC_SDO <= TB_ADC_Data_to_send(15);
ramp_test: process

	begin
            ramp     <= (others=>'0');
            address  <= (others=>'0');
            counter_trig_start  <= (others=>'0');
            write_en <= '0';
		loop
			wait until rising_edge(clk);
			if address < x"0fff"then
			    if address > x"4000"then
                    ramp     <= ramp - 1;
			    else
                    ramp     <= ramp + 1;
                end if;
                    address  <= address + 1;
                    write_en <= '1';
			else
                write_en <= '0';
			end if;
			
			
			if counter_trig_start > x"3000" then
                 counter_trig_start  <= (others=>'0');
                 trig_start <= '1';
			else
			     trig_start <= '0';
			     counter_trig_start<= counter_trig_start+1;
			end if;
		end loop;

	end process;
	------------------------------------------------------------------------------------------------------------------------------------------------------
	--
	-- ADC Smapling and serialization
	--
	------------------------------------------------------------------------------------------------------------------------------------------------------

--	p_Serialiser : process(TB_Reset_n, clk)
--		variable VEC_LINE : line;
--		file VEC_FILE : text open write_mode is "Samples.txt";

--	begin
--		if TB_Reset_n = '0' then
--			TB_ADC_Data_to_send   <= (others => '0');
--			TB_ADC_Data_sampled   <= (others => '0');
--			TB_ADC_Data_sampled_2 <= (others => '0');
--			Serialiser_State      <= Serialiser_Idle;
--		else
--			--if falling_edge(clk) then
--			if rising_edge(clk) then
--				case Serialiser_State is

--					--------------------------
--					-- Idle Serializer
--					--------------------------

--					when Serialiser_Idle =>
--						if ADC_CNV_n = '1' then
--							--i <= i + 1;
--							--if i = 3 then
--								i                   <= 0;
--								TB_ADC_Data_to_send <= To_unsigned(integer((Analog_Pulse * 65535.0) / 3.3), 16);
--								TB_ADC_Data_sampled <= To_unsigned(integer((Analog_Pulse * 65535.0) / 3.3), 16);

--								write(VEC_LINE, real'image(x_plot) & " " & integer'image(integer((Analog_Pulse * 65535.0) / 3.3)));
--								writeline(VEC_FILE, VEC_LINE);

--								TB_ADC_Data_sampled_2 <= To_unsigned(integer((Analog_Pulse_2 * 65535.0) / 3.3), 16);
								
--							--end if;
--						else
--						Serialiser_State      <= Serialiser_wait;
--						end if;

--					--------------------------
--					-- Wait: Serializer
--					--------------------------

--					when Serialiser_wait =>
--						Serialiser_State <= Serialiser_Send;

--					--------------------------
--					-- Send data Serializer
--					--------------------------

--					when Serialiser_Send =>
--						--TB_ADC_Data_to_send <= TB_ADC_Data_to_send(14 downto 0) & '0';
--						TB_ADC_Data_to_send <= TB_ADC_Data_to_send(14 downto 0) & '0';
--						i                   <= i + 1;
--						if i >= 15 then
--							i                <= 0;
--							Serialiser_State <= Serialiser_Idle;
--						end if;

--				end case;
--			end if;
--		end if;
--	end process;
	
	
	send_serial_data: process

	begin

		loop
			wait until rising_edge(ADC_CNV_n);
			--TB_ADC_Data_to_send <= To_unsigned(integer((((Analog_Pulse * 32767.0) / 3.3)+((32767.0 * rand_sig)/333.0))-10.0), 16);-- - x"0100";
			TB_ADC_Data_to_send <= To_unsigned(integer(((Analog_Pulse * 32767.0) / 3.3)), 16);-- - x"0100";
			--TB_ADC_Data_to_send <= unsigned(DIRAC);-- - x"0100";
			--TB_ADC_Data_to_send <= CHAPEAU;
			wait until falling_edge(ADC_SCK);
            wait until falling_edge(ADC_SCK);     
			for I in 0 to 14 loop
			     wait until falling_edge(ADC_SCK);
                 TB_ADC_Data_to_send <= TB_ADC_Data_to_send(14 downto 0) & '0';
			end loop;
			
		end loop;

	end process;
	
end Behavioral;