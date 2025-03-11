class c_171_1;
    int i = 22;
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

program p_171_1;
    c_171_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00xzzx0zx0z00x1x101010z0z1xz1x1xxxzzxxzzxzzzxxzzzxzzxxxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
