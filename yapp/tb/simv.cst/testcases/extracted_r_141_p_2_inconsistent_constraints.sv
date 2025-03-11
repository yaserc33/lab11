class c_141_2;
    int i = 15;
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

program p_141_2;
    c_141_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z10x0x00zx11xxz01x111x0z1xx1xzzzzzzxzzzxzzzxzxzzzzzzxxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
