vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/system/ipshared/778c/xup_and2.srcs/sources_1/new/xup_and2.v" \
"../../../bd/system/ip/system_xup_and2_0_0/sim/system_xup_and2_0_0.v" \
"../../../bd/system/ipshared/a94f/xup_and_vector.srcs/sources_1/new/xup_and_vector.v" \
"../../../bd/system/ip/system_xup_and_vector_0_0/sim/system_xup_and_vector_0_0.v" \
"../../../bd/system/sim/system.v" \


vlog -work xil_defaultlib \
"glbl.v"

