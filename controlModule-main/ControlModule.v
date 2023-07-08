module controller (
    input clk,
    input rst,
    input[31:0] ID,
    output reg red_led,
    output reg blue_led,
    output reg green_led,
    output reg Lock
);
    localparam st0 = 4'd0; // first state , the rst value = 0 and the input id=admin id
    localparam st1 = 4'd1; // add new id, check if it belongs to admin or not
    localparam st2 = 4'd2; // go to admin Mode
    localparam st3 = 4'd3; // add new user to memory
    localparam st4 = 4'd4; // delete user from memory
    localparam st5 = 4'd6; // known user in user mode (green Led)
    localparam st6 = 4'd7; // unkown user in user mode (red Led)

    reg [31:0] memory [8:0];    
    reg [3:0] state, nextState;
    integer size  = 0;
    integer i;
    
    reg[31:0] admin = 32'd0;
    reg flag = 0;
    reg [7:0] removed_index = 7'd0;

    always @(posedge clk,posedge rst) begin
        if (rst) begin
            state = st0;
        end else begin
            state = nextState;
        end
    end

    always @(ID, state) begin
        case (state)
            st0: begin
                for (i = 0;i < size ; i= i + 1 ) begin
                    memory[i] = 32'bz;   
                end
            red_led = 0;
            blue_led = 0;
            green_led = 0;
            Lock = 0;
            admin = ID; 
            if (admin!=0) begin
                nextState = st1;
            end
        end
            st1: begin
                red_led = 0;
                blue_led = 1;
                green_led = 0;
                Lock = 0;
                if (ID == admin) begin
                    nextState = st2;
                end
                else if (ID != admin) begin
                    red_led = 0;
                    blue_led = 1;
                    green_led = 0;
                    flag = 0;
                    for (i = 0; i<size; i = i+1) begin
                        if (memory[i]== ID) begin
                            flag = 1;
                        end
                    end
                    if (flag) begin
                        nextState = st5; 
                    end else begin
                     nextState = st6;
                    end
                end
            end
            st2: begin
                flag = 0;
                red_led = 0;
                blue_led = 1;
                green_led = 0;
                if (ID != admin) begin
                    for (i = 0;i < size ; i = i + 1) begin
                        if (ID == memory[i]) begin
                            removed_index = i;
                            flag = 1;
                        end
                    end
                     if (flag) begin
                        nextState = st4;
                    end
                    if(!flag) begin
                        nextState = st3;
                    end
                end
                if (ID == admin) begin
                    nextState = st1;
                end 
            end
            st3: begin
                memory[size] = ID;
                size <= size + 1;
                nextState = st2;
                red_led = 1;
                blue_led = 1;
                green_led = 1;
                Lock = 1;                    
            end
            st4: begin
                for (i = removed_index;i<size;i = i + 1 ) begin
                    memory[i] = memory[i+1];
                end
                size = size - 1;
                red_led = 1;
                blue_led = 1;
                green_led = 1;
                Lock = 1;
                nextState = st2; 
            end
            st5: begin
                red_led = 0;
                blue_led = 0;
                green_led = 1;
                Lock = 1;
                state = st1;
            end
            st6: begin
                red_led = 1;
                blue_led = 0;
                green_led = 0;
                Lock = 0;
                state = st1;
            end
            default: begin 
            red_led = 0; 
            blue_led = 0;
            green_led = 0;
            Lock = 0;
            end
        endcase
    end
endmodule


