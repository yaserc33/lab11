class c_78_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_78_1;
    c_78_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz11x110xx0x0xzz11x0z00zzz0z00xxzzxzzzzxzxzzxxxxzzzzzzzxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
