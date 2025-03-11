class c_148_2;
    int i = 17;
    rand bit[5:0] length; // rand_mode = ON 

    constraint length2_this    // (constraint_mode = ON) (../sv/yapp_packet.sv:78)
    {
       (length < 6'hf);
    }
    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (length == i);
    }
endclass

program p_148_2;
    c_148_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzz01x11xxxz11001x1zxzx0000zx00xzzxzxxzzzzzxzzzxxxxzxxxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
