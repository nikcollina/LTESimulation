function encryptedData = encrypt(data,PN)
    k = 1;
    for i = 1:length(data)
        encryptedData(i) = xor(data(i),PN(k));
        k = k + 1;
        if k > length(PN)
            k = 1;
        end
    end

end
