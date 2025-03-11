class c_133_4;
    int j = 4;
    rand bit[1:0] addr; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (yapp_tx_seqs.sv:126)
    {
       (addr == j);
    }
endclass

program p_133_4;
    c_133_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xzzzx0xxx01z00z10x1xx0xzzzz1xzzzzzxxzxxxzzzzzxzzzxxxxxxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
