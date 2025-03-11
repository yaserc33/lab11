class c_121_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_121_4;
    c_121_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10xxzxzx11z00x0z1xx0zzzzx010x1xxzxzzxxxxzxzzzzzzzxzxxxxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
