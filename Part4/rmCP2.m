function out = rmCP2(data)
    sp_data = reshape(data,1094,length(data)/1094);
    sp_data = transpose(sp_data);

    out = sp_data(:,71:1094);
end