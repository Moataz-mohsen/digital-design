module dff_mux (rst,clk,E,IN,OUT);

parameter WIDTH = 18;
parameter RSTTYPE = "SYNC";
parameter SEL = 0; 
input rst, clk, E;
input [WIDTH-1:0] IN;
output [WIDTH-1:0] OUT;

reg [WIDTH-1:0] Reg;

generate 
    if (RSTTYPE == "SYNC") begin
        always @(posedge clk) begin
            if (rst)
                Reg <= 0;
            else
            if (E)
                Reg <= IN;
        end
    end 
    else
    if (RSTTYPE == "ASYNC") begin
       always @(posedge clk or posedge rst) begin
            if (rst)
                Reg <= 0;
            else
            if (E)
                Reg <= IN;
       end
    end
endgenerate


assign OUT = (SEL)? Reg : IN;

endmodule