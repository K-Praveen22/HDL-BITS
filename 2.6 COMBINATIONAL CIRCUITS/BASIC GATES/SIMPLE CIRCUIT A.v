module top_module (input x, input y, output z);
    always@(*) begin
    if(A==B)
        z=1;
    else
        z=0;
    end
endmodule
