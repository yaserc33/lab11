class c_160_2;
    int i = 20;
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

program p_160_2;
    c_160_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxzx00101xz011zzx010zz010zx1zz1xzzzxxxxxxzxxzxzxzzxxxzxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
