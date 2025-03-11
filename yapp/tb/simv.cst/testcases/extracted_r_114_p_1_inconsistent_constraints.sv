class c_114_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_114_1;
    c_114_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzx1xxxz1z0100001z0x1z10zzxzz11zzxxzzzzzzxzzzxzzxxzzxxxzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
