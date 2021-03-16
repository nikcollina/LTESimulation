function out = CP(data)
    out = [];
    for i = 1:size(data,1)
        cp = data(i,955:1024);
        temp = [cp data(i,:)];
        out = [out temp];
    end
end