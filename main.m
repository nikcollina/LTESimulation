clc

PNSequence = createPnSequence(524287);
save OurPNSequence PNSequence

EncryptedData = encrypt(InputData,PNSequence);
save OurEncryptedData EncryptedData

ModSymb = QPSK(EncryptedData);
save OurModSymb ModSymb

OFDMSymb = trans(ModSymb);
save OurOFDMSymb OFDMSymb

TransSymb = CP(OFDMSymb);
save OurTransSymb TransSymb

UpConvertedSymb = ifConvert(TransSymb);
save OurUpConvertedSymb UpConvertedSymb

