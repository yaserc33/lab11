class c_67_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_67_4;
    c_67_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001x0x1zz111z1zz001x1xxz1zzxzzzxxzxxzxzzzxxxzxxzzxxzxzzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
