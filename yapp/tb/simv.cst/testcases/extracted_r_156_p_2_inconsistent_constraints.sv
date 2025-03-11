class c_156_2;
    int i = 19;
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

program p_156_2;
    c_156_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx01x11xz00zxx1xx0zxz0z0x0zz11z0zxzxxzxzzzxxxzzxzzxxzzxzxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
