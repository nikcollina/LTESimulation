function output = decypt(demod,PN)
    
    output = zeros(1,20480000);
    k = 1;
    for j = 1:length(demod)
        output(j) = xor(demod(j),PN(k));
        k = k + 1;
        if k > length(PN)
            k = 1;
        end
    end
end