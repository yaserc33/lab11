class c_109_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_109_4;
    c_109_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zx11001x1xz0z1xz00110xz111x0xzzzxzzxzzxzxzzxxxxzzzxzxxzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
