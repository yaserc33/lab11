class c_109_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_109_1;
    c_109_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z0x01z1x1z0zx0zxxx0zz0xx10100xxzxzxxxzxzxxzzxxxzzxxzzxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
