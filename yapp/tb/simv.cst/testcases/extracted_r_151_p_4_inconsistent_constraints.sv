class c_151_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_151_4;
    c_151_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00100zz0x0xz10z0x11zz11zx1xzxxxxxxxzzzzxzzzzzxzzzxxxxzzxzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
