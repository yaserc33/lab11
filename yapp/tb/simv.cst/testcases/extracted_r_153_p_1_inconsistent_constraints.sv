class c_153_1;
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

program p_153_1;
    c_153_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zzx1x0xxxzzx1z11z001x111xz1x01zzxzxzzxxzxxxxzzxxxxzxxxxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
