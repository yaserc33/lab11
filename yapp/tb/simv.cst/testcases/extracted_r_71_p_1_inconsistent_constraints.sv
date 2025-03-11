class c_71_1;
    int j = 3;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint addr1_this    // (constraint_mode = ON) (../sv/yapp_packet.sv:12)
    {
       (addr != 2'h3);
    }
    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:124)
    {
       (addr == j);
    }
endclass

program p_71_1;
    c_71_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0xx0z0z011010x101z0zx0x011x01zzxzzzxzzxxxzxxxzzxxxxxzzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
