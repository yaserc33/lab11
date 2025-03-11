class c_160_1;
    int i = 20;
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

program p_160_1;
    c_160_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0xz1xxz0zx01z01zz00zzx1z01x11xxxxzxxxxxxzxxzxzxzzxxzxzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
