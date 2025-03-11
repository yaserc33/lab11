class c_158_1;
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

program p_158_1;
    c_158_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z011x111z0x0zzzzx01zxxx110z1zxxzxzxzzxxxxxxzzxzxzxxzxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
