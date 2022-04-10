`include "test.v"

module testbench ();


reg A;
reg B;
reg C;
reg D;
reg E;

wire S1;
wire S2;
wire S3;
wire S4;
wire S5;
wire S6;
wire S7;

test meuModuloTeste (A, B, C, D, E, S1, S2, S3, S4, S5, S6, S7);

initial begin
    $dumpfile ("testbench.vcd");
    $dumpvars (0, meuModuloTeste);
    
    $monitor("%b%b%b%b%b Saida = %b%b%b%b%b%b%b",A,B,C,D,E,S1,S2, S3, S4, S5, S6, S7);
            
        A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0; E = 1'b0; 
    #2; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0; E = 1'b1;
    #2; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1; E = 1'b0; 
    #2; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1; E = 1'b1;
    #2; A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0; E = 1'b0; 
    #2; A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0; E = 1'b1;
    #2; A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1; E = 1'b0; 
    #2; A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1; E = 1'b1;
    #2; A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0; E = 1'b0; 
    #2; A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0; E = 1'b1;
    #2; A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1; E = 1'b0; 
    #2; A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1; E = 1'b1;
    #2; A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0; E = 1'b0; 
    #2; A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0; E = 1'b1;
    #2; A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1; E = 1'b0; 
    #2; A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1; E = 1'b1;

    #2; A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0; E = 1'b0; 
    #2; A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0; E = 1'b1;
    #2; A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1; E = 1'b0; 
    #2; A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1; E = 1'b1;
    #2; A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b0; E = 1'b0; 
    #2; A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b0; E = 1'b1;
    #2; A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b1; E = 1'b0; 
    #2; A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b1; E = 1'b1;
    #2; A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b0; E = 1'b0; 
    #2; A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b0; E = 1'b1;
    #2; A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b1; E = 1'b0; 
    #2; A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b1; E = 1'b1;
    #2; A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b0; E = 1'b0; 
    #2; A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b0; E = 1'b1;
    #2; A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1; E = 1'b0; 
    #2; A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1; E = 1'b1;
    #2;
    
    $finish;
end
    
endmodule