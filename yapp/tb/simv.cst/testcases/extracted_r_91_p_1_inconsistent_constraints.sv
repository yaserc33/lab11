class c_91_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_91_1;
    c_91_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11z1zxz10xzzz10x1zxx001xx0zz1x0xzzxzzzzxxxxxxzxzxzxzzxzxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
