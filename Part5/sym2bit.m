function output = sym2bit(data)
    
    serial = data;
    demod = zeros(1,20480000);
    
    % real and imag parts
    re = real(serial);
    im = imag(serial);
    
    % demodulation
    for i = 1:length(re)
        if re(i) > 0
            if im(i) > 0 % quad 1
                demod(2*i-1) = 0;
                demod(2*i) = 0;
            else      % quad 4
                demod(2*i-1) = 0;
                demod(2*i) = 1;
            end
        else
            if im(i) > 0 % quad 2
                demod(2*i-1) = 1;
                demod(2*i) = 0;
            else      % quad 3
                demod(2*i-1) = 1;
                demod(2*i) = 1;
            end
        end
    end
    
    output = demod;
    
    
    
    
end