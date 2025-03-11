class c_132_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_132_1;
    c_132_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zz01xx0z01100011xzx111x00zxzzzzzzxxxzzzxxxxzzzxzzxxzzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
