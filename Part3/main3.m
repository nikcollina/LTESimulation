%% Main File
clc

OfdmSymStream = rmCP2(RxSymbStream);
save OfdmSymStream OfdmSymStream

ModSymbStream = ft(OfdmSymStream);
save ModSymbStream ModSymbStream