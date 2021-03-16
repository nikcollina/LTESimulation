function out = ft(data)
    out = zeros(10000,1024);
    for i = 1:size(data,1)
        transformed = fft(data(i,:),1024);
        out(i,:) = transformed;
    end
end