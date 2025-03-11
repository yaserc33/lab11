class c_167_1;
    int i = 21;
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

program p_167_1;
    c_167_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z01z1001110z10zxx1110x101zxxzzxzzxzxzxxzxzxzxxxxxxzxzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
