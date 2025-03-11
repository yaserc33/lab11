class c_164_2;
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

program p_164_2;
    c_164_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x100001zz1zxxzxz1xzz0z0zx0zxx1xzzzxzzxzxxxzxxzxzxxxzxxzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
