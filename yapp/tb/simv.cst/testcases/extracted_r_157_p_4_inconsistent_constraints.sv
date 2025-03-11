class c_157_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_157_4;
    c_157_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxxz0z10zxzx1001z0z00x1xx0z11xzzzzzxzzxxzxzxzxzxxxxxxxzzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
