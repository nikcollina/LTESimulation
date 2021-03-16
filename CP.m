function out = CP(data)
    sp_data = reshape(data,1024,length(data)/1024);
    sp_data = transpose(sp_data);
    out = [];
    for i = 1:(length(data)/1024)
        cp = sp_data(i,955:1024);
        temp = [cp sp_data(i,:)];
        out = [out temp];
    end
end
