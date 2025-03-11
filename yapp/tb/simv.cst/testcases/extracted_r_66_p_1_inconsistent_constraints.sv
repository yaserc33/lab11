class c_66_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_66_1;
    c_66_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0x10001z10zxzx1xxx0xzzxz0x1xxzxxzzxzxzxxzxxzzxzzxxzxxzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
