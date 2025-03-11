class c_139_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_139_4;
    c_139_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xx0z11zz0z01zz0zzz0x1zx11zxzx0zxzzzzzzxzxzzzxzzxzzzzxzzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
