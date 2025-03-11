class c_121_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_121_1;
    c_121_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx11zxz10x10z11111zzx0zx1xzxz10xxzzxxzxzxzzzzxzzxzzzzxzzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
