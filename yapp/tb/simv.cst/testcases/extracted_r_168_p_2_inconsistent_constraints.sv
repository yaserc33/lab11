class c_168_2;
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

program p_168_2;
    c_168_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz11100x0110101xzx0z1zzz1xxxz10xxzzxzzxzzzzxxzzxxxxxxzxzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
