device jtagport builtin
iice new {IICE} -type regular
iice controller -iice {IICE} none
iice sampler -iice {IICE} -depth 8

signals add -iice {IICE} -silent -sample  {/architecture_buf/data_all}
signals add -iice {IICE} -silent -trigger -sample  {/architecture_buf/receive_end}
iice clock -iice {IICE} -edge positive {/sys_clk}

