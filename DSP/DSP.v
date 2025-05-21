module DSP (A,B,C,D,CARRYIN,M,P,CARRYOUT,CARRYOUTF,CLK,OPMODE,
CEA,CEB,CEC,CECARRYIN,CED,CEM,CEOPMODE,CEP
,RSTA,RSTB,RSTC,RSTCARRYIN,RSTD,RSTM,RSTOPMODE,RSTP
,BCOUT,PCOUT,PCIN,BCIN);

input [17:0] A, B, D, BCIN;
input [47:0] C, PCIN;
input CLK, CARRYIN, RSTA, RSTB, RSTM, RSTP, RSTC, RSTD, RSTCARRYIN, RSTOPMODE;
input CEA, CEB, CEM, CEP, CEC, CED, CECARRYIN, CEOPMODE;
input [7:0] OPMODE;

output [17:0] BCOUT;
output [47:0] PCOUT, P;
output [35:0] M;
output CARRYOUT, CARRYOUTF;


parameter A0REG = 0; 
parameter A1REG = 1; 
parameter B0REG = 0; 
parameter B1REG = 1; 
parameter CREG = 1; 
parameter DREG = 1; 
parameter MREG = 1; 
parameter PREG = 1; 
parameter CARRYINREG = 1; 
parameter CARRYOUTREG = 1;
parameter OPMODEREG = 1; 
parameter CARRYINSEL = "OPMODE5"; 
parameter B_INPUT = "DIRECT"; 
parameter RSTTYPE = "SYNC"; 


wire CARRY_IN_OUT,CARRY_OUT_OUT,CARRY_IN;
reg CARRY_OUT_IN;
wire [17:0] D_OUT,B0_IN,B0_OUT,B1_OUT,A0_OUT,B1_in,A1_OUT;
reg [17:0] PRE_add_sub;
wire [35:0] M_OUT,M_1_OUT;
wire [47:0] C_OUT;
reg [47:0] POST_add_sub; 
wire [7:0] OPMODE_REG;
wire[47:0] P_OUT;
reg [47:0] X_OUT,Z_OUT;






dff_mux  #(.RSTTYPE(RSTTYPE),.WIDTH(18),.SEL(DREG)) 
D_REG(.rst(RSTD),.clk(CLK),.IN(D),.E(CED),.OUT(D_OUT));

assign B0_IN=(B_INPUT == "DIRECT")?B:(B_INPUT=="CASCADE")?BCIN:0;

dff_mux  #(.RSTTYPE(RSTTYPE),.WIDTH(18),.SEL(B0REG)) 
B0_REG(.rst(RSTB),.clk(CLK),.IN(B0_IN),.E(CEB),.OUT(B0_OUT));

dff_mux  #(.RSTTYPE(RSTTYPE),.WIDTH(18),.SEL(A0REG)) 
A0_REG(.rst(RSTA),.clk(CLK),.IN(A),.E(CEA),.OUT(A0_OUT));

dff_mux  #(.RSTTYPE(RSTTYPE),.WIDTH(48),.SEL(CREG)) 
C_REG(.rst(RSTC),.clk(CLK),.IN(C),.E(CEC),.OUT(C_OUT));

always @(*) begin
     if (OPMODE_REG[6])
        PRE_add_sub = D_OUT - B0_OUT;
    else
        PRE_add_sub = D_OUT + B0_OUT;
end

assign B1_in=(OPMODE_REG[4])?PRE_add_sub:B0_OUT;


dff_mux  #(.RSTTYPE(RSTTYPE),.WIDTH(18),.SEL(B1REG)) 
B1_REG(.rst(RSTB),.clk(CLK),.IN(B1_in),.E(CEB),.OUT(B1_OUT));


dff_mux  #(.RSTTYPE(RSTTYPE),.WIDTH(18),.SEL(A1REG)) 
A1_REG(.rst(RSTA),.clk(CLK),.IN(A0_OUT),.E(CEA),.OUT(A1_OUT));

assign M_OUT = A1_OUT*B1_OUT;


dff_mux  #(.RSTTYPE(RSTTYPE),.WIDTH(36),.SEL(MREG)) 
M_REG(.rst(RSTM),.clk(CLK),.IN(M_OUT),.E(CEM),.OUT(M_1_OUT));
assign M=~(~(M_1_OUT));

always @(*) begin
    case ({OPMODE_REG[1],OPMODE_REG[0]})
        2'b00: X_OUT = 48'b0;
        2'b01: X_OUT = M_1_OUT;
        2'b10: X_OUT = P_OUT;
        2'b11: X_OUT = {D_OUT[11:0],A1_OUT,B1_OUT};

    endcase
end

always @(*) begin
    case ({OPMODE_REG[3],OPMODE_REG[2]})
        
        2'b00: Z_OUT = 48'b0;
        2'b01: Z_OUT = PCIN;
        2'b10: Z_OUT = P_OUT;
        2'b11: Z_OUT =  C_OUT;

    endcase
end


assign CARRY_IN=(CARRYINSEL=="OPMODE5")?OPMODE_REG[5]:(CARRYINSEL=="CARRYIN")?CARRYIN:0;
dff_mux  #(.RSTTYPE(RSTTYPE),.WIDTH(1),.SEL(CARRYINREG)) 
CYI(.rst(RSTCARRYIN),.clk(CLK),.IN(CARRY_IN),.E(CECARRYIN),.OUT(CARRY_IN_OUT));

always @(*) begin
    if(OPMODE_REG[7]) begin
        {CARRY_OUT_IN,POST_add_sub} =  Z_OUT-X_OUT-CARRY_IN_OUT;
    end
        else begin
        {CARRY_OUT_IN,POST_add_sub} =  Z_OUT+X_OUT+CARRY_IN_OUT;
    end
    
end

dff_mux  #(.RSTTYPE(RSTTYPE),.WIDTH(1),.SEL(CARRYOUTREG)) 
CYO(.rst(RSTCARRYIN),.clk(CLK),.IN(CARRY_OUT_IN),.E(CECARRYIN),.OUT(CARRY_OUT_OUT));


dff_mux  #(.RSTTYPE(RSTTYPE),.WIDTH(48),.SEL(PREG)) 
P_REG(.rst(RSTP),.clk(CLK),.IN(POST_add_sub),.E(CEP),.OUT(P_OUT));




dff_mux  #(.RSTTYPE(RSTTYPE),.WIDTH(8),.SEL(OPMODEREG)) 
OPMODE0_REG(.rst(RSTOPMODE),.clk(CLK),.IN(OPMODE),.E(CEOPMODE),.OUT(OPMODE_REG));




assign PCOUT=P_OUT;
assign P=P_OUT;
assign CARRYOUT=CARRY_OUT_OUT;
assign CARRYOUTF=CARRY_OUT_OUT;
assign BCOUT = B1_OUT;
endmodule