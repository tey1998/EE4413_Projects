% Qns 4  IIR bandstop filter for 4 cases of filters (Butterworth, Type 1 & 2
% Chebyshev and Elliptic)
% for bandpass and bandstop filters Wp & Ws are two-element vectors.
% for bandstop Wn is 2 element vector.

Ft = 12; %KHz
Fp = [2.1 4.5]; %KHz
Fs = [2.7 3.9]; %KHz


Wp =Fp/(Ft/2);   %normalized passband frequencies Fp/(Ft/2)
Ws =Fs/(Ft/2);   %normalized stopband frequencies Fs/(Fs/2)
Rp = 0.6; %dB passband ripple
Rs = 45; %dB  stopband ripple

%Case 1: butterworth filter

[N, Wn] = buttord(Wp,Ws,Rp,Rs);

%Case 2: Type 1 Chebyshev Filter

[N1, Wn1] = cheb1ord(Wp,Ws,Rp,Rs);

%Case 3: Type 2 ChebyShev Filter

[N2, Wn2] = cheb2ord(Wp,Ws,Rp,Rs);

% Case 4: Elliptic Filter

[N3, Wn3] = ellipord(Wp,Ws,Rp,Rs);

Order = [N N1 N2 N3];
Cutoff_Freq = [Wn Wn1 Wn2 Wn3];
disp (Order)
disp (Cutoff_Freq)