class c_144_1;
    int i = 16;
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

program p_144_1;
    c_144_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0000xzxx10x0xxx0zx111zz0x0x1011zzzzzxxxxzzxxxxxzxxxzxzxxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
