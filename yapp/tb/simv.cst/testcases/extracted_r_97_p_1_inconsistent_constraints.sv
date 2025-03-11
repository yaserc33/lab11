class c_97_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_97_1;
    c_97_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1z0x1xz011z01xx1z10x0zxzz00zxzxxzxxzxzxzxzzzzzxxxzxxxxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
