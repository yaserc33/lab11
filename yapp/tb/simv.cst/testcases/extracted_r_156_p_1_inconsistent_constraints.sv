class c_156_1;
    int i = 19;
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

program p_156_1;
    c_156_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx1xzz10z1z0x00zx0101x01xz110zzxzzxzzzzzzxxzxxzzzxzzxzzxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
