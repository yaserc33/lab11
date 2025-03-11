class c_165_2;
    int i = 21;
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

program p_165_2;
    c_165_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1010z1zz010zx1z00xzzzz0xxxxx0xxzzzzxzxxzxxxzzxxxxxxzzxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
