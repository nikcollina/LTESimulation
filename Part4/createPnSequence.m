function PN = createPnSequence()
    % initial loading vector
    V = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    % first element of sequence
    PN = [V(19)];
    
    % loop through rest of sequence updating regs
    for i = 1:524286
        last = V;
        V(1) = last(19);
        V(2) = xor(last(19),last(1));
        V(3) = xor(last(19),last(2));
        V(4) = last(3);
        V(5) = last(4);
        V(6) = xor(last(19),last(5));
        V(7) = last(6);
        V(8) = last(7);
        V(9) = last(8);
        V(10) = last(9);
        V(11) = last(10);
        V(12) = last(11);
        V(13) = last(12);
        V(14) = last(13);
        V(15) = last(14);
        V(16) = last(15);
        V(17) = last(16);
        V(18) = last(17);
        V(19) = last(18);
        PN = [PN  V(19)];
    end
    
    
    
end