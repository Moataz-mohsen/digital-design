vlib work
vlog RAM.v SPI_SLAVE.v SPI_WRAPPER.v SPI_WRAPPER_TB.V
vsim -voptargs=+acc SPI_WRAPPER_TB
add wave -position insertpoint  \
sim:/SPI_WRAPPER_TB/clk \
sim:/SPI_WRAPPER_TB/rst_n \
sim:/SPI_WRAPPER_TB/MOSI \
sim:/SPI_WRAPPER_TB/SS_n \
sim:/SPI_WRAPPER_TB/MISO
add wave -position insertpoint  \
sim:/SPI_WRAPPER_TB/W/rx_data \
sim:/SPI_WRAPPER_TB/W/rx_valid \
sim:/SPI_WRAPPER_TB/W/tx_valid \
sim:/SPI_WRAPPER_TB/W/tx_data
add wave -position insertpoint  \
sim:/SPI_WRAPPER_TB/W/R/w_addr \
sim:/SPI_WRAPPER_TB/W/R/r_addr \
sim:/SPI_WRAPPER_TB/W/R/mem
run -all

#quit -sim