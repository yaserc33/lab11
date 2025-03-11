class c_163_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_163_4;
    c_163_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x111x011z001x00zx1xx001x0z101z1zzxzzxxxxzzxxzzzxxzzzxxzzxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
