class c_72_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_72_4;
    c_72_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x10zxx00x111z01z10zx1z011x110zzzzxzzxxzxzxzxxxzzzxxxxxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
