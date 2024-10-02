module top_module ( input clk, input d, output q );
    wire a,b;
    my_dff dff0(clk,d,a);
    my_dff dff_1(clk,a,b);
    my_dff dff_2(clk,b,q);
endmodule
