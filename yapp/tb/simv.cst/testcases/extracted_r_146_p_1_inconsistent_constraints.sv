class c_146_1;
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

program p_146_1;
    c_146_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x00zz101z1011110zx1z01zx0x1x011zzxxxxxzxzzzxxzzzxxzxzxzzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
