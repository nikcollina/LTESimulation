function out = trans(data)
    out = zeros((length(data)/1024),1024);
    sp_data = reshape(data,1024,length(data)/1024);
    sp_data = transpose(sp_data);
    for i = 1:(length(data)/1024)
        transformed = ifft(sp_data(i,:),1024);
        out(i,:) = transformed;
    end
end