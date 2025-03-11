class c_127_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_127_4;
    c_127_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100zx10111z11000xz0x000001z10010zxzxzxzzxzzxzxxzxzxxzxxxxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
