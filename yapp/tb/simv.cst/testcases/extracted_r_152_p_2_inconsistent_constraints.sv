class c_152_2;
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

program p_152_2;
    c_152_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zxzxzxzz101100z0z0x1z0xzxz1x0zxxxzxxxxzzzzxxzxzxxxzzxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
