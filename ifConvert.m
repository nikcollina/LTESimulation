function out = ifConvert(data)
    t = 1/(1024*10000);
    f = 100*10^6;
    realPart = real(data);
    imagPart = imag(data);
    for i = 1:length(data)
        realPart(i) = realPart(i)*cos(2*pi*i*t*f);
        imagPart(i) = imagPart(i)*sin(2*pi*i*t*f);
    end
    out = complex(realPart,imagPart);
end