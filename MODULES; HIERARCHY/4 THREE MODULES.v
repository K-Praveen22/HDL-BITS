module top_module ( input clk, input d, output q );
    wire a,b;
    my_dff dff(clk,d,a);
    my_dff dff_0(clk,a,b);
    my_dff dff_1(clk,b,q);
endmodule
