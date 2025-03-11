class c_127_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_127_1;
    c_127_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzz1x00x1x1z00zz10z00xxzzzxxx11zxzxxxzxxzxzzxxzzxxzzzzzzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
