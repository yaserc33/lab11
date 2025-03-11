class c_115_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_115_4;
    c_115_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx10xx0z001zz00zxzz11z0zzz0z11xzzzzxzzzzxzzzzzxxzzxxzzxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
