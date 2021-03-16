function out = rmCP2(data)
    sp_data = reshape(data,1094,numel(data)/1094);
    sp_data = transpose(sp_data);
    
    nocp = sp_data(:,71:1094);
    nocp = transpose(nocp);
    out = reshape(nocp,1,[]); 
end