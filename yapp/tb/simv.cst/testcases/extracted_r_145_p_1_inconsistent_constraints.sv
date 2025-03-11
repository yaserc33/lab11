class c_145_1;
    int i = 16;
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

program p_145_1;
    c_145_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1111xzz1010zz10zx01xz1001xxzzzxxzzzxxxzzzzxxzxxxxzzzzzzzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
