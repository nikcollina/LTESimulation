profile on
clc
iv = [1 0 0 0];
key = [0 0 0 1];
m = TestData;
e = CBCencrypt(key,iv,m);
message = CBCdecrypt(key,e);

a = 0;
if message == TestData
    a = 1;
end
disp(a)
profile viewer
%%
a = [1 2 3; 4 5 6; 7 8 9]
a = transpose(a)

%%
clc,clear
message = randi([0 1], 1, 10240000);
key = randi([0 1],1,1024);
iv = randi([0 1],1,1024);

a = CP(message);

b = rmCP2(a);

a1 = 0;
for i = 1:length(message)
    if message(i)~=b(i)
        a1 = a1 + 1;
    end
end

er = a1/length(message);
er = er*100

%%
clc
a = CBCencrypt(key,iv,message);

b = QPSK(a);

c = trans(b);

d = CP(c);

e = rmCP2(d);

f = ft(e);

g = sym2bit(f);

output = CBCdecrypt(iv,key,g);

a1 = 0;
for i = 1:length(message)
    if message(i)~=output(i)
        a1 = a1 + 1;
    end
end

er = a1/length(message);
er = er*100

    
    %%
    clc
a = [1+1j 2+2j 3+1j 4+3j 5+5j 6+2j 7+3j 8+5j 9+2j 10+2j 11+2j 12+2j]
a = reshape(a,3,length(a)/3)
a = transpose(a)