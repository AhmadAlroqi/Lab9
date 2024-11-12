`timescale 1ns / 1ps



module FourBitAdder(
     input [3:0] x,
     input [3:0] y,
     output [3:0] sum,
     input cin,
     output cout
     );
    
    logic cout1 , cout2 ,cout3;
    
     FullAdder a(.sum(sum[0]),.carryout(cout1),.x(x[0]),.y(y[0]),.carryin(cin));
     FullAdder a1(.sum(sum[1]),.carryout(cout2),.x(x[1]),.y(y[1]),.carryin(cout1));
     FullAdder a2(.sum(sum[2]),.carryout(cout3),.x(x[2]),.y(y[2]),.carryin(cout2));
     FullAdder a3(.sum(sum[3]),.carryout(cout),.x(x[3]),.y(y[3]),.carryin(cout3));
    
endmodule
