module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
wire cout,cout1,cout2;
wire [15:0]sum0,sum1;
    add16 csa0(a[15:0],b[15:0],0,sum[15:0],cout);
    add16 csa1(a[31:16],b[31:16],0,sum0,cout1);
    add16 csa2(a[31:16],b[31:16],1,sum1,cout2);
    always@(cout,sum0,sum1)begin
        case(cout)
            0:sum[31:16]=sum0;
            1:sum[31:16]=sum1;
        endcase
     end  
endmodule
