clc
%profile on % used for performance analysis
%message = randi([0 1], 1, 20480000); % can be used to create random input
%for testing
message = InputData; % input for submission

% random key and iv created each run
key = randi([0 1],1,1024);
iv = randi([0 1],1,1024);

step1 = CBCencrypt(key,iv,message);

step2 = QPSK(step1);

step3 = trans(step2);

step4 = CP(step3);

step4noise = noise(step4);

step5 = rmCP2(step4noise);

step6 = ft(step5);

step7 = sym2bit(step6);

output = CBCdecrypt(iv,key,step7);
save Proj5OutputData output

% find number of bit errors
a = 0;
for i = 1:length(message)
    if message(i)~=output(i)
        a = a + 1;
    end
end

% print error rate
error_rate = a/length(message);
error_rate = error_rate*100;
fprintf("Error rate is %f%%\n",error_rate)

%profile viewer
