class c_85_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_85_4;
    c_85_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx000x00zzzzzx01zxxz0x111z011xxxzzxxzzzxxxxxxzxxxzxzzxzxxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
