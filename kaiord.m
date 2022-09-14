function N = kaiord(Fp,Fs,dp,ds,Ft)

% Computation of the length of a linear phase
% FIR multiband filter using Kaiser's Formula
% dp is the passband ripple
% ds is thes topband ripple
% Fp is the passband edge freq in Hz
% Fs is the stopband edge freq in Hz
% Ft is the sampling freq in Hz
% If none specified the default value is 2
% N is the estimated FIR filter order

if nargin == 4
    Ft =2;
end
if length(Fp) >1
    TBW = min(abs(Fp(1) - Fs(1)), abs(Fp(2) - Fs(2)));
else
    TBW = abs(Fp - Fs);
end

num = -20*log10(sqrt(dp*ds)) - 13;
den = 14.6*TBW/Ft;

N = ceil(num/den);
