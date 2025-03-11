class c_164_1;
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

program p_164_1;
    c_164_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x11101x1z11z1z00xzx1xz000x000zzxzxxzzxxxxzxzxzzzxxzzxzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
