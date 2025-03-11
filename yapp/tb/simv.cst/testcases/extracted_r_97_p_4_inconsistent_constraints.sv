class c_97_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_97_4;
    c_97_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzxz0z11zx0011001z0z00z1zx0z10xxxzxxxxxzxxzxxzzzzzxzzxxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
