class c_150_1;
    int i = 17;
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

program p_150_1;
    c_150_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1100xxx000z1zxzz111zx1x1zxz1011zzzxxxxzzzxzzzzzxxxzzzzxxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
