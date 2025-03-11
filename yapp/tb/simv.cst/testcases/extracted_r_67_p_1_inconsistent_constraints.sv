class c_67_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_67_1;
    c_67_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00xx0xzzx11xx0z100x10x0010zx0z0xzzxzxxxxxxxxxxxzzzxxzxzzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
