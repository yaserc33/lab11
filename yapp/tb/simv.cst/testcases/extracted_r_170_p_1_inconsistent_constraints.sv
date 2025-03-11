class c_170_1;
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

program p_170_1;
    c_170_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1z01xxxz1xx11xz0xxxz1zzzz100z0xzzxzxzzzzzzxzxxzxzzxzxzzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
