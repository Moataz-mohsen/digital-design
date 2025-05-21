module SPI_WRAPPER_TB ();
reg clk,rst_n,MOSI,SS_n;
wire MISO;
reg read_data_address;

WRAPPER W(clk,rst_n,MISO,MOSI,SS_n);

initial begin
    clk=0;
    forever begin
        #1 clk=~clk;
    end
end
initial begin
    $readmemh("mem.dat",W.R.mem);
    //test the reset
    MOSI=0;
    rst_n=0;
    repeat(5)begin
        SS_n=$random;
        @(negedge clk);
    end
    rst_n=1;

    //start of read steps
    read_data_address = 1;     
    repeat(4) begin
        SS_n = 0; 
        MOSI = $random; 
        @(negedge clk);
        MOSI = 1; 
        read_data_address = ~read_data_address;
        
        @(negedge clk); 
        @(negedge clk); 
        MOSI = read_data_address; 
        repeat(10) begin
            @(negedge clk);
            MOSI = $random;
        end
        if (~read_data_address)
            SS_n = 1; 
        else begin 
            repeat(8) @(negedge clk);
        end
        SS_n = 1;
        repeat(3) @(negedge clk);
    end

    //write-address
    SS_n=0;
    @(negedge clk);
    MOSI=0;
    @(negedge clk);
    @(negedge clk);
    MOSI=0;
    repeat(10)begin
        @(negedge clk);
        MOSI=1;
    end
    SS_n=1;
    repeat(3)begin
        @(negedge clk);
    end

//write-data
 SS_n=0;
    @(negedge clk);
    MOSI=0;
    @(negedge clk);
    @(negedge clk);
    MOSI=1;
    repeat(10)begin
        @(negedge clk);
        MOSI=1;
    end
    SS_n=1;
    repeat(3)begin
        @(negedge clk);
    end
    
    
    
    $stop;
end


    
endmodule 

