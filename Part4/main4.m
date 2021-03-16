%% Main File
clc

OfdmSymStream = rmCP2(RxSymbStream);
%save OfdmSymStream OfdmSymStream

ModSymbStream = ft(OfdmSymStream);
%save ModSymbStream ModSymbStream

DemodBitStream = sym2bit(ModSymbStream);
save DemodBitStream DemodBitStream

PN = createPnSequence();

FinalBitStream = decypt(DemodBitStream,PN);
save FinalBitStream FinalBitStream