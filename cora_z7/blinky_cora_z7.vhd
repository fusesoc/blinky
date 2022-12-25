------------------------------------------------------------------------------
-- File:            blinky_cora_z7.vhd
-- Creation Date:   06-19-2022
------------------------------------------------------------------------------
-- Description:
-- Simple blinky for Digilent Cora-Z7 development boards.
------------------------------------------------------------------------------
-- Revisions:
--  06-19-2022, cth
--      Initial creation of file.
------------------------------------------------------------------------------

----------------------------------------------------------------------------
-- Entity.
----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity blinky_cora_z7_top is
    generic(
        CLK_FREQ_HZ : natural := 125000000
    );
    port(
        -- Reset and clock
        Reset_i     : in std_logic;
        Clk_i       : in std_logic;
        -- Signals
        Led0_o      : out std_logic;
        Led1_o      : out std_logic
    );
end entity blinky_cora_z7_top;

----------------------------------------------------------------------------
-- Architecture.
----------------------------------------------------------------------------
architecture rtl of blinky_cora_z7_top is
    -- Reset (active low)
    signal Reset_n_s : std_logic;
    -- Counter register (up to ~134.2 MHz clock)
    signal Counter_s : unsigned(26 downto 0);
    -- LED blink pulse
    signal Pulse_s   : std_logic;

begin
    -- Reset (active low)
    Reset_n_s <= not Reset_i;

    -- Counter unit
    Counter_proc : process(Reset_n_s, Clk_i)
    begin
        if (Reset_n_s = '0') then
            -- Reset (sync)
            Counter_s <= (others => '0');
            Pulse_s   <= '0';

        elsif (rising_edge(Clk_i)) then
            if (Counter_s < CLK_FREQ_HZ) then
                -- Increment
                Counter_s <= Counter_s + 1;
            else
                -- Reset
                Counter_s <= (others => '0');
            end if;

            if (Counter_s = 0) then
                -- Toggle on counter reset
                Pulse_s <= not Pulse_s;
            end if;

        end if;
    end process; -- Counter_proc

    -- LED 0 pulse
    Led0_o  <= Reset_n_s and Pulse_s;

    -- LED 1 pulse
    Led1_o  <= Reset_n_s and (not Pulse_s);

end rtl;
