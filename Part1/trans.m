function out = trans(data)
    out = [];
    sp_data = reshape(data,1024,length(data)/1024);
    sp_data = transpose(sp_data);
    for i = 1:(length(data)/1024)
        transformed = ifft(sp_data(i,:),1024);
        out = [out transformed];
    end
end