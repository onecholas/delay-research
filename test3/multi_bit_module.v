module example(
    input [7:0] a, 
    input [1:0] b, 
    input c,
    output d 
);
    wire e = a & 8'b00000001;
    wire f = b & 2'b01;
    assign d = e + f + c;

endmodule