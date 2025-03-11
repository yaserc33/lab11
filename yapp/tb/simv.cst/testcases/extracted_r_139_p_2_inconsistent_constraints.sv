class c_139_2;
    int i = 15;
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

program p_139_2;
    c_139_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0111zz1zzxx0xz1z11x1xxz0zzzx0x0zxxzzzxxzxzxzzxzxxxzxzxxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
