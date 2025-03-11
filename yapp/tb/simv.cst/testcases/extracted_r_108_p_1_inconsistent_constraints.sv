class c_108_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_108_1;
    c_108_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1x0zx1zx1xxz10110z10zx01x1x000zxxxxxzzxxxzxxzxzzzxzxzzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
