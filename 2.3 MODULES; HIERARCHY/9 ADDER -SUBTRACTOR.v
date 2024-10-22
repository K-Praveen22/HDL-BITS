module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
wire [31:0]bs;
wire cout0,cout1;
assign bs={32{sub}}^b;
add16 addsub0(a[15:0],bs[15:0],sub,sum[15:0],cout0);
add16 addsub1(a[31:16],bs[31:16],cout0,sum[31:16],cout1);
endmodule
