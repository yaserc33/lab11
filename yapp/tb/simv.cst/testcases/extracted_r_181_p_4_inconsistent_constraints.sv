class c_181_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_181_4;
    c_181_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x00zxx11x0xxz1zx1x011x0zzzzxx0xzxzxxzxxzzxxzxxxzzzxxxzxxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
