class c_72_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_72_1;
    c_72_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011xxzzxz11zzzx0z1z10z11z0zz0x1zzzzzxxzzxzzzzxxzzxxxzxxzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
