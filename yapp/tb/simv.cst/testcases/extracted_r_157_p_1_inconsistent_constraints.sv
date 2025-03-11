class c_157_1;
    int i = 19;
    rand bit[5:0] length; // rand_mode = ON 

    constraint length2_this    // (constraint_mode = ON) (../sv/yapp_packet.sv:78)
    {
       (length < 6'hf);
    }
    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (length == i);
    }
endclass

program p_157_1;
    c_157_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11xxz1x1x1x1x0xxz1xzzzxzzx10z0xxzxxzzzxzxzxzxxxzxxzzzzzxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
