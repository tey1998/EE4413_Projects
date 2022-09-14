% Project 3 Estimation of Order of FIR Filter 

%Estimate order of linear phase bandpass filter
Fp = [1.8 3.6];
Fs = [1.2 4.2];
dp = 0.1; %passband ripple
ds = 0.02; %stopband ripple
Ft = 12;

kaiord(Fp,Fs,dp,ds,Ft)

%using kaiserord

 [N, Wn, beta, ftype] = kaiserord([1.2 1.8 3.6 4.2],[0 1 0],[0.02 0.1 0.02] ,Ft)

% using remezord

[N1, fts,mval,wgts] = remezord([1.2 1.8 3.6 4.2],[0 1 0],[0.02 0.1 0.02],Ft) %firpmord