class c_153_2;
    int i = 18;
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

program p_153_2;
    c_153_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11z1xzxx0zxx1z0z101zz0100zzx1x1xxxxzxxzzxxxxxzxxzzxxxzxxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
