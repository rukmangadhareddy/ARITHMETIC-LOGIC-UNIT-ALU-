 module alu(
           input [7:0] A,B,
           input [3:0] ALU_Sel,
           output [7:0] ALU_Out,
           output CarryOut);

    reg [7:0] ALU_out;
    wire [8:0] tmp;

    always @(*)
    begin
        case(ALU_Sel)
        4'b0000: // addition operator
           ALU_out = A + B ;
        4'b0001: // substract operatror
           ALU_out = A - B ;
        4'b0010: // multifly operator
           ALU_out = A * B;
        4'b0011: // divide operator
           ALU_out = A/B;
        4'b0100: // shift left operator
           ALU_out = A<<1;
        4'b0101: // shift right opearator
           ALU_out = A>>1;
         4'b0110: // rotate left opeaator
           ALU_out = {A[6:0],A[7]};
         4'b0111: // rorate right operator
           ALU_out = {A[0],A[7:1]};
          4'b1000: //  logic and opeator
           ALU_out = A & B;
          4'b1001: //logic or operator
           ALU_out = A | B;
          4'b1010: // logic xor operator
           ALU_out = A ^ B;
          4'b1011: //  logi nor operator
           ALU_out = ~(A | B);
          4'b1100: // logic  nand operator
           ALU_out = ~(A & B);
          4'b1101: // logic xnor operator
           ALU_out = ~(A ^ B);
          4'b1110: // greater than operator
           ALU_out = (A>B)?8'd1:8'd0 ;
          4'b1111: // equal operator
            ALU_out = (A==B)?8'd1:8'd0 ;
          default: ALU_out = A + B ;
       endcase

$display("Arthamtic values are:",ALU_out);
 end

endmodule
