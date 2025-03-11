class c_90_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_90_1;
    c_90_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz11zzzz000x01000110zzxzzzx10xzzzzzzzzxzxzxxzxxzxxzxxzxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
