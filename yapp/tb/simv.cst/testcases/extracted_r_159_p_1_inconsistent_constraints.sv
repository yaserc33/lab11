class c_159_1;
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

program p_159_1;
    c_159_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z11xx01xxx1x01x0z1xx0x1100z0zxzzzzzxxxzzxzzxxzzzxxxzzxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
