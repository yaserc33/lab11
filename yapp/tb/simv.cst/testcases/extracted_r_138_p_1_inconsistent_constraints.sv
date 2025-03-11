class c_138_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_138_1;
    c_138_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001010z0zzzzx1x001xx01z0z00z0z1zxzxzzzzxxzzxzzxzzzzxxxzzzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
