class c_126_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_126_1;
    c_126_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x00zz1x111zzxx1z11zx0zxxz1zzz0zxzzzzzxxzxxxxzzxzzxxzxzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
