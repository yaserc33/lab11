class c_103_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_103_1;
    c_103_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0000z0zx01z0001x10z01xzz1z110110xxzxxzzzxzxxxzzzzxxxxzxzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
