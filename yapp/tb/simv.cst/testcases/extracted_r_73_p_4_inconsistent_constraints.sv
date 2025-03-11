class c_73_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_73_4;
    c_73_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xxx0zxx11xzzxx1zz11x11xxzz111xzxxxzxzxxxxxzxzzxxzxzzzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
