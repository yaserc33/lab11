class c_91_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_91_4;
    c_91_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz1zz1z001z101xzz1xx1xzx1z111xxxxxzzxzxxzxzzxxzxzzzzzxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
