class c_166_1;
    int i = 21;
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

program p_166_1;
    c_166_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xzx1x01zzz0x10zxz1zzzz0001110xxzxxxzxxxzzxxzzzzxzxxzxzzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
