class c_169_2;
    int i = 22;
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

program p_169_2;
    c_169_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00zz0x0xxxzzzzx01zzz1zz000z0000zzxzxzzzxzxxxxzxxxxxzzxzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
