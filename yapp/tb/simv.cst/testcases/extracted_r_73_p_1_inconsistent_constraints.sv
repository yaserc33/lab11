class c_73_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_73_1;
    c_73_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x111x000z00zz00z1xzz001z10x1xzzzzzzxxzxxxzxxzzxxxzzxzxzzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
