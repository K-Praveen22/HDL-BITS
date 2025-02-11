module top_module(
    input clk,
    input in,
    input areset,
    output out); //
    reg[1:0]state,next_state;
    parameter A=2'b00,B=2'b01,C=2'b10,D=2'b11;
    // State talransition logic
    always@(posedge clk or posedge areset)begin
        if(areset)
            state<=A;
        else
            state<=next_state;
    end
    always@(*)
        case(state)
            A:
                begin
                    if(in)
                        next_state=B;
                        else
                            next_state=A;
                end
                    B:
                    begin
                        if(in)
                            next_state=B;
                        else
                            next_state=C;
                    end
                        C:
                        begin
                            if(in)
                                next_state=D;
                            else
                                next_state=A;
                        end
                            D:
                                begin
                                if(in)
                                    next_state=B;
            else
                next_state=C;
                                    end
            default:next_state=A;
        endcase
    assign out = (state==D)?1:0;
        
        
    // State flip-flops with asynchronous reset

    // Output logic

endmodule
