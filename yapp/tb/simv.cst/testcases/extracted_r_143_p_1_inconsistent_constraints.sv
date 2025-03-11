class c_143_1;
    int i = 15;
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

program p_143_1;
    c_143_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1x0x0zzz1xzz1xz1zzz0x0z00x01z1zzzzxzzzzzxzzzxxxzxxxxxzzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
