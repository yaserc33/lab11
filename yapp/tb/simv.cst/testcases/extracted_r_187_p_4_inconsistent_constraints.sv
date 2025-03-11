class c_187_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_187_4;
    c_187_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001x001xx00x00100xz0x01x0xzz1z1zzxxzxxxzzxzzxzzxzzzzxzxzxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
