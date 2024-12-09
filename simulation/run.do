quietly set ACTELLIBNAME ProASIC3
<<<<<<< HEAD
quietly set PROJECT_DIR "C:/Users/YH/Desktop/RS422/RS4221107"
=======
quietly set PROJECT_DIR "D:/Awork/AD/AD574-11.28"
>>>>>>> 375bdb8bba5d3b34f07e1b77324114d3b21280b5

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap proasic3 "D:/libero11.9/Designer/lib/modelsim/precompiled/vhdl/proasic3"

<<<<<<< HEAD
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/single_recive.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/stimulus/Test_recive.vhd"

vsim -L proasic3 -L presynth  -t 1ps presynth.Test_recive
add wave /Test_recive/*
=======
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
>>>>>>> 375bdb8bba5d3b34f07e1b77324114d3b21280b5
run 1000ns
