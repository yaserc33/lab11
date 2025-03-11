class c_155_1;
    int i = 18;
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

program p_155_1;
    c_155_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1011zz1zzz001zxx0x11xx1101x001zxzzxzzxzxxxxxzzxzxxxxxxxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
