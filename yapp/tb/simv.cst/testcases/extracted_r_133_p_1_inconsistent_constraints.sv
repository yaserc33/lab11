class c_133_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_133_1;
    c_133_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z00x1x0x0zxxxx11zx0zz0x1x0xzz1zxxzxzzzxzzxxzzxxxzxxzzxxzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
