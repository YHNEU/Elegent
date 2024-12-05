quietly set ACTELLIBNAME ProASIC3
quietly set PROJECT_DIR "D:/Awork/AD/AD574-11.28"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap proasic3 "D:/libero11.9/Designer/lib/modelsim/precompiled/vhdl/proasic3"

vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/AD574.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/addr_manage.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/buf.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/signal_send.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/single_receive.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/whole_send.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/Top_AD.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/stimulus/TOP_Test.vhd"

vsim -L proasic3 -L presynth  -t 1ps presynth.TOP_Test
add wave /TOP_Test/*
run 1000ns
