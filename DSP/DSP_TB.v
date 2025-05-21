module DSP_TB ();


reg [17:0] A, B, D, BCIN;
reg [47:0] C, PCIN;
reg CLK, CARRYIN, RSTA, RSTB, RSTM, RSTP, RSTC, RSTD, RSTCARRYIN, RSTOPMODE;
reg CEA, CEB, CEM, CEP, CEC, CED, CECARRYIN, CEOPMODE;
reg [7:0] OPMODE;
wire [17:0] BCOUT;
wire [47:0] PCOUT, P;
wire [35:0] M;
wire CARRYOUT, CARRYOUTF;

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

DSP #(A0REG,A1REG,B0REG,B1REG,CREG,DREG,MREG,PREG,CARRYINREG,CARRYOUTREG,OPMODEREG,CARRYINSEL,B_INPUT,RSTTYPE) DUT
(A,B,C,D,CARRYIN,M,P,CARRYOUT,CARRYOUTF,CLK,OPMODE,
CEA,CEB,CEC,CECARRYIN,CED,CEM,CEOPMODE,CEP
,RSTA,RSTB,RSTC,RSTCARRYIN,RSTD,RSTM,RSTOPMODE,RSTP
,BCOUT,PCOUT,PCIN,BCIN);


initial begin
    CLK = 0;
    forever
        #1 CLK = ~CLK; 
end


initial begin
    
    A = 0; B = 0; C = 0; D = 0; PCIN = 0; BCIN = 0; CARRYIN = 0; OPMODE = 0;
    
    CEA = 1; CEB = 1; CEC = 1; CED = 1; CEM = 1; CEP = 1; CEOPMODE = 1; CECARRYIN = 1;
    
    RSTA = 1; RSTB = 1; RSTC = 1; RSTD = 1; RSTM = 1; RSTP = 1; RSTCARRYIN = 1; RSTOPMODE = 1;
    repeat (10) @(negedge CLK);
    RSTA = 0; RSTB = 0; RSTC = 0; RSTD = 0; RSTM = 0; RSTP = 0; RSTCARRYIN = 0; RSTOPMODE = 0;
    
    repeat (5) @(negedge CLK);

    @(negedge CLK);
    
    repeat (20) begin
        #10;
        A = $urandom_range(0,1000);
        B = $urandom_range(0,1000);
        C = $urandom_range(0,1000);
        D = $urandom_range(0,1000);
        PCIN = $urandom_range(0,1000);
        BCIN = $urandom_range(0,1000);
        CARRYIN = $random;
        OPMODE = $random;
        
         repeat(5)@(negedge CLK);
        if(M!=BCOUT*A) begin
            $display("error");
            $stop;
        end

        
        
    end

 
    $stop;
end

initial begin
    $monitor("Time = %0t, A = %d, B = %d, C = %d, D = %d, OPMODE = %b, M = %d, BCOUT = %d",$time,A,B,C,D,OPMODE,M,BCOUT);
end



endmodule 