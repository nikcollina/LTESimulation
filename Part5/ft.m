function out = ft(data)

    data = reshape(data,1024,length(data)/1024);
    data = transpose(data);
    
    parallel_out = zeros(size(data,1),size(data,2));
    for i = 1:size(data,1)
        trans = fft(data(i,:),1024);
        parallel_out(i,:) = trans;
    end
    
    out = transpose(parallel_out);
    out = reshape(out,1,[]);
    
end