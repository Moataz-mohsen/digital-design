module Slave (MOSI,SS_n,clk,rst_n,tx_data,tx_valid,rx_valid,rx_data,MISO);

input clk,rst_n,tx_valid,MOSI,SS_n;
input [7:0] tx_data;
output reg [9:0] rx_data;
output reg MISO,rx_valid;

parameter IDLE      =3'b000 ;
parameter CHK_CMD   =3'b001 ;
parameter READ_ADD  =3'b010 ;
parameter READ_DATA =3'b011 ;
parameter WRITE     =3'b100 ;


//(* fsm_encoding = "gray" *)
//(* fsm_encoding = "One_Hot" *)
//(* fsm_encoding = "Sequential" *)


reg [2:0] cs,ns;
reg R_c;
reg [3:0] counter;

always @(posedge clk) begin
    if(!rst_n)begin
        cs<=IDLE;
    end
    else begin
        cs<=ns;
    end
    
end
always @(*) begin
    case (cs)
        IDLE:begin
            if(SS_n) ns<=IDLE;
            else ns<=CHK_CMD;
        end 
        CHK_CMD:begin
            if(SS_n) ns<=IDLE;
            else if(!MOSI) ns<=WRITE;
                else  if(R_c==0) ns<=READ_ADD;
                else ns<=READ_DATA;
                

        end
        READ_ADD:begin
            
            if(SS_n) ns<=IDLE;
            else ns<=READ_ADD;
            
        end
        READ_DATA:begin

            if(SS_n) ns<=IDLE;
            else ns<=READ_DATA;
        end
        WRITE:begin
            if(SS_n) ns<=IDLE;
            else ns<=WRITE;
        end
        default: ns<=IDLE; 
    endcase
    
end

always @(posedge clk) begin
    if(!rst_n)begin
        R_c<=0;
        rx_data<=0;
        counter<=0;
        MISO<=0;
        rx_valid<=0;
    end
    else begin
        case (cs)
            IDLE:begin
                counter<=0;
                rx_valid<=0;
                MISO<=0;
            end 
            CHK_CMD:begin
                counter<=0;
                rx_valid<=0;
            end
            WRITE:begin
                if(counter<10)begin
                    rx_data<={rx_data[8:0],MOSI};
                    counter<=counter+1;
                    rx_valid<=0;
                end
                if(counter>=9) begin
                    rx_valid<=1;
                end
            end
            READ_ADD:begin
                   if(counter<10) begin
                    rx_data<={rx_data[8:0],MOSI};
                    counter<=counter+1;
                    R_c<=1;
                    rx_valid<=0;
                    end
                    
                if(counter>=9) begin
                    rx_valid<=1;
                end 
                end
            READ_DATA : begin
                    if(tx_valid&&counter>2)begin
                        MISO<=tx_data[counter-3];
                        counter<=counter-1;
                    end
                    else if(counter<10)begin
                    rx_data<={rx_data[8:0],MOSI};
                    counter<=counter+1;
                    rx_valid<=0;
                end
                if(counter>=9) begin
                    rx_valid<=1;
                    R_c<=0;
                end     
                    end
                
            
             
        endcase
    end
    
end

    
endmodule