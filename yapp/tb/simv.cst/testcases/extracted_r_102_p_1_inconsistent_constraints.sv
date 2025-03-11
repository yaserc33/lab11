class c_102_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_102_1;
    c_102_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx10001x10z110xzxzz01x1x001z00xxxzzzxxxxzzxxxzzzxzxzxxzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
