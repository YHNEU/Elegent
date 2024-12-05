quietly set ACTELLIBNAME ProASIC3
quietly set PROJECT_DIR "C:/Users/YH/Desktop/RS422/RS4221107"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap proasic3 "D:/libero11.9/Designer/lib/modelsim/precompiled/vhdl/proasic3"

vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/single_recive.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/stimulus/Test_recive.vhd"

vsim -L proasic3 -L presynth  -t 1ps presynth.Test_recive
add wave /Test_recive/*
run 1000ns
