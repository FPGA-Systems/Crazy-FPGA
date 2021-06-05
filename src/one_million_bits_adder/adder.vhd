--              | |                         |Parameterized adder
--==============+=+==============           |
--              | |            ||           |
--    |***|    |***|           ||           |Find more
--====|***|    |***|           \\ |***|     |https://github.com/FPGA-Systems/crazy-fpga
--====|***|    |***|             =|***|==== |   
--====|***|====|***|    |**\                |   
--====|***|    |***|====|***\     |***|     |   
--    |***|    |***|    |****|====|***|==== |    
--             |***|    |****|    FPGA      |   
--fpga-systems |***| ru |****| developers   |   
--             |***|    |****|  community   |   
--    |***|    |***|    |****|====|***|==== |   
--====|***|    |***|====|***/     |***|     |   
--====|***|====|***|    |**/                |   
--====|***|    |***|             =|***|==== |   
--====|***|    |***|           // |***|     |   
--    |***|    |***|           ||           |   
--              | |            ||           |web      - https://fpga-systems.ru  
--==============+=+==============           |telegram - https://t.me/fpgasystems   
--              | |                         |Youtube  - https://www.youtube.com/c/fpgasystems 

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adder is
	generic (
		C_WIDTH : natural := 1_000_000
	);
    port ( ia : in  std_logic_vector (C_WIDTH - 1 downto 0);
           ib : in  std_logic_vector (C_WIDTH - 1 downto 0);
           oc : out std_logic_vector (C_WIDTH     downto 0)
    );
end adder;

architecture rtl of adder is

begin

	oc <= ('0' & ia) + ('0' & ib);

end rtl;
