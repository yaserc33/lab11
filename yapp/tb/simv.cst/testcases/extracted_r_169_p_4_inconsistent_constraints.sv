class c_169_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_169_4;
    c_169_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xz1zzzz110001zzxx1z010011xz1zxxzzxxzxxzxxzzxxzxzzzzzxzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
