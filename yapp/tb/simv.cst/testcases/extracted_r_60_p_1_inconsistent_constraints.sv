class c_60_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_60_1;
    c_60_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x0z1x1zz0z10x1zxz00zxxxx00x0xzxxxzzzxzzxzzzxxzxzzxxzzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
