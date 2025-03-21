class c_147_1;
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

program p_147_1;
    c_147_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000z11z1zx1z00x1z0zzx10xx111x1x1zzzzzxxzxzzzxzxxzxxxzxzxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
