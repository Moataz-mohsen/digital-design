module RAM (din,clk,rst_n,rx_valid,dout,tx_valid);
parameter MEM_DEPTH =256 ;
parameter ADDR_SIZE = 8 ;

input clk,rst_n,rx_valid;
input [9:0] din;
output reg [7:0] dout;
output reg tx_valid;
reg [7:0] w_addr,r_addr;
reg [ADDR_SIZE-1:0] mem [MEM_DEPTH-1:0];
always @(posedge clk ) begin
    if(!rst_n) begin
        dout<=0 ;
        tx_valid<=0;
        w_addr<=0;
        r_addr<=0;
    end
    else begin
        if(rx_valid) begin
            tx_valid<=(&din[9:8]);
        case (din[9:8])
    
            0:begin    
              w_addr<=din[7:0];
            end
            1: begin
                mem[w_addr]<=din[7:0];
            end 
            2: begin
                r_addr<=din[7:0];
            end 
            3: begin
                dout<=mem[r_addr];
            end
            
        endcase
        end
    end
    
end
    
endmodule