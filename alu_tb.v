module alu_tb;
 reg[7:0] A,B;
 reg[3:0] ALU_Sel;
 wire[7:0] ALU_Out;
 wire CarryOut;

 int i;
 alu dut(
          A,B,
          ALU_Sel,
          ALU_Out,
          CarryOut
     );
    initial begin
      A = 8'h0D; // assign the values 
      B = 4'h04; // assign the values 
      ALU_Sel = 4'h0;

      for (i=0;i<=15;i=i+1)
      begin
       ALU_Sel = ALU_Sel + 8'h01;
       #10;
      end
end
endmodule
