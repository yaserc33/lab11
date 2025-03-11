class c_61_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_61_4;
    c_61_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzz110z001zx1zx010x0011zx1z00zzzzzxzxzzxzxzxzxxxzxxxxzzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
