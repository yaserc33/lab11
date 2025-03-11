class c_145_2;
    int i = 16;
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

program p_145_2;
    c_145_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0x111x10x00x0zx10xxx0x0x00x00zxzxxxzzxxzxxzzzxxxzxzxzzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
