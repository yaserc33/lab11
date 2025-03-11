class c_96_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_96_1;
    c_96_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01x0xxx1xxxzx0xx10zx10xxx000z1xzzzzxxxxxzxzzxxzzxzxxxzxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
