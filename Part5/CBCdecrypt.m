function output = CBCdecrypt(iv,key,bitstream)
    
    %iv = bitstream(1:length(key));
    %bitstream = bitstream(length(key)+1:length(bitstream));
    
    sp_data = reshape(bitstream,length(iv),length(bitstream)/length(iv));
    sp_data = transpose(sp_data);
    
    decrypted = zeros( 1 , length(bitstream));
    vector = iv;
    %keyXor = zeros(1,length(iv));
    %message = zeros(1,length(iv));
    for i = 1:(length(bitstream) / length(iv))
        keyXor = xor(sp_data(i,:),key);
        message = xor(vector,keyXor);
        decrypted( 1,(i*length(iv)-(length(iv)-1)):i*length(iv) ) = message;
        vector = keyXor;
    end
    
    output = decrypted;
end