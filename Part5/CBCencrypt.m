function output = CBCencrypt(key,iv,message)
    vlength = length(iv);
    sp_data = reshape(message,vlength,length(message)/vlength);
    sp_data = transpose(sp_data);
    
    encrypted = zeros( 1 , length(message));
    vector = iv;
    for i = 1:(length(message) / vlength)
        vector = xor(sp_data(i,:),vector);
        keyXor = xor(vector,key);
        encrypted( 1,(i*vlength-(vlength-1)):i*vlength ) = keyXor;  
    end

    output = encrypted;
end

