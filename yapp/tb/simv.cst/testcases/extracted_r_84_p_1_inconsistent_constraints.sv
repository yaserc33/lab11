class c_84_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_84_1;
    c_84_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z000x11000001101z1x0x1x1z10z100xxxxzxzzxxzxxzxxzxzxzzxxxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
