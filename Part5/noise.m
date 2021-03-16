function out = noise(data)
    
    % generate random noise
    mag_noise = normrnd(0,.25,size(data));
    theta_noise = normrnd(0,.384,size(data));
    [a,b] = pol2cart(theta_noise,mag_noise);
    noise = complex(a,b);
    
    %reshape
    noise = reshape(noise,1094,length(noise)/1094);
    noise = transpose(noise);
    
    % fft
    parallel_out = zeros(size(noise,1),size(noise,2));
    for i = 1:size(noise,1)
        trans = ifft(noise(i,:),1094);
        parallel_out(i,:) = trans;
    end
    
    % reshape
    out = transpose(parallel_out);
    out = reshape(out,1,[]);
    
    % add noise to data
    out = out + data;
    
end