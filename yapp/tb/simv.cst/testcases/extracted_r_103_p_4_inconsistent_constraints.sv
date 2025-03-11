class c_103_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_103_4;
    c_103_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxxxx00xzx0xzzz00zx00xx111zz01xzxzzzzxzxxxxxzzzxxzxzxxzzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
