class c_141_1;
    int i = 15;
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

program p_141_1;
    c_141_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzzz1x1x010x00x1010x101zzxxzz10zxxzxxzxxzxxzzzxzzxxxxzxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
