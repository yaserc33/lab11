class c_79_1;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_79_1;
    c_79_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xzx1z1x0x1x0xzx0zxxx1x0x011x01xxzxzzzxzzzxzxzxzzxzxzxzxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
