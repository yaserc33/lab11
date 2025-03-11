class c_137_1;
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

program p_137_1;
    c_137_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz101x00zzxx0x0xz0zxz11111xz01x0zxzzxzxzxzzzxxzxxzxzzxzxxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
