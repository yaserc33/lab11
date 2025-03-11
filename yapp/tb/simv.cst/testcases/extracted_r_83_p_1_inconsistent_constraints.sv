class c_83_1;
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

program p_83_1;
    c_83_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0xzzx0zxx1xxxz11zzx101x0zzxx0zxzxzxxxzxxxzzxxxxzzzxxzxzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
