module WRAPPER (clk,rst_n,MISO,MOSI,SS_n);
input clk,rst_n,MOSI,SS_n;
output MISO;

wire [9:0]rx_data;
wire rx_valid,tx_valid;
wire [7:0] tx_data;


 RAM R (rx_data,clk,rst_n,rx_valid,tx_data,tx_valid);
Slave S (MOSI,SS_n,clk,rst_n,tx_data,tx_valid,rx_valid,rx_data,MISO);
    
endmodule