class c_79_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_79_4;
    c_79_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1x10z00xz111x0000xzxxzz1zzxz1zzzzxxxzzxzxxxzzxxxxzzzxxxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
