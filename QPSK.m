function output = QPSK(data)
    SP_data=reshape(data,2,length(data)/2);  %S/P convertion of data

    %%MODULATION%%
    output = [];
   
    for i= 1:(length(data)/2)
       if SP_data(1,i) == 0
            if SP_data(2,i)==0 %0 0
                y1 = 1/sqrt(2);
                y2 = 1/sqrt(2);
            else % 0 1
                y1 = 1/sqrt(2);
                y2 = -1/sqrt(2);
            end
        else
            if SP_data(2,i)==0  % 1 0
                y1 = -1/sqrt(2);
                y2 = 1/sqrt(2);
            else % 1 1
                y1 = -1/sqrt(2);
                y2 = -1/sqrt(2);
            end
       end
       output(i) = complex(y1,y2);
    end
end


