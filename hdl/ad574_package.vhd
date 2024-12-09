library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

package ad574_package is

    constant CNT_1US_NUM   : natural := 25;       -- 1us分频
    constant CNT_200US_NUM : natural := 5000; -- 200us 分频

    constant CNT_1US_WIDTH : natural := natural(ceil(log2(real(CNT_1US_NUM))));  -- 1us 计数器
    constant CNT_200US_WIDTH : natural := natural(ceil(log2(real(CNT_200US_NUM)))); -- 200us 计数器

    type state is (S0, S1, S2, S3, S4, pr_S1);  -- AD采样状态
    
    
    
    
    
end ad574_package;

package body ad574_package is

end ad574_package;