vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/system/ipshared/778c/xup_and2.srcs/sources_1/new/xup_and2.v" \
"../../../bd/system/ip/system_xup_and2_0_0/sim/system_xup_and2_0_0.v" \
"../../../bd/system/ipshared/a94f/xup_and_vector.srcs/sources_1/new/xup_and_vector.v" \
"../../../bd/system/ip/system_xup_and_vector_0_0/sim/system_xup_and_vector_0_0.v" \
"../../../bd/system/sim/system.v" \


vlog -work xil_defaultlib \
"glbl.v"

