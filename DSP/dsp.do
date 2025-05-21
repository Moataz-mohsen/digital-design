vlib work

vlog DSP.v mux.v DSP_TB.v

vsim -voptargs=+acc work.DSP_TB

add wave *

run -all