function out = rmCP(data)    
    out = [];
    sp_data = reshape(data,1094,length(data)/1094);
    sp_data = transpose(sp_data);
    for i = 1:(length(data)/1094)
        out = [out sp_data(i,71:1094)];
    end
    
end