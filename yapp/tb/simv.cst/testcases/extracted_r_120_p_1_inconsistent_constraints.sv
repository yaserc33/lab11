class c_120_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_120_1;
    c_120_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzzxz1zzxz10zx1z0x01011000z10zxxzxxxzxxzxxxxzzxxzzzxxzxxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
